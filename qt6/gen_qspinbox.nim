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
{.compile("gen_qspinbox.cpp", cflags).}


import gen_qspinbox_types
export gen_qspinbox_types

import
  gen_qabstractspinbox,
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
  gen_qvalidator,
  gen_qvariant,
  gen_qwidget
export
  gen_qabstractspinbox,
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
  gen_qvalidator,
  gen_qvariant,
  gen_qwidget

type cQSpinBox*{.exportc: "QSpinBox", incompleteStruct.} = object
type cQDoubleSpinBox*{.exportc: "QDoubleSpinBox", incompleteStruct.} = object

proc fcQSpinBox_new(parent: pointer): ptr cQSpinBox {.importc: "QSpinBox_new".}
proc fcQSpinBox_new2(): ptr cQSpinBox {.importc: "QSpinBox_new2".}
proc fcQSpinBox_metaObject(self: pointer, ): pointer {.importc: "QSpinBox_metaObject".}
proc fcQSpinBox_metacast(self: pointer, param1: cstring): pointer {.importc: "QSpinBox_metacast".}
proc fcQSpinBox_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSpinBox_metacall".}
proc fcQSpinBox_tr(s: cstring): struct_miqt_string {.importc: "QSpinBox_tr".}
proc fcQSpinBox_value(self: pointer, ): cint {.importc: "QSpinBox_value".}
proc fcQSpinBox_prefix(self: pointer, ): struct_miqt_string {.importc: "QSpinBox_prefix".}
proc fcQSpinBox_setPrefix(self: pointer, prefix: struct_miqt_string): void {.importc: "QSpinBox_setPrefix".}
proc fcQSpinBox_suffix(self: pointer, ): struct_miqt_string {.importc: "QSpinBox_suffix".}
proc fcQSpinBox_setSuffix(self: pointer, suffix: struct_miqt_string): void {.importc: "QSpinBox_setSuffix".}
proc fcQSpinBox_cleanText(self: pointer, ): struct_miqt_string {.importc: "QSpinBox_cleanText".}
proc fcQSpinBox_singleStep(self: pointer, ): cint {.importc: "QSpinBox_singleStep".}
proc fcQSpinBox_setSingleStep(self: pointer, val: cint): void {.importc: "QSpinBox_setSingleStep".}
proc fcQSpinBox_minimum(self: pointer, ): cint {.importc: "QSpinBox_minimum".}
proc fcQSpinBox_setMinimum(self: pointer, min: cint): void {.importc: "QSpinBox_setMinimum".}
proc fcQSpinBox_maximum(self: pointer, ): cint {.importc: "QSpinBox_maximum".}
proc fcQSpinBox_setMaximum(self: pointer, max: cint): void {.importc: "QSpinBox_setMaximum".}
proc fcQSpinBox_setRange(self: pointer, min: cint, max: cint): void {.importc: "QSpinBox_setRange".}
proc fcQSpinBox_stepType(self: pointer, ): cint {.importc: "QSpinBox_stepType".}
proc fcQSpinBox_setStepType(self: pointer, stepType: cint): void {.importc: "QSpinBox_setStepType".}
proc fcQSpinBox_displayIntegerBase(self: pointer, ): cint {.importc: "QSpinBox_displayIntegerBase".}
proc fcQSpinBox_setDisplayIntegerBase(self: pointer, base: cint): void {.importc: "QSpinBox_setDisplayIntegerBase".}
proc fcQSpinBox_setValue(self: pointer, val: cint): void {.importc: "QSpinBox_setValue".}
proc fcQSpinBox_valueChanged(self: pointer, param1: cint): void {.importc: "QSpinBox_valueChanged".}
proc fQSpinBox_connect_valueChanged(self: pointer, slot: int) {.importc: "QSpinBox_connect_valueChanged".}
proc fcQSpinBox_textChanged(self: pointer, param1: struct_miqt_string): void {.importc: "QSpinBox_textChanged".}
proc fQSpinBox_connect_textChanged(self: pointer, slot: int) {.importc: "QSpinBox_connect_textChanged".}
proc fcQSpinBox_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSpinBox_tr2".}
proc fcQSpinBox_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSpinBox_tr3".}
proc fQSpinBox_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QSpinBox_virtualbase_metacall".}
proc fcQSpinBox_override_virtual_metacall(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_metacall".}
proc fQSpinBox_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QSpinBox_virtualbase_event".}
proc fcQSpinBox_override_virtual_event(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_event".}
proc fQSpinBox_virtualbase_validate(self: pointer, input: struct_miqt_string, pos: ptr cint): cint{.importc: "QSpinBox_virtualbase_validate".}
proc fcQSpinBox_override_virtual_validate(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_validate".}
proc fQSpinBox_virtualbase_valueFromText(self: pointer, text: struct_miqt_string): cint{.importc: "QSpinBox_virtualbase_valueFromText".}
proc fcQSpinBox_override_virtual_valueFromText(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_valueFromText".}
proc fQSpinBox_virtualbase_textFromValue(self: pointer, val: cint): struct_miqt_string{.importc: "QSpinBox_virtualbase_textFromValue".}
proc fcQSpinBox_override_virtual_textFromValue(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_textFromValue".}
proc fQSpinBox_virtualbase_fixup(self: pointer, str: struct_miqt_string): void{.importc: "QSpinBox_virtualbase_fixup".}
proc fcQSpinBox_override_virtual_fixup(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_fixup".}
proc fQSpinBox_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QSpinBox_virtualbase_sizeHint".}
proc fcQSpinBox_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_sizeHint".}
proc fQSpinBox_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QSpinBox_virtualbase_minimumSizeHint".}
proc fcQSpinBox_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_minimumSizeHint".}
proc fQSpinBox_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QSpinBox_virtualbase_inputMethodQuery".}
proc fcQSpinBox_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_inputMethodQuery".}
proc fQSpinBox_virtualbase_stepBy(self: pointer, steps: cint): void{.importc: "QSpinBox_virtualbase_stepBy".}
proc fcQSpinBox_override_virtual_stepBy(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_stepBy".}
proc fQSpinBox_virtualbase_clear(self: pointer, ): void{.importc: "QSpinBox_virtualbase_clear".}
proc fcQSpinBox_override_virtual_clear(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_clear".}
proc fQSpinBox_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QSpinBox_virtualbase_resizeEvent".}
proc fcQSpinBox_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_resizeEvent".}
proc fQSpinBox_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QSpinBox_virtualbase_keyPressEvent".}
proc fcQSpinBox_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_keyPressEvent".}
proc fQSpinBox_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QSpinBox_virtualbase_keyReleaseEvent".}
proc fcQSpinBox_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_keyReleaseEvent".}
proc fQSpinBox_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QSpinBox_virtualbase_wheelEvent".}
proc fcQSpinBox_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_wheelEvent".}
proc fQSpinBox_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QSpinBox_virtualbase_focusInEvent".}
proc fcQSpinBox_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_focusInEvent".}
proc fQSpinBox_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QSpinBox_virtualbase_focusOutEvent".}
proc fcQSpinBox_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_focusOutEvent".}
proc fQSpinBox_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QSpinBox_virtualbase_contextMenuEvent".}
proc fcQSpinBox_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_contextMenuEvent".}
proc fQSpinBox_virtualbase_changeEvent(self: pointer, event: pointer): void{.importc: "QSpinBox_virtualbase_changeEvent".}
proc fcQSpinBox_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_changeEvent".}
proc fQSpinBox_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QSpinBox_virtualbase_closeEvent".}
proc fcQSpinBox_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_closeEvent".}
proc fQSpinBox_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QSpinBox_virtualbase_hideEvent".}
proc fcQSpinBox_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_hideEvent".}
proc fQSpinBox_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QSpinBox_virtualbase_mousePressEvent".}
proc fcQSpinBox_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_mousePressEvent".}
proc fQSpinBox_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QSpinBox_virtualbase_mouseReleaseEvent".}
proc fcQSpinBox_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_mouseReleaseEvent".}
proc fQSpinBox_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QSpinBox_virtualbase_mouseMoveEvent".}
proc fcQSpinBox_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_mouseMoveEvent".}
proc fQSpinBox_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QSpinBox_virtualbase_timerEvent".}
proc fcQSpinBox_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_timerEvent".}
proc fQSpinBox_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QSpinBox_virtualbase_paintEvent".}
proc fcQSpinBox_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_paintEvent".}
proc fQSpinBox_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QSpinBox_virtualbase_showEvent".}
proc fcQSpinBox_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_showEvent".}
proc fQSpinBox_virtualbase_initStyleOption(self: pointer, option: pointer): void{.importc: "QSpinBox_virtualbase_initStyleOption".}
proc fcQSpinBox_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_initStyleOption".}
proc fQSpinBox_virtualbase_stepEnabled(self: pointer, ): cint{.importc: "QSpinBox_virtualbase_stepEnabled".}
proc fcQSpinBox_override_virtual_stepEnabled(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_stepEnabled".}
proc fQSpinBox_virtualbase_devType(self: pointer, ): cint{.importc: "QSpinBox_virtualbase_devType".}
proc fcQSpinBox_override_virtual_devType(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_devType".}
proc fQSpinBox_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QSpinBox_virtualbase_setVisible".}
proc fcQSpinBox_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_setVisible".}
proc fQSpinBox_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QSpinBox_virtualbase_heightForWidth".}
proc fcQSpinBox_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_heightForWidth".}
proc fQSpinBox_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QSpinBox_virtualbase_hasHeightForWidth".}
proc fcQSpinBox_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_hasHeightForWidth".}
proc fQSpinBox_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QSpinBox_virtualbase_paintEngine".}
proc fcQSpinBox_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_paintEngine".}
proc fQSpinBox_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QSpinBox_virtualbase_mouseDoubleClickEvent".}
proc fcQSpinBox_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_mouseDoubleClickEvent".}
proc fQSpinBox_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QSpinBox_virtualbase_enterEvent".}
proc fcQSpinBox_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_enterEvent".}
proc fQSpinBox_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QSpinBox_virtualbase_leaveEvent".}
proc fcQSpinBox_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_leaveEvent".}
proc fQSpinBox_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QSpinBox_virtualbase_moveEvent".}
proc fcQSpinBox_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_moveEvent".}
proc fQSpinBox_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QSpinBox_virtualbase_tabletEvent".}
proc fcQSpinBox_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_tabletEvent".}
proc fQSpinBox_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QSpinBox_virtualbase_actionEvent".}
proc fcQSpinBox_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_actionEvent".}
proc fQSpinBox_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QSpinBox_virtualbase_dragEnterEvent".}
proc fcQSpinBox_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_dragEnterEvent".}
proc fQSpinBox_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QSpinBox_virtualbase_dragMoveEvent".}
proc fcQSpinBox_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_dragMoveEvent".}
proc fQSpinBox_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QSpinBox_virtualbase_dragLeaveEvent".}
proc fcQSpinBox_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_dragLeaveEvent".}
proc fQSpinBox_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QSpinBox_virtualbase_dropEvent".}
proc fcQSpinBox_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_dropEvent".}
proc fQSpinBox_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QSpinBox_virtualbase_nativeEvent".}
proc fcQSpinBox_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_nativeEvent".}
proc fQSpinBox_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QSpinBox_virtualbase_metric".}
proc fcQSpinBox_override_virtual_metric(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_metric".}
proc fQSpinBox_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QSpinBox_virtualbase_initPainter".}
proc fcQSpinBox_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_initPainter".}
proc fQSpinBox_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QSpinBox_virtualbase_redirected".}
proc fcQSpinBox_override_virtual_redirected(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_redirected".}
proc fQSpinBox_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QSpinBox_virtualbase_sharedPainter".}
proc fcQSpinBox_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_sharedPainter".}
proc fQSpinBox_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QSpinBox_virtualbase_inputMethodEvent".}
proc fcQSpinBox_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_inputMethodEvent".}
proc fQSpinBox_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QSpinBox_virtualbase_focusNextPrevChild".}
proc fcQSpinBox_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_focusNextPrevChild".}
proc fQSpinBox_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QSpinBox_virtualbase_eventFilter".}
proc fcQSpinBox_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_eventFilter".}
proc fQSpinBox_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QSpinBox_virtualbase_childEvent".}
proc fcQSpinBox_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_childEvent".}
proc fQSpinBox_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QSpinBox_virtualbase_customEvent".}
proc fcQSpinBox_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_customEvent".}
proc fQSpinBox_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QSpinBox_virtualbase_connectNotify".}
proc fcQSpinBox_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_connectNotify".}
proc fQSpinBox_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QSpinBox_virtualbase_disconnectNotify".}
proc fcQSpinBox_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QSpinBox_override_virtual_disconnectNotify".}
proc fcQSpinBox_delete(self: pointer) {.importc: "QSpinBox_delete".}
proc fcQDoubleSpinBox_new(parent: pointer): ptr cQDoubleSpinBox {.importc: "QDoubleSpinBox_new".}
proc fcQDoubleSpinBox_new2(): ptr cQDoubleSpinBox {.importc: "QDoubleSpinBox_new2".}
proc fcQDoubleSpinBox_metaObject(self: pointer, ): pointer {.importc: "QDoubleSpinBox_metaObject".}
proc fcQDoubleSpinBox_metacast(self: pointer, param1: cstring): pointer {.importc: "QDoubleSpinBox_metacast".}
proc fcQDoubleSpinBox_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDoubleSpinBox_metacall".}
proc fcQDoubleSpinBox_tr(s: cstring): struct_miqt_string {.importc: "QDoubleSpinBox_tr".}
proc fcQDoubleSpinBox_value(self: pointer, ): float64 {.importc: "QDoubleSpinBox_value".}
proc fcQDoubleSpinBox_prefix(self: pointer, ): struct_miqt_string {.importc: "QDoubleSpinBox_prefix".}
proc fcQDoubleSpinBox_setPrefix(self: pointer, prefix: struct_miqt_string): void {.importc: "QDoubleSpinBox_setPrefix".}
proc fcQDoubleSpinBox_suffix(self: pointer, ): struct_miqt_string {.importc: "QDoubleSpinBox_suffix".}
proc fcQDoubleSpinBox_setSuffix(self: pointer, suffix: struct_miqt_string): void {.importc: "QDoubleSpinBox_setSuffix".}
proc fcQDoubleSpinBox_cleanText(self: pointer, ): struct_miqt_string {.importc: "QDoubleSpinBox_cleanText".}
proc fcQDoubleSpinBox_singleStep(self: pointer, ): float64 {.importc: "QDoubleSpinBox_singleStep".}
proc fcQDoubleSpinBox_setSingleStep(self: pointer, val: float64): void {.importc: "QDoubleSpinBox_setSingleStep".}
proc fcQDoubleSpinBox_minimum(self: pointer, ): float64 {.importc: "QDoubleSpinBox_minimum".}
proc fcQDoubleSpinBox_setMinimum(self: pointer, min: float64): void {.importc: "QDoubleSpinBox_setMinimum".}
proc fcQDoubleSpinBox_maximum(self: pointer, ): float64 {.importc: "QDoubleSpinBox_maximum".}
proc fcQDoubleSpinBox_setMaximum(self: pointer, max: float64): void {.importc: "QDoubleSpinBox_setMaximum".}
proc fcQDoubleSpinBox_setRange(self: pointer, min: float64, max: float64): void {.importc: "QDoubleSpinBox_setRange".}
proc fcQDoubleSpinBox_stepType(self: pointer, ): cint {.importc: "QDoubleSpinBox_stepType".}
proc fcQDoubleSpinBox_setStepType(self: pointer, stepType: cint): void {.importc: "QDoubleSpinBox_setStepType".}
proc fcQDoubleSpinBox_decimals(self: pointer, ): cint {.importc: "QDoubleSpinBox_decimals".}
proc fcQDoubleSpinBox_setDecimals(self: pointer, prec: cint): void {.importc: "QDoubleSpinBox_setDecimals".}
proc fcQDoubleSpinBox_validate(self: pointer, input: struct_miqt_string, pos: ptr cint): cint {.importc: "QDoubleSpinBox_validate".}
proc fcQDoubleSpinBox_valueFromText(self: pointer, text: struct_miqt_string): float64 {.importc: "QDoubleSpinBox_valueFromText".}
proc fcQDoubleSpinBox_textFromValue(self: pointer, val: float64): struct_miqt_string {.importc: "QDoubleSpinBox_textFromValue".}
proc fcQDoubleSpinBox_fixup(self: pointer, str: struct_miqt_string): void {.importc: "QDoubleSpinBox_fixup".}
proc fcQDoubleSpinBox_setValue(self: pointer, val: float64): void {.importc: "QDoubleSpinBox_setValue".}
proc fcQDoubleSpinBox_valueChanged(self: pointer, param1: float64): void {.importc: "QDoubleSpinBox_valueChanged".}
proc fQDoubleSpinBox_connect_valueChanged(self: pointer, slot: int) {.importc: "QDoubleSpinBox_connect_valueChanged".}
proc fcQDoubleSpinBox_textChanged(self: pointer, param1: struct_miqt_string): void {.importc: "QDoubleSpinBox_textChanged".}
proc fQDoubleSpinBox_connect_textChanged(self: pointer, slot: int) {.importc: "QDoubleSpinBox_connect_textChanged".}
proc fcQDoubleSpinBox_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QDoubleSpinBox_tr2".}
proc fcQDoubleSpinBox_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDoubleSpinBox_tr3".}
proc fQDoubleSpinBox_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QDoubleSpinBox_virtualbase_metacall".}
proc fcQDoubleSpinBox_override_virtual_metacall(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_metacall".}
proc fQDoubleSpinBox_virtualbase_validate(self: pointer, input: struct_miqt_string, pos: ptr cint): cint{.importc: "QDoubleSpinBox_virtualbase_validate".}
proc fcQDoubleSpinBox_override_virtual_validate(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_validate".}
proc fQDoubleSpinBox_virtualbase_valueFromText(self: pointer, text: struct_miqt_string): float64{.importc: "QDoubleSpinBox_virtualbase_valueFromText".}
proc fcQDoubleSpinBox_override_virtual_valueFromText(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_valueFromText".}
proc fQDoubleSpinBox_virtualbase_textFromValue(self: pointer, val: float64): struct_miqt_string{.importc: "QDoubleSpinBox_virtualbase_textFromValue".}
proc fcQDoubleSpinBox_override_virtual_textFromValue(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_textFromValue".}
proc fQDoubleSpinBox_virtualbase_fixup(self: pointer, str: struct_miqt_string): void{.importc: "QDoubleSpinBox_virtualbase_fixup".}
proc fcQDoubleSpinBox_override_virtual_fixup(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_fixup".}
proc fQDoubleSpinBox_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QDoubleSpinBox_virtualbase_sizeHint".}
proc fcQDoubleSpinBox_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_sizeHint".}
proc fQDoubleSpinBox_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QDoubleSpinBox_virtualbase_minimumSizeHint".}
proc fcQDoubleSpinBox_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_minimumSizeHint".}
proc fQDoubleSpinBox_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QDoubleSpinBox_virtualbase_event".}
proc fcQDoubleSpinBox_override_virtual_event(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_event".}
proc fQDoubleSpinBox_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QDoubleSpinBox_virtualbase_inputMethodQuery".}
proc fcQDoubleSpinBox_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_inputMethodQuery".}
proc fQDoubleSpinBox_virtualbase_stepBy(self: pointer, steps: cint): void{.importc: "QDoubleSpinBox_virtualbase_stepBy".}
proc fcQDoubleSpinBox_override_virtual_stepBy(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_stepBy".}
proc fQDoubleSpinBox_virtualbase_clear(self: pointer, ): void{.importc: "QDoubleSpinBox_virtualbase_clear".}
proc fcQDoubleSpinBox_override_virtual_clear(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_clear".}
proc fQDoubleSpinBox_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QDoubleSpinBox_virtualbase_resizeEvent".}
proc fcQDoubleSpinBox_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_resizeEvent".}
proc fQDoubleSpinBox_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QDoubleSpinBox_virtualbase_keyPressEvent".}
proc fcQDoubleSpinBox_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_keyPressEvent".}
proc fQDoubleSpinBox_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QDoubleSpinBox_virtualbase_keyReleaseEvent".}
proc fcQDoubleSpinBox_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_keyReleaseEvent".}
proc fQDoubleSpinBox_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QDoubleSpinBox_virtualbase_wheelEvent".}
proc fcQDoubleSpinBox_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_wheelEvent".}
proc fQDoubleSpinBox_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QDoubleSpinBox_virtualbase_focusInEvent".}
proc fcQDoubleSpinBox_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_focusInEvent".}
proc fQDoubleSpinBox_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QDoubleSpinBox_virtualbase_focusOutEvent".}
proc fcQDoubleSpinBox_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_focusOutEvent".}
proc fQDoubleSpinBox_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QDoubleSpinBox_virtualbase_contextMenuEvent".}
proc fcQDoubleSpinBox_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_contextMenuEvent".}
proc fQDoubleSpinBox_virtualbase_changeEvent(self: pointer, event: pointer): void{.importc: "QDoubleSpinBox_virtualbase_changeEvent".}
proc fcQDoubleSpinBox_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_changeEvent".}
proc fQDoubleSpinBox_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QDoubleSpinBox_virtualbase_closeEvent".}
proc fcQDoubleSpinBox_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_closeEvent".}
proc fQDoubleSpinBox_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QDoubleSpinBox_virtualbase_hideEvent".}
proc fcQDoubleSpinBox_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_hideEvent".}
proc fQDoubleSpinBox_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QDoubleSpinBox_virtualbase_mousePressEvent".}
proc fcQDoubleSpinBox_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_mousePressEvent".}
proc fQDoubleSpinBox_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QDoubleSpinBox_virtualbase_mouseReleaseEvent".}
proc fcQDoubleSpinBox_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_mouseReleaseEvent".}
proc fQDoubleSpinBox_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QDoubleSpinBox_virtualbase_mouseMoveEvent".}
proc fcQDoubleSpinBox_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_mouseMoveEvent".}
proc fQDoubleSpinBox_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QDoubleSpinBox_virtualbase_timerEvent".}
proc fcQDoubleSpinBox_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_timerEvent".}
proc fQDoubleSpinBox_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QDoubleSpinBox_virtualbase_paintEvent".}
proc fcQDoubleSpinBox_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_paintEvent".}
proc fQDoubleSpinBox_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QDoubleSpinBox_virtualbase_showEvent".}
proc fcQDoubleSpinBox_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_showEvent".}
proc fQDoubleSpinBox_virtualbase_initStyleOption(self: pointer, option: pointer): void{.importc: "QDoubleSpinBox_virtualbase_initStyleOption".}
proc fcQDoubleSpinBox_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_initStyleOption".}
proc fQDoubleSpinBox_virtualbase_stepEnabled(self: pointer, ): cint{.importc: "QDoubleSpinBox_virtualbase_stepEnabled".}
proc fcQDoubleSpinBox_override_virtual_stepEnabled(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_stepEnabled".}
proc fQDoubleSpinBox_virtualbase_devType(self: pointer, ): cint{.importc: "QDoubleSpinBox_virtualbase_devType".}
proc fcQDoubleSpinBox_override_virtual_devType(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_devType".}
proc fQDoubleSpinBox_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QDoubleSpinBox_virtualbase_setVisible".}
proc fcQDoubleSpinBox_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_setVisible".}
proc fQDoubleSpinBox_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QDoubleSpinBox_virtualbase_heightForWidth".}
proc fcQDoubleSpinBox_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_heightForWidth".}
proc fQDoubleSpinBox_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QDoubleSpinBox_virtualbase_hasHeightForWidth".}
proc fcQDoubleSpinBox_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_hasHeightForWidth".}
proc fQDoubleSpinBox_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QDoubleSpinBox_virtualbase_paintEngine".}
proc fcQDoubleSpinBox_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_paintEngine".}
proc fQDoubleSpinBox_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QDoubleSpinBox_virtualbase_mouseDoubleClickEvent".}
proc fcQDoubleSpinBox_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_mouseDoubleClickEvent".}
proc fQDoubleSpinBox_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QDoubleSpinBox_virtualbase_enterEvent".}
proc fcQDoubleSpinBox_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_enterEvent".}
proc fQDoubleSpinBox_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QDoubleSpinBox_virtualbase_leaveEvent".}
proc fcQDoubleSpinBox_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_leaveEvent".}
proc fQDoubleSpinBox_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QDoubleSpinBox_virtualbase_moveEvent".}
proc fcQDoubleSpinBox_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_moveEvent".}
proc fQDoubleSpinBox_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QDoubleSpinBox_virtualbase_tabletEvent".}
proc fcQDoubleSpinBox_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_tabletEvent".}
proc fQDoubleSpinBox_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QDoubleSpinBox_virtualbase_actionEvent".}
proc fcQDoubleSpinBox_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_actionEvent".}
proc fQDoubleSpinBox_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QDoubleSpinBox_virtualbase_dragEnterEvent".}
proc fcQDoubleSpinBox_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_dragEnterEvent".}
proc fQDoubleSpinBox_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QDoubleSpinBox_virtualbase_dragMoveEvent".}
proc fcQDoubleSpinBox_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_dragMoveEvent".}
proc fQDoubleSpinBox_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QDoubleSpinBox_virtualbase_dragLeaveEvent".}
proc fcQDoubleSpinBox_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_dragLeaveEvent".}
proc fQDoubleSpinBox_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QDoubleSpinBox_virtualbase_dropEvent".}
proc fcQDoubleSpinBox_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_dropEvent".}
proc fQDoubleSpinBox_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QDoubleSpinBox_virtualbase_nativeEvent".}
proc fcQDoubleSpinBox_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_nativeEvent".}
proc fQDoubleSpinBox_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QDoubleSpinBox_virtualbase_metric".}
proc fcQDoubleSpinBox_override_virtual_metric(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_metric".}
proc fQDoubleSpinBox_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QDoubleSpinBox_virtualbase_initPainter".}
proc fcQDoubleSpinBox_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_initPainter".}
proc fQDoubleSpinBox_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QDoubleSpinBox_virtualbase_redirected".}
proc fcQDoubleSpinBox_override_virtual_redirected(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_redirected".}
proc fQDoubleSpinBox_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QDoubleSpinBox_virtualbase_sharedPainter".}
proc fcQDoubleSpinBox_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_sharedPainter".}
proc fQDoubleSpinBox_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QDoubleSpinBox_virtualbase_inputMethodEvent".}
proc fcQDoubleSpinBox_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_inputMethodEvent".}
proc fQDoubleSpinBox_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QDoubleSpinBox_virtualbase_focusNextPrevChild".}
proc fcQDoubleSpinBox_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_focusNextPrevChild".}
proc fQDoubleSpinBox_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QDoubleSpinBox_virtualbase_eventFilter".}
proc fcQDoubleSpinBox_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_eventFilter".}
proc fQDoubleSpinBox_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QDoubleSpinBox_virtualbase_childEvent".}
proc fcQDoubleSpinBox_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_childEvent".}
proc fQDoubleSpinBox_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QDoubleSpinBox_virtualbase_customEvent".}
proc fcQDoubleSpinBox_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_customEvent".}
proc fQDoubleSpinBox_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QDoubleSpinBox_virtualbase_connectNotify".}
proc fcQDoubleSpinBox_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_connectNotify".}
proc fQDoubleSpinBox_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QDoubleSpinBox_virtualbase_disconnectNotify".}
proc fcQDoubleSpinBox_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QDoubleSpinBox_override_virtual_disconnectNotify".}
proc fcQDoubleSpinBox_delete(self: pointer) {.importc: "QDoubleSpinBox_delete".}


func init*(T: type QSpinBox, h: ptr cQSpinBox): QSpinBox =
  T(h: h)
proc create*(T: type QSpinBox, parent: gen_qwidget.QWidget): QSpinBox =

  QSpinBox.init(fcQSpinBox_new(parent.h))
proc create*(T: type QSpinBox, ): QSpinBox =

  QSpinBox.init(fcQSpinBox_new2())
proc metaObject*(self: QSpinBox, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQSpinBox_metaObject(self.h))

proc metacast*(self: QSpinBox, param1: cstring): pointer =

  fcQSpinBox_metacast(self.h, param1)

proc metacall*(self: QSpinBox, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQSpinBox_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QSpinBox, s: cstring): string =

  let v_ms = fcQSpinBox_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc value*(self: QSpinBox, ): cint =

  fcQSpinBox_value(self.h)

proc prefix*(self: QSpinBox, ): string =

  let v_ms = fcQSpinBox_prefix(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPrefix*(self: QSpinBox, prefix: string): void =

  fcQSpinBox_setPrefix(self.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc suffix*(self: QSpinBox, ): string =

  let v_ms = fcQSpinBox_suffix(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setSuffix*(self: QSpinBox, suffix: string): void =

  fcQSpinBox_setSuffix(self.h, struct_miqt_string(data: suffix, len: csize_t(len(suffix))))

proc cleanText*(self: QSpinBox, ): string =

  let v_ms = fcQSpinBox_cleanText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc singleStep*(self: QSpinBox, ): cint =

  fcQSpinBox_singleStep(self.h)

proc setSingleStep*(self: QSpinBox, val: cint): void =

  fcQSpinBox_setSingleStep(self.h, val)

proc minimum*(self: QSpinBox, ): cint =

  fcQSpinBox_minimum(self.h)

proc setMinimum*(self: QSpinBox, min: cint): void =

  fcQSpinBox_setMinimum(self.h, min)

proc maximum*(self: QSpinBox, ): cint =

  fcQSpinBox_maximum(self.h)

proc setMaximum*(self: QSpinBox, max: cint): void =

  fcQSpinBox_setMaximum(self.h, max)

proc setRange*(self: QSpinBox, min: cint, max: cint): void =

  fcQSpinBox_setRange(self.h, min, max)

proc stepType*(self: QSpinBox, ): gen_qabstractspinbox.QAbstractSpinBoxStepType =

  gen_qabstractspinbox.QAbstractSpinBoxStepType(fcQSpinBox_stepType(self.h))

proc setStepType*(self: QSpinBox, stepType: gen_qabstractspinbox.QAbstractSpinBoxStepType): void =

  fcQSpinBox_setStepType(self.h, cint(stepType))

proc displayIntegerBase*(self: QSpinBox, ): cint =

  fcQSpinBox_displayIntegerBase(self.h)

proc setDisplayIntegerBase*(self: QSpinBox, base: cint): void =

  fcQSpinBox_setDisplayIntegerBase(self.h, base)

proc setValue*(self: QSpinBox, val: cint): void =

  fcQSpinBox_setValue(self.h, val)

proc valueChanged*(self: QSpinBox, param1: cint): void =

  fcQSpinBox_valueChanged(self.h, param1)

proc miqt_exec_callback_QSpinBox_valueChanged(slot: int, param1: cint) {.exportc.} =
  type Cb = proc(param1: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)

proc onvalueChanged*(self: QSpinBox, slot: proc(param1: cint)) =
  type Cb = proc(param1: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQSpinBox_connect_valueChanged(self.h, cast[int](addr tmp[]))
proc textChanged*(self: QSpinBox, param1: string): void =

  fcQSpinBox_textChanged(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

proc miqt_exec_callback_QSpinBox_textChanged(slot: int, param1: struct_miqt_string) {.exportc.} =
  type Cb = proc(param1: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret


  nimfunc[](slotval1)

proc ontextChanged*(self: QSpinBox, slot: proc(param1: string)) =
  type Cb = proc(param1: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQSpinBox_connect_textChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QSpinBox, s: cstring, c: cstring): string =

  let v_ms = fcQSpinBox_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QSpinBox, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQSpinBox_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QSpinBox, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQSpinBox_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QSpinBoxmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QSpinBox, slot: proc(super: QSpinBoxmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QSpinBoxmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_metacall(self: ptr cQSpinBox, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QSpinBox_metacall ".} =
  type Cb = proc(super: QSpinBoxmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QSpinBox(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QSpinBox, event: gen_qcoreevent.QEvent): bool =


  fQSpinBox_virtualbase_event(self.h, event.h)

type QSpinBoxeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QSpinBox, slot: proc(super: QSpinBoxeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QSpinBoxeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_event(self: ptr cQSpinBox, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QSpinBox_event ".} =
  type Cb = proc(super: QSpinBoxeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QSpinBox(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_validate(self: QSpinBox, input: string, pos: ptr cint): gen_qvalidator.QValidatorState =


  gen_qvalidator.QValidatorState(fQSpinBox_virtualbase_validate(self.h, struct_miqt_string(data: input, len: csize_t(len(input))), pos))

type QSpinBoxvalidateBase* = proc(input: string, pos: ptr cint): gen_qvalidator.QValidatorState
proc onvalidate*(self: QSpinBox, slot: proc(super: QSpinBoxvalidateBase, input: string, pos: ptr cint): gen_qvalidator.QValidatorState) =
  # TODO check subclass
  type Cb = proc(super: QSpinBoxvalidateBase, input: string, pos: ptr cint): gen_qvalidator.QValidatorState
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_validate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_validate(self: ptr cQSpinBox, slot: int, input: struct_miqt_string, pos: ptr cint): cint {.exportc: "miqt_exec_callback_QSpinBox_validate ".} =
  type Cb = proc(super: QSpinBoxvalidateBase, input: string, pos: ptr cint): gen_qvalidator.QValidatorState
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(input: string, pos: ptr cint): auto =
    callVirtualBase_validate(QSpinBox(h: self), input, pos)
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(toOpenArrayByte(vinput_ms.data, 0, int(vinput_ms.len)-1))
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret

  let slotval2 = pos


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  cint(virtualReturn)
proc callVirtualBase_valueFromText(self: QSpinBox, text: string): cint =


  fQSpinBox_virtualbase_valueFromText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

type QSpinBoxvalueFromTextBase* = proc(text: string): cint
proc onvalueFromText*(self: QSpinBox, slot: proc(super: QSpinBoxvalueFromTextBase, text: string): cint) =
  # TODO check subclass
  type Cb = proc(super: QSpinBoxvalueFromTextBase, text: string): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_valueFromText(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_valueFromText(self: ptr cQSpinBox, slot: int, text: struct_miqt_string): cint {.exportc: "miqt_exec_callback_QSpinBox_valueFromText ".} =
  type Cb = proc(super: QSpinBoxvalueFromTextBase, text: string): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(text: string): auto =
    callVirtualBase_valueFromText(QSpinBox(h: self), text)
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_textFromValue(self: QSpinBox, val: cint): string =


  let v_ms = fQSpinBox_virtualbase_textFromValue(self.h, val)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QSpinBoxtextFromValueBase* = proc(val: cint): string
proc ontextFromValue*(self: QSpinBox, slot: proc(super: QSpinBoxtextFromValueBase, val: cint): string) =
  # TODO check subclass
  type Cb = proc(super: QSpinBoxtextFromValueBase, val: cint): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_textFromValue(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_textFromValue(self: ptr cQSpinBox, slot: int, val: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QSpinBox_textFromValue ".} =
  type Cb = proc(super: QSpinBoxtextFromValueBase, val: cint): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(val: cint): auto =
    callVirtualBase_textFromValue(QSpinBox(h: self), val)
  let slotval1 = val


  let virtualReturn = nimfunc[](superCall, slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc callVirtualBase_fixup(self: QSpinBox, str: string): void =


  fQSpinBox_virtualbase_fixup(self.h, struct_miqt_string(data: str, len: csize_t(len(str))))

type QSpinBoxfixupBase* = proc(str: string): void
proc onfixup*(self: QSpinBox, slot: proc(super: QSpinBoxfixupBase, str: string): void) =
  # TODO check subclass
  type Cb = proc(super: QSpinBoxfixupBase, str: string): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_fixup(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_fixup(self: ptr cQSpinBox, slot: int, str: struct_miqt_string): void {.exportc: "miqt_exec_callback_QSpinBox_fixup ".} =
  type Cb = proc(super: QSpinBoxfixupBase, str: string): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(str: string): auto =
    callVirtualBase_fixup(QSpinBox(h: self), str)
  let vstr_ms = str
  let vstrx_ret = string.fromBytes(toOpenArrayByte(vstr_ms.data, 0, int(vstr_ms.len)-1))
  c_free(vstr_ms.data)
  let slotval1 = vstrx_ret


  nimfunc[](superCall, slotval1)
proc callVirtualBase_sizeHint(self: QSpinBox, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQSpinBox_virtualbase_sizeHint(self.h))

type QSpinBoxsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QSpinBox, slot: proc(super: QSpinBoxsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QSpinBoxsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_sizeHint(self: ptr cQSpinBox, slot: int): pointer {.exportc: "miqt_exec_callback_QSpinBox_sizeHint ".} =
  type Cb = proc(super: QSpinBoxsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QSpinBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_minimumSizeHint(self: QSpinBox, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQSpinBox_virtualbase_minimumSizeHint(self.h))

type QSpinBoxminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QSpinBox, slot: proc(super: QSpinBoxminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QSpinBoxminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_minimumSizeHint(self: ptr cQSpinBox, slot: int): pointer {.exportc: "miqt_exec_callback_QSpinBox_minimumSizeHint ".} =
  type Cb = proc(super: QSpinBoxminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QSpinBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodQuery(self: QSpinBox, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQSpinBox_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QSpinBoxinputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QSpinBox, slot: proc(super: QSpinBoxinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QSpinBoxinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_inputMethodQuery(self: ptr cQSpinBox, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QSpinBox_inputMethodQuery ".} =
  type Cb = proc(super: QSpinBoxinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QSpinBox(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_stepBy(self: QSpinBox, steps: cint): void =


  fQSpinBox_virtualbase_stepBy(self.h, steps)

type QSpinBoxstepByBase* = proc(steps: cint): void
proc onstepBy*(self: QSpinBox, slot: proc(super: QSpinBoxstepByBase, steps: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QSpinBoxstepByBase, steps: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_stepBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_stepBy(self: ptr cQSpinBox, slot: int, steps: cint): void {.exportc: "miqt_exec_callback_QSpinBox_stepBy ".} =
  type Cb = proc(super: QSpinBoxstepByBase, steps: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(steps: cint): auto =
    callVirtualBase_stepBy(QSpinBox(h: self), steps)
  let slotval1 = steps


  nimfunc[](superCall, slotval1)
proc callVirtualBase_clear(self: QSpinBox, ): void =


  fQSpinBox_virtualbase_clear(self.h)

type QSpinBoxclearBase* = proc(): void
proc onclear*(self: QSpinBox, slot: proc(super: QSpinBoxclearBase): void) =
  # TODO check subclass
  type Cb = proc(super: QSpinBoxclearBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_clear(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_clear(self: ptr cQSpinBox, slot: int): void {.exportc: "miqt_exec_callback_QSpinBox_clear ".} =
  type Cb = proc(super: QSpinBoxclearBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clear(QSpinBox(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_resizeEvent(self: QSpinBox, event: gen_qevent.QResizeEvent): void =


  fQSpinBox_virtualbase_resizeEvent(self.h, event.h)

type QSpinBoxresizeEventBase* = proc(event: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QSpinBox, slot: proc(super: QSpinBoxresizeEventBase, event: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSpinBoxresizeEventBase, event: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_resizeEvent(self: ptr cQSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_resizeEvent ".} =
  type Cb = proc(super: QSpinBoxresizeEventBase, event: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QSpinBox(h: self), event)
  let slotval1 = gen_qevent.QResizeEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QSpinBox, event: gen_qevent.QKeyEvent): void =


  fQSpinBox_virtualbase_keyPressEvent(self.h, event.h)

type QSpinBoxkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QSpinBox, slot: proc(super: QSpinBoxkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSpinBoxkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_keyPressEvent(self: ptr cQSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_keyPressEvent ".} =
  type Cb = proc(super: QSpinBoxkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QSpinBox(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QSpinBox, event: gen_qevent.QKeyEvent): void =


  fQSpinBox_virtualbase_keyReleaseEvent(self.h, event.h)

type QSpinBoxkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QSpinBox, slot: proc(super: QSpinBoxkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSpinBoxkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_keyReleaseEvent(self: ptr cQSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_keyReleaseEvent ".} =
  type Cb = proc(super: QSpinBoxkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QSpinBox(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QSpinBox, event: gen_qevent.QWheelEvent): void =


  fQSpinBox_virtualbase_wheelEvent(self.h, event.h)

type QSpinBoxwheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QSpinBox, slot: proc(super: QSpinBoxwheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSpinBoxwheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_wheelEvent(self: ptr cQSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_wheelEvent ".} =
  type Cb = proc(super: QSpinBoxwheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QSpinBox(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QSpinBox, event: gen_qevent.QFocusEvent): void =


  fQSpinBox_virtualbase_focusInEvent(self.h, event.h)

type QSpinBoxfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QSpinBox, slot: proc(super: QSpinBoxfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSpinBoxfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_focusInEvent(self: ptr cQSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_focusInEvent ".} =
  type Cb = proc(super: QSpinBoxfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QSpinBox(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QSpinBox, event: gen_qevent.QFocusEvent): void =


  fQSpinBox_virtualbase_focusOutEvent(self.h, event.h)

type QSpinBoxfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QSpinBox, slot: proc(super: QSpinBoxfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSpinBoxfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_focusOutEvent(self: ptr cQSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_focusOutEvent ".} =
  type Cb = proc(super: QSpinBoxfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QSpinBox(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QSpinBox, event: gen_qevent.QContextMenuEvent): void =


  fQSpinBox_virtualbase_contextMenuEvent(self.h, event.h)

type QSpinBoxcontextMenuEventBase* = proc(event: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QSpinBox, slot: proc(super: QSpinBoxcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSpinBoxcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_contextMenuEvent(self: ptr cQSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_contextMenuEvent ".} =
  type Cb = proc(super: QSpinBoxcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QSpinBox(h: self), event)
  let slotval1 = gen_qevent.QContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_changeEvent(self: QSpinBox, event: gen_qcoreevent.QEvent): void =


  fQSpinBox_virtualbase_changeEvent(self.h, event.h)

type QSpinBoxchangeEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QSpinBox, slot: proc(super: QSpinBoxchangeEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSpinBoxchangeEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_changeEvent(self: ptr cQSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_changeEvent ".} =
  type Cb = proc(super: QSpinBoxchangeEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QSpinBox(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QSpinBox, event: gen_qevent.QCloseEvent): void =


  fQSpinBox_virtualbase_closeEvent(self.h, event.h)

type QSpinBoxcloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QSpinBox, slot: proc(super: QSpinBoxcloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSpinBoxcloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_closeEvent(self: ptr cQSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_closeEvent ".} =
  type Cb = proc(super: QSpinBoxcloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QSpinBox(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QSpinBox, event: gen_qevent.QHideEvent): void =


  fQSpinBox_virtualbase_hideEvent(self.h, event.h)

type QSpinBoxhideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QSpinBox, slot: proc(super: QSpinBoxhideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSpinBoxhideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_hideEvent(self: ptr cQSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_hideEvent ".} =
  type Cb = proc(super: QSpinBoxhideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QSpinBox(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mousePressEvent(self: QSpinBox, event: gen_qevent.QMouseEvent): void =


  fQSpinBox_virtualbase_mousePressEvent(self.h, event.h)

type QSpinBoxmousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QSpinBox, slot: proc(super: QSpinBoxmousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSpinBoxmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_mousePressEvent(self: ptr cQSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_mousePressEvent ".} =
  type Cb = proc(super: QSpinBoxmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QSpinBox(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QSpinBox, event: gen_qevent.QMouseEvent): void =


  fQSpinBox_virtualbase_mouseReleaseEvent(self.h, event.h)

type QSpinBoxmouseReleaseEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QSpinBox, slot: proc(super: QSpinBoxmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSpinBoxmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_mouseReleaseEvent(self: ptr cQSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_mouseReleaseEvent ".} =
  type Cb = proc(super: QSpinBoxmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QSpinBox(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QSpinBox, event: gen_qevent.QMouseEvent): void =


  fQSpinBox_virtualbase_mouseMoveEvent(self.h, event.h)

type QSpinBoxmouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QSpinBox, slot: proc(super: QSpinBoxmouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSpinBoxmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_mouseMoveEvent(self: ptr cQSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_mouseMoveEvent ".} =
  type Cb = proc(super: QSpinBoxmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QSpinBox(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_timerEvent(self: QSpinBox, event: gen_qcoreevent.QTimerEvent): void =


  fQSpinBox_virtualbase_timerEvent(self.h, event.h)

type QSpinBoxtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QSpinBox, slot: proc(super: QSpinBoxtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSpinBoxtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_timerEvent(self: ptr cQSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_timerEvent ".} =
  type Cb = proc(super: QSpinBoxtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QSpinBox(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QSpinBox, event: gen_qevent.QPaintEvent): void =


  fQSpinBox_virtualbase_paintEvent(self.h, event.h)

type QSpinBoxpaintEventBase* = proc(event: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QSpinBox, slot: proc(super: QSpinBoxpaintEventBase, event: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSpinBoxpaintEventBase, event: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_paintEvent(self: ptr cQSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_paintEvent ".} =
  type Cb = proc(super: QSpinBoxpaintEventBase, event: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QSpinBox(h: self), event)
  let slotval1 = gen_qevent.QPaintEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QSpinBox, event: gen_qevent.QShowEvent): void =


  fQSpinBox_virtualbase_showEvent(self.h, event.h)

type QSpinBoxshowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QSpinBox, slot: proc(super: QSpinBoxshowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSpinBoxshowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_showEvent(self: ptr cQSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_showEvent ".} =
  type Cb = proc(super: QSpinBoxshowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QSpinBox(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_initStyleOption(self: QSpinBox, option: gen_qstyleoption.QStyleOptionSpinBox): void =


  fQSpinBox_virtualbase_initStyleOption(self.h, option.h)

type QSpinBoxinitStyleOptionBase* = proc(option: gen_qstyleoption.QStyleOptionSpinBox): void
proc oninitStyleOption*(self: QSpinBox, slot: proc(super: QSpinBoxinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionSpinBox): void) =
  # TODO check subclass
  type Cb = proc(super: QSpinBoxinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionSpinBox): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_initStyleOption(self: ptr cQSpinBox, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_initStyleOption ".} =
  type Cb = proc(super: QSpinBoxinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionSpinBox): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(option: gen_qstyleoption.QStyleOptionSpinBox): auto =
    callVirtualBase_initStyleOption(QSpinBox(h: self), option)
  let slotval1 = gen_qstyleoption.QStyleOptionSpinBox(h: option)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_stepEnabled(self: QSpinBox, ): gen_qabstractspinbox.QAbstractSpinBoxStepEnabledFlag =


  gen_qabstractspinbox.QAbstractSpinBoxStepEnabledFlag(fQSpinBox_virtualbase_stepEnabled(self.h))

type QSpinBoxstepEnabledBase* = proc(): gen_qabstractspinbox.QAbstractSpinBoxStepEnabledFlag
proc onstepEnabled*(self: QSpinBox, slot: proc(super: QSpinBoxstepEnabledBase): gen_qabstractspinbox.QAbstractSpinBoxStepEnabledFlag) =
  # TODO check subclass
  type Cb = proc(super: QSpinBoxstepEnabledBase): gen_qabstractspinbox.QAbstractSpinBoxStepEnabledFlag
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_stepEnabled(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_stepEnabled(self: ptr cQSpinBox, slot: int): cint {.exportc: "miqt_exec_callback_QSpinBox_stepEnabled ".} =
  type Cb = proc(super: QSpinBoxstepEnabledBase): gen_qabstractspinbox.QAbstractSpinBoxStepEnabledFlag
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_stepEnabled(QSpinBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_devType(self: QSpinBox, ): cint =


  fQSpinBox_virtualbase_devType(self.h)

type QSpinBoxdevTypeBase* = proc(): cint
proc ondevType*(self: QSpinBox, slot: proc(super: QSpinBoxdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QSpinBoxdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_devType(self: ptr cQSpinBox, slot: int): cint {.exportc: "miqt_exec_callback_QSpinBox_devType ".} =
  type Cb = proc(super: QSpinBoxdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QSpinBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QSpinBox, visible: bool): void =


  fQSpinBox_virtualbase_setVisible(self.h, visible)

type QSpinBoxsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QSpinBox, slot: proc(super: QSpinBoxsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QSpinBoxsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_setVisible(self: ptr cQSpinBox, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QSpinBox_setVisible ".} =
  type Cb = proc(super: QSpinBoxsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QSpinBox(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_heightForWidth(self: QSpinBox, param1: cint): cint =


  fQSpinBox_virtualbase_heightForWidth(self.h, param1)

type QSpinBoxheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QSpinBox, slot: proc(super: QSpinBoxheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QSpinBoxheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_heightForWidth(self: ptr cQSpinBox, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QSpinBox_heightForWidth ".} =
  type Cb = proc(super: QSpinBoxheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QSpinBox(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QSpinBox, ): bool =


  fQSpinBox_virtualbase_hasHeightForWidth(self.h)

type QSpinBoxhasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QSpinBox, slot: proc(super: QSpinBoxhasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QSpinBoxhasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_hasHeightForWidth(self: ptr cQSpinBox, slot: int): bool {.exportc: "miqt_exec_callback_QSpinBox_hasHeightForWidth ".} =
  type Cb = proc(super: QSpinBoxhasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QSpinBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QSpinBox, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQSpinBox_virtualbase_paintEngine(self.h))

type QSpinBoxpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QSpinBox, slot: proc(super: QSpinBoxpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QSpinBoxpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_paintEngine(self: ptr cQSpinBox, slot: int): pointer {.exportc: "miqt_exec_callback_QSpinBox_paintEngine ".} =
  type Cb = proc(super: QSpinBoxpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QSpinBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_mouseDoubleClickEvent(self: QSpinBox, event: gen_qevent.QMouseEvent): void =


  fQSpinBox_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QSpinBoxmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QSpinBox, slot: proc(super: QSpinBoxmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSpinBoxmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_mouseDoubleClickEvent(self: ptr cQSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QSpinBoxmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QSpinBox(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QSpinBox, event: gen_qevent.QEnterEvent): void =


  fQSpinBox_virtualbase_enterEvent(self.h, event.h)

type QSpinBoxenterEventBase* = proc(event: gen_qevent.QEnterEvent): void
proc onenterEvent*(self: QSpinBox, slot: proc(super: QSpinBoxenterEventBase, event: gen_qevent.QEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSpinBoxenterEventBase, event: gen_qevent.QEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_enterEvent(self: ptr cQSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_enterEvent ".} =
  type Cb = proc(super: QSpinBoxenterEventBase, event: gen_qevent.QEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QEnterEvent): auto =
    callVirtualBase_enterEvent(QSpinBox(h: self), event)
  let slotval1 = gen_qevent.QEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QSpinBox, event: gen_qcoreevent.QEvent): void =


  fQSpinBox_virtualbase_leaveEvent(self.h, event.h)

type QSpinBoxleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QSpinBox, slot: proc(super: QSpinBoxleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSpinBoxleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_leaveEvent(self: ptr cQSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_leaveEvent ".} =
  type Cb = proc(super: QSpinBoxleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QSpinBox(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QSpinBox, event: gen_qevent.QMoveEvent): void =


  fQSpinBox_virtualbase_moveEvent(self.h, event.h)

type QSpinBoxmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QSpinBox, slot: proc(super: QSpinBoxmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSpinBoxmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_moveEvent(self: ptr cQSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_moveEvent ".} =
  type Cb = proc(super: QSpinBoxmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QSpinBox(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QSpinBox, event: gen_qevent.QTabletEvent): void =


  fQSpinBox_virtualbase_tabletEvent(self.h, event.h)

type QSpinBoxtabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QSpinBox, slot: proc(super: QSpinBoxtabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSpinBoxtabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_tabletEvent(self: ptr cQSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_tabletEvent ".} =
  type Cb = proc(super: QSpinBoxtabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QSpinBox(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QSpinBox, event: gen_qevent.QActionEvent): void =


  fQSpinBox_virtualbase_actionEvent(self.h, event.h)

type QSpinBoxactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QSpinBox, slot: proc(super: QSpinBoxactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSpinBoxactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_actionEvent(self: ptr cQSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_actionEvent ".} =
  type Cb = proc(super: QSpinBoxactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QSpinBox(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QSpinBox, event: gen_qevent.QDragEnterEvent): void =


  fQSpinBox_virtualbase_dragEnterEvent(self.h, event.h)

type QSpinBoxdragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QSpinBox, slot: proc(super: QSpinBoxdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSpinBoxdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_dragEnterEvent(self: ptr cQSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_dragEnterEvent ".} =
  type Cb = proc(super: QSpinBoxdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QSpinBox(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QSpinBox, event: gen_qevent.QDragMoveEvent): void =


  fQSpinBox_virtualbase_dragMoveEvent(self.h, event.h)

type QSpinBoxdragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QSpinBox, slot: proc(super: QSpinBoxdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSpinBoxdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_dragMoveEvent(self: ptr cQSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_dragMoveEvent ".} =
  type Cb = proc(super: QSpinBoxdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QSpinBox(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QSpinBox, event: gen_qevent.QDragLeaveEvent): void =


  fQSpinBox_virtualbase_dragLeaveEvent(self.h, event.h)

type QSpinBoxdragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QSpinBox, slot: proc(super: QSpinBoxdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSpinBoxdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_dragLeaveEvent(self: ptr cQSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_dragLeaveEvent ".} =
  type Cb = proc(super: QSpinBoxdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QSpinBox(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QSpinBox, event: gen_qevent.QDropEvent): void =


  fQSpinBox_virtualbase_dropEvent(self.h, event.h)

type QSpinBoxdropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QSpinBox, slot: proc(super: QSpinBoxdropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSpinBoxdropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_dropEvent(self: ptr cQSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_dropEvent ".} =
  type Cb = proc(super: QSpinBoxdropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QSpinBox(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QSpinBox, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =


  fQSpinBox_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QSpinBoxnativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: QSpinBox, slot: proc(super: QSpinBoxnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool) =
  # TODO check subclass
  type Cb = proc(super: QSpinBoxnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_nativeEvent(self: ptr cQSpinBox, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QSpinBox_nativeEvent ".} =
  type Cb = proc(super: QSpinBoxnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr uint): auto =
    callVirtualBase_nativeEvent(QSpinBox(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QSpinBox, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQSpinBox_virtualbase_metric(self.h, cint(param1))

type QSpinBoxmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QSpinBox, slot: proc(super: QSpinBoxmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QSpinBoxmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_metric(self: ptr cQSpinBox, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QSpinBox_metric ".} =
  type Cb = proc(super: QSpinBoxmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QSpinBox(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QSpinBox, painter: gen_qpainter.QPainter): void =


  fQSpinBox_virtualbase_initPainter(self.h, painter.h)

type QSpinBoxinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QSpinBox, slot: proc(super: QSpinBoxinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QSpinBoxinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_initPainter(self: ptr cQSpinBox, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_initPainter ".} =
  type Cb = proc(super: QSpinBoxinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QSpinBox(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QSpinBox, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQSpinBox_virtualbase_redirected(self.h, offset.h))

type QSpinBoxredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QSpinBox, slot: proc(super: QSpinBoxredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QSpinBoxredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_redirected(self: ptr cQSpinBox, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QSpinBox_redirected ".} =
  type Cb = proc(super: QSpinBoxredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QSpinBox(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QSpinBox, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQSpinBox_virtualbase_sharedPainter(self.h))

type QSpinBoxsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QSpinBox, slot: proc(super: QSpinBoxsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QSpinBoxsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_sharedPainter(self: ptr cQSpinBox, slot: int): pointer {.exportc: "miqt_exec_callback_QSpinBox_sharedPainter ".} =
  type Cb = proc(super: QSpinBoxsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QSpinBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QSpinBox, param1: gen_qevent.QInputMethodEvent): void =


  fQSpinBox_virtualbase_inputMethodEvent(self.h, param1.h)

type QSpinBoxinputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QSpinBox, slot: proc(super: QSpinBoxinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSpinBoxinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_inputMethodEvent(self: ptr cQSpinBox, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_inputMethodEvent ".} =
  type Cb = proc(super: QSpinBoxinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QSpinBox(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusNextPrevChild(self: QSpinBox, next: bool): bool =


  fQSpinBox_virtualbase_focusNextPrevChild(self.h, next)

type QSpinBoxfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QSpinBox, slot: proc(super: QSpinBoxfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QSpinBoxfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_focusNextPrevChild(self: ptr cQSpinBox, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QSpinBox_focusNextPrevChild ".} =
  type Cb = proc(super: QSpinBoxfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QSpinBox(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QSpinBox, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQSpinBox_virtualbase_eventFilter(self.h, watched.h, event.h)

type QSpinBoxeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QSpinBox, slot: proc(super: QSpinBoxeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QSpinBoxeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_eventFilter(self: ptr cQSpinBox, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QSpinBox_eventFilter ".} =
  type Cb = proc(super: QSpinBoxeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QSpinBox(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_childEvent(self: QSpinBox, event: gen_qcoreevent.QChildEvent): void =


  fQSpinBox_virtualbase_childEvent(self.h, event.h)

type QSpinBoxchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QSpinBox, slot: proc(super: QSpinBoxchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSpinBoxchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_childEvent(self: ptr cQSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_childEvent ".} =
  type Cb = proc(super: QSpinBoxchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QSpinBox(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QSpinBox, event: gen_qcoreevent.QEvent): void =


  fQSpinBox_virtualbase_customEvent(self.h, event.h)

type QSpinBoxcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QSpinBox, slot: proc(super: QSpinBoxcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSpinBoxcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_customEvent(self: ptr cQSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_customEvent ".} =
  type Cb = proc(super: QSpinBoxcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QSpinBox(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QSpinBox, signal: gen_qmetaobject.QMetaMethod): void =


  fQSpinBox_virtualbase_connectNotify(self.h, signal.h)

type QSpinBoxconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QSpinBox, slot: proc(super: QSpinBoxconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QSpinBoxconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_connectNotify(self: ptr cQSpinBox, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_connectNotify ".} =
  type Cb = proc(super: QSpinBoxconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QSpinBox(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QSpinBox, signal: gen_qmetaobject.QMetaMethod): void =


  fQSpinBox_virtualbase_disconnectNotify(self.h, signal.h)

type QSpinBoxdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QSpinBox, slot: proc(super: QSpinBoxdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QSpinBoxdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpinBox_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpinBox_disconnectNotify(self: ptr cQSpinBox, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSpinBox_disconnectNotify ".} =
  type Cb = proc(super: QSpinBoxdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QSpinBox(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QSpinBox) =
  fcQSpinBox_delete(self.h)

func init*(T: type QDoubleSpinBox, h: ptr cQDoubleSpinBox): QDoubleSpinBox =
  T(h: h)
proc create*(T: type QDoubleSpinBox, parent: gen_qwidget.QWidget): QDoubleSpinBox =

  QDoubleSpinBox.init(fcQDoubleSpinBox_new(parent.h))
proc create*(T: type QDoubleSpinBox, ): QDoubleSpinBox =

  QDoubleSpinBox.init(fcQDoubleSpinBox_new2())
proc metaObject*(self: QDoubleSpinBox, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQDoubleSpinBox_metaObject(self.h))

proc metacast*(self: QDoubleSpinBox, param1: cstring): pointer =

  fcQDoubleSpinBox_metacast(self.h, param1)

proc metacall*(self: QDoubleSpinBox, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQDoubleSpinBox_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QDoubleSpinBox, s: cstring): string =

  let v_ms = fcQDoubleSpinBox_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc value*(self: QDoubleSpinBox, ): float64 =

  fcQDoubleSpinBox_value(self.h)

proc prefix*(self: QDoubleSpinBox, ): string =

  let v_ms = fcQDoubleSpinBox_prefix(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPrefix*(self: QDoubleSpinBox, prefix: string): void =

  fcQDoubleSpinBox_setPrefix(self.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc suffix*(self: QDoubleSpinBox, ): string =

  let v_ms = fcQDoubleSpinBox_suffix(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setSuffix*(self: QDoubleSpinBox, suffix: string): void =

  fcQDoubleSpinBox_setSuffix(self.h, struct_miqt_string(data: suffix, len: csize_t(len(suffix))))

proc cleanText*(self: QDoubleSpinBox, ): string =

  let v_ms = fcQDoubleSpinBox_cleanText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc singleStep*(self: QDoubleSpinBox, ): float64 =

  fcQDoubleSpinBox_singleStep(self.h)

proc setSingleStep*(self: QDoubleSpinBox, val: float64): void =

  fcQDoubleSpinBox_setSingleStep(self.h, val)

proc minimum*(self: QDoubleSpinBox, ): float64 =

  fcQDoubleSpinBox_minimum(self.h)

proc setMinimum*(self: QDoubleSpinBox, min: float64): void =

  fcQDoubleSpinBox_setMinimum(self.h, min)

proc maximum*(self: QDoubleSpinBox, ): float64 =

  fcQDoubleSpinBox_maximum(self.h)

proc setMaximum*(self: QDoubleSpinBox, max: float64): void =

  fcQDoubleSpinBox_setMaximum(self.h, max)

proc setRange*(self: QDoubleSpinBox, min: float64, max: float64): void =

  fcQDoubleSpinBox_setRange(self.h, min, max)

proc stepType*(self: QDoubleSpinBox, ): gen_qabstractspinbox.QAbstractSpinBoxStepType =

  gen_qabstractspinbox.QAbstractSpinBoxStepType(fcQDoubleSpinBox_stepType(self.h))

proc setStepType*(self: QDoubleSpinBox, stepType: gen_qabstractspinbox.QAbstractSpinBoxStepType): void =

  fcQDoubleSpinBox_setStepType(self.h, cint(stepType))

proc decimals*(self: QDoubleSpinBox, ): cint =

  fcQDoubleSpinBox_decimals(self.h)

proc setDecimals*(self: QDoubleSpinBox, prec: cint): void =

  fcQDoubleSpinBox_setDecimals(self.h, prec)

proc validate*(self: QDoubleSpinBox, input: string, pos: ptr cint): gen_qvalidator.QValidatorState =

  gen_qvalidator.QValidatorState(fcQDoubleSpinBox_validate(self.h, struct_miqt_string(data: input, len: csize_t(len(input))), pos))

proc valueFromText*(self: QDoubleSpinBox, text: string): float64 =

  fcQDoubleSpinBox_valueFromText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc textFromValue*(self: QDoubleSpinBox, val: float64): string =

  let v_ms = fcQDoubleSpinBox_textFromValue(self.h, val)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc fixup*(self: QDoubleSpinBox, str: string): void =

  fcQDoubleSpinBox_fixup(self.h, struct_miqt_string(data: str, len: csize_t(len(str))))

proc setValue*(self: QDoubleSpinBox, val: float64): void =

  fcQDoubleSpinBox_setValue(self.h, val)

proc valueChanged*(self: QDoubleSpinBox, param1: float64): void =

  fcQDoubleSpinBox_valueChanged(self.h, param1)

proc miqt_exec_callback_QDoubleSpinBox_valueChanged(slot: int, param1: float64) {.exportc.} =
  type Cb = proc(param1: float64)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)

proc onvalueChanged*(self: QDoubleSpinBox, slot: proc(param1: float64)) =
  type Cb = proc(param1: float64)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQDoubleSpinBox_connect_valueChanged(self.h, cast[int](addr tmp[]))
proc textChanged*(self: QDoubleSpinBox, param1: string): void =

  fcQDoubleSpinBox_textChanged(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

proc miqt_exec_callback_QDoubleSpinBox_textChanged(slot: int, param1: struct_miqt_string) {.exportc.} =
  type Cb = proc(param1: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret


  nimfunc[](slotval1)

proc ontextChanged*(self: QDoubleSpinBox, slot: proc(param1: string)) =
  type Cb = proc(param1: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQDoubleSpinBox_connect_textChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QDoubleSpinBox, s: cstring, c: cstring): string =

  let v_ms = fcQDoubleSpinBox_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QDoubleSpinBox, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQDoubleSpinBox_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QDoubleSpinBox, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQDoubleSpinBox_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QDoubleSpinBoxmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QDoubleSpinBox, slot: proc(super: QDoubleSpinBoxmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QDoubleSpinBoxmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_metacall(self: ptr cQDoubleSpinBox, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QDoubleSpinBox_metacall ".} =
  type Cb = proc(super: QDoubleSpinBoxmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QDoubleSpinBox(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_validate(self: QDoubleSpinBox, input: string, pos: ptr cint): gen_qvalidator.QValidatorState =


  gen_qvalidator.QValidatorState(fQDoubleSpinBox_virtualbase_validate(self.h, struct_miqt_string(data: input, len: csize_t(len(input))), pos))

type QDoubleSpinBoxvalidateBase* = proc(input: string, pos: ptr cint): gen_qvalidator.QValidatorState
proc onvalidate*(self: QDoubleSpinBox, slot: proc(super: QDoubleSpinBoxvalidateBase, input: string, pos: ptr cint): gen_qvalidator.QValidatorState) =
  # TODO check subclass
  type Cb = proc(super: QDoubleSpinBoxvalidateBase, input: string, pos: ptr cint): gen_qvalidator.QValidatorState
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_validate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_validate(self: ptr cQDoubleSpinBox, slot: int, input: struct_miqt_string, pos: ptr cint): cint {.exportc: "miqt_exec_callback_QDoubleSpinBox_validate ".} =
  type Cb = proc(super: QDoubleSpinBoxvalidateBase, input: string, pos: ptr cint): gen_qvalidator.QValidatorState
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(input: string, pos: ptr cint): auto =
    callVirtualBase_validate(QDoubleSpinBox(h: self), input, pos)
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(toOpenArrayByte(vinput_ms.data, 0, int(vinput_ms.len)-1))
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret

  let slotval2 = pos


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  cint(virtualReturn)
proc callVirtualBase_valueFromText(self: QDoubleSpinBox, text: string): float64 =


  fQDoubleSpinBox_virtualbase_valueFromText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

type QDoubleSpinBoxvalueFromTextBase* = proc(text: string): float64
proc onvalueFromText*(self: QDoubleSpinBox, slot: proc(super: QDoubleSpinBoxvalueFromTextBase, text: string): float64) =
  # TODO check subclass
  type Cb = proc(super: QDoubleSpinBoxvalueFromTextBase, text: string): float64
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_valueFromText(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_valueFromText(self: ptr cQDoubleSpinBox, slot: int, text: struct_miqt_string): float64 {.exportc: "miqt_exec_callback_QDoubleSpinBox_valueFromText ".} =
  type Cb = proc(super: QDoubleSpinBoxvalueFromTextBase, text: string): float64
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(text: string): auto =
    callVirtualBase_valueFromText(QDoubleSpinBox(h: self), text)
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_textFromValue(self: QDoubleSpinBox, val: float64): string =


  let v_ms = fQDoubleSpinBox_virtualbase_textFromValue(self.h, val)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QDoubleSpinBoxtextFromValueBase* = proc(val: float64): string
proc ontextFromValue*(self: QDoubleSpinBox, slot: proc(super: QDoubleSpinBoxtextFromValueBase, val: float64): string) =
  # TODO check subclass
  type Cb = proc(super: QDoubleSpinBoxtextFromValueBase, val: float64): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_textFromValue(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_textFromValue(self: ptr cQDoubleSpinBox, slot: int, val: float64): struct_miqt_string {.exportc: "miqt_exec_callback_QDoubleSpinBox_textFromValue ".} =
  type Cb = proc(super: QDoubleSpinBoxtextFromValueBase, val: float64): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(val: float64): auto =
    callVirtualBase_textFromValue(QDoubleSpinBox(h: self), val)
  let slotval1 = val


  let virtualReturn = nimfunc[](superCall, slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc callVirtualBase_fixup(self: QDoubleSpinBox, str: string): void =


  fQDoubleSpinBox_virtualbase_fixup(self.h, struct_miqt_string(data: str, len: csize_t(len(str))))

type QDoubleSpinBoxfixupBase* = proc(str: string): void
proc onfixup*(self: QDoubleSpinBox, slot: proc(super: QDoubleSpinBoxfixupBase, str: string): void) =
  # TODO check subclass
  type Cb = proc(super: QDoubleSpinBoxfixupBase, str: string): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_fixup(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_fixup(self: ptr cQDoubleSpinBox, slot: int, str: struct_miqt_string): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_fixup ".} =
  type Cb = proc(super: QDoubleSpinBoxfixupBase, str: string): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(str: string): auto =
    callVirtualBase_fixup(QDoubleSpinBox(h: self), str)
  let vstr_ms = str
  let vstrx_ret = string.fromBytes(toOpenArrayByte(vstr_ms.data, 0, int(vstr_ms.len)-1))
  c_free(vstr_ms.data)
  let slotval1 = vstrx_ret


  nimfunc[](superCall, slotval1)
proc callVirtualBase_sizeHint(self: QDoubleSpinBox, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQDoubleSpinBox_virtualbase_sizeHint(self.h))

type QDoubleSpinBoxsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QDoubleSpinBox, slot: proc(super: QDoubleSpinBoxsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QDoubleSpinBoxsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_sizeHint(self: ptr cQDoubleSpinBox, slot: int): pointer {.exportc: "miqt_exec_callback_QDoubleSpinBox_sizeHint ".} =
  type Cb = proc(super: QDoubleSpinBoxsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QDoubleSpinBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_minimumSizeHint(self: QDoubleSpinBox, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQDoubleSpinBox_virtualbase_minimumSizeHint(self.h))

type QDoubleSpinBoxminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QDoubleSpinBox, slot: proc(super: QDoubleSpinBoxminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QDoubleSpinBoxminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_minimumSizeHint(self: ptr cQDoubleSpinBox, slot: int): pointer {.exportc: "miqt_exec_callback_QDoubleSpinBox_minimumSizeHint ".} =
  type Cb = proc(super: QDoubleSpinBoxminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QDoubleSpinBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_event(self: QDoubleSpinBox, event: gen_qcoreevent.QEvent): bool =


  fQDoubleSpinBox_virtualbase_event(self.h, event.h)

type QDoubleSpinBoxeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QDoubleSpinBox, slot: proc(super: QDoubleSpinBoxeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QDoubleSpinBoxeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_event(self: ptr cQDoubleSpinBox, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QDoubleSpinBox_event ".} =
  type Cb = proc(super: QDoubleSpinBoxeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QDoubleSpinBox(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_inputMethodQuery(self: QDoubleSpinBox, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQDoubleSpinBox_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QDoubleSpinBoxinputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QDoubleSpinBox, slot: proc(super: QDoubleSpinBoxinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QDoubleSpinBoxinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_inputMethodQuery(self: ptr cQDoubleSpinBox, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QDoubleSpinBox_inputMethodQuery ".} =
  type Cb = proc(super: QDoubleSpinBoxinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QDoubleSpinBox(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_stepBy(self: QDoubleSpinBox, steps: cint): void =


  fQDoubleSpinBox_virtualbase_stepBy(self.h, steps)

type QDoubleSpinBoxstepByBase* = proc(steps: cint): void
proc onstepBy*(self: QDoubleSpinBox, slot: proc(super: QDoubleSpinBoxstepByBase, steps: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QDoubleSpinBoxstepByBase, steps: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_stepBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_stepBy(self: ptr cQDoubleSpinBox, slot: int, steps: cint): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_stepBy ".} =
  type Cb = proc(super: QDoubleSpinBoxstepByBase, steps: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(steps: cint): auto =
    callVirtualBase_stepBy(QDoubleSpinBox(h: self), steps)
  let slotval1 = steps


  nimfunc[](superCall, slotval1)
proc callVirtualBase_clear(self: QDoubleSpinBox, ): void =


  fQDoubleSpinBox_virtualbase_clear(self.h)

type QDoubleSpinBoxclearBase* = proc(): void
proc onclear*(self: QDoubleSpinBox, slot: proc(super: QDoubleSpinBoxclearBase): void) =
  # TODO check subclass
  type Cb = proc(super: QDoubleSpinBoxclearBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_clear(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_clear(self: ptr cQDoubleSpinBox, slot: int): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_clear ".} =
  type Cb = proc(super: QDoubleSpinBoxclearBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clear(QDoubleSpinBox(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_resizeEvent(self: QDoubleSpinBox, event: gen_qevent.QResizeEvent): void =


  fQDoubleSpinBox_virtualbase_resizeEvent(self.h, event.h)

type QDoubleSpinBoxresizeEventBase* = proc(event: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QDoubleSpinBox, slot: proc(super: QDoubleSpinBoxresizeEventBase, event: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDoubleSpinBoxresizeEventBase, event: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_resizeEvent(self: ptr cQDoubleSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_resizeEvent ".} =
  type Cb = proc(super: QDoubleSpinBoxresizeEventBase, event: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QDoubleSpinBox(h: self), event)
  let slotval1 = gen_qevent.QResizeEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QDoubleSpinBox, event: gen_qevent.QKeyEvent): void =


  fQDoubleSpinBox_virtualbase_keyPressEvent(self.h, event.h)

type QDoubleSpinBoxkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QDoubleSpinBox, slot: proc(super: QDoubleSpinBoxkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDoubleSpinBoxkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_keyPressEvent(self: ptr cQDoubleSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_keyPressEvent ".} =
  type Cb = proc(super: QDoubleSpinBoxkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QDoubleSpinBox(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QDoubleSpinBox, event: gen_qevent.QKeyEvent): void =


  fQDoubleSpinBox_virtualbase_keyReleaseEvent(self.h, event.h)

type QDoubleSpinBoxkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QDoubleSpinBox, slot: proc(super: QDoubleSpinBoxkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDoubleSpinBoxkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_keyReleaseEvent(self: ptr cQDoubleSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_keyReleaseEvent ".} =
  type Cb = proc(super: QDoubleSpinBoxkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QDoubleSpinBox(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QDoubleSpinBox, event: gen_qevent.QWheelEvent): void =


  fQDoubleSpinBox_virtualbase_wheelEvent(self.h, event.h)

type QDoubleSpinBoxwheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QDoubleSpinBox, slot: proc(super: QDoubleSpinBoxwheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDoubleSpinBoxwheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_wheelEvent(self: ptr cQDoubleSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_wheelEvent ".} =
  type Cb = proc(super: QDoubleSpinBoxwheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QDoubleSpinBox(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QDoubleSpinBox, event: gen_qevent.QFocusEvent): void =


  fQDoubleSpinBox_virtualbase_focusInEvent(self.h, event.h)

type QDoubleSpinBoxfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QDoubleSpinBox, slot: proc(super: QDoubleSpinBoxfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDoubleSpinBoxfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_focusInEvent(self: ptr cQDoubleSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_focusInEvent ".} =
  type Cb = proc(super: QDoubleSpinBoxfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QDoubleSpinBox(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QDoubleSpinBox, event: gen_qevent.QFocusEvent): void =


  fQDoubleSpinBox_virtualbase_focusOutEvent(self.h, event.h)

type QDoubleSpinBoxfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QDoubleSpinBox, slot: proc(super: QDoubleSpinBoxfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDoubleSpinBoxfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_focusOutEvent(self: ptr cQDoubleSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_focusOutEvent ".} =
  type Cb = proc(super: QDoubleSpinBoxfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QDoubleSpinBox(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QDoubleSpinBox, event: gen_qevent.QContextMenuEvent): void =


  fQDoubleSpinBox_virtualbase_contextMenuEvent(self.h, event.h)

type QDoubleSpinBoxcontextMenuEventBase* = proc(event: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QDoubleSpinBox, slot: proc(super: QDoubleSpinBoxcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDoubleSpinBoxcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_contextMenuEvent(self: ptr cQDoubleSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_contextMenuEvent ".} =
  type Cb = proc(super: QDoubleSpinBoxcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QDoubleSpinBox(h: self), event)
  let slotval1 = gen_qevent.QContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_changeEvent(self: QDoubleSpinBox, event: gen_qcoreevent.QEvent): void =


  fQDoubleSpinBox_virtualbase_changeEvent(self.h, event.h)

type QDoubleSpinBoxchangeEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QDoubleSpinBox, slot: proc(super: QDoubleSpinBoxchangeEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDoubleSpinBoxchangeEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_changeEvent(self: ptr cQDoubleSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_changeEvent ".} =
  type Cb = proc(super: QDoubleSpinBoxchangeEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QDoubleSpinBox(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QDoubleSpinBox, event: gen_qevent.QCloseEvent): void =


  fQDoubleSpinBox_virtualbase_closeEvent(self.h, event.h)

type QDoubleSpinBoxcloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QDoubleSpinBox, slot: proc(super: QDoubleSpinBoxcloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDoubleSpinBoxcloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_closeEvent(self: ptr cQDoubleSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_closeEvent ".} =
  type Cb = proc(super: QDoubleSpinBoxcloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QDoubleSpinBox(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QDoubleSpinBox, event: gen_qevent.QHideEvent): void =


  fQDoubleSpinBox_virtualbase_hideEvent(self.h, event.h)

type QDoubleSpinBoxhideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QDoubleSpinBox, slot: proc(super: QDoubleSpinBoxhideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDoubleSpinBoxhideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_hideEvent(self: ptr cQDoubleSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_hideEvent ".} =
  type Cb = proc(super: QDoubleSpinBoxhideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QDoubleSpinBox(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mousePressEvent(self: QDoubleSpinBox, event: gen_qevent.QMouseEvent): void =


  fQDoubleSpinBox_virtualbase_mousePressEvent(self.h, event.h)

type QDoubleSpinBoxmousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QDoubleSpinBox, slot: proc(super: QDoubleSpinBoxmousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDoubleSpinBoxmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_mousePressEvent(self: ptr cQDoubleSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_mousePressEvent ".} =
  type Cb = proc(super: QDoubleSpinBoxmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QDoubleSpinBox(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QDoubleSpinBox, event: gen_qevent.QMouseEvent): void =


  fQDoubleSpinBox_virtualbase_mouseReleaseEvent(self.h, event.h)

type QDoubleSpinBoxmouseReleaseEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QDoubleSpinBox, slot: proc(super: QDoubleSpinBoxmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDoubleSpinBoxmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_mouseReleaseEvent(self: ptr cQDoubleSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_mouseReleaseEvent ".} =
  type Cb = proc(super: QDoubleSpinBoxmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QDoubleSpinBox(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QDoubleSpinBox, event: gen_qevent.QMouseEvent): void =


  fQDoubleSpinBox_virtualbase_mouseMoveEvent(self.h, event.h)

type QDoubleSpinBoxmouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QDoubleSpinBox, slot: proc(super: QDoubleSpinBoxmouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDoubleSpinBoxmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_mouseMoveEvent(self: ptr cQDoubleSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_mouseMoveEvent ".} =
  type Cb = proc(super: QDoubleSpinBoxmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QDoubleSpinBox(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_timerEvent(self: QDoubleSpinBox, event: gen_qcoreevent.QTimerEvent): void =


  fQDoubleSpinBox_virtualbase_timerEvent(self.h, event.h)

type QDoubleSpinBoxtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QDoubleSpinBox, slot: proc(super: QDoubleSpinBoxtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDoubleSpinBoxtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_timerEvent(self: ptr cQDoubleSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_timerEvent ".} =
  type Cb = proc(super: QDoubleSpinBoxtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QDoubleSpinBox(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QDoubleSpinBox, event: gen_qevent.QPaintEvent): void =


  fQDoubleSpinBox_virtualbase_paintEvent(self.h, event.h)

type QDoubleSpinBoxpaintEventBase* = proc(event: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QDoubleSpinBox, slot: proc(super: QDoubleSpinBoxpaintEventBase, event: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDoubleSpinBoxpaintEventBase, event: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_paintEvent(self: ptr cQDoubleSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_paintEvent ".} =
  type Cb = proc(super: QDoubleSpinBoxpaintEventBase, event: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QDoubleSpinBox(h: self), event)
  let slotval1 = gen_qevent.QPaintEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QDoubleSpinBox, event: gen_qevent.QShowEvent): void =


  fQDoubleSpinBox_virtualbase_showEvent(self.h, event.h)

type QDoubleSpinBoxshowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QDoubleSpinBox, slot: proc(super: QDoubleSpinBoxshowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDoubleSpinBoxshowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_showEvent(self: ptr cQDoubleSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_showEvent ".} =
  type Cb = proc(super: QDoubleSpinBoxshowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QDoubleSpinBox(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_initStyleOption(self: QDoubleSpinBox, option: gen_qstyleoption.QStyleOptionSpinBox): void =


  fQDoubleSpinBox_virtualbase_initStyleOption(self.h, option.h)

type QDoubleSpinBoxinitStyleOptionBase* = proc(option: gen_qstyleoption.QStyleOptionSpinBox): void
proc oninitStyleOption*(self: QDoubleSpinBox, slot: proc(super: QDoubleSpinBoxinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionSpinBox): void) =
  # TODO check subclass
  type Cb = proc(super: QDoubleSpinBoxinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionSpinBox): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_initStyleOption(self: ptr cQDoubleSpinBox, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_initStyleOption ".} =
  type Cb = proc(super: QDoubleSpinBoxinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionSpinBox): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(option: gen_qstyleoption.QStyleOptionSpinBox): auto =
    callVirtualBase_initStyleOption(QDoubleSpinBox(h: self), option)
  let slotval1 = gen_qstyleoption.QStyleOptionSpinBox(h: option)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_stepEnabled(self: QDoubleSpinBox, ): gen_qabstractspinbox.QAbstractSpinBoxStepEnabledFlag =


  gen_qabstractspinbox.QAbstractSpinBoxStepEnabledFlag(fQDoubleSpinBox_virtualbase_stepEnabled(self.h))

type QDoubleSpinBoxstepEnabledBase* = proc(): gen_qabstractspinbox.QAbstractSpinBoxStepEnabledFlag
proc onstepEnabled*(self: QDoubleSpinBox, slot: proc(super: QDoubleSpinBoxstepEnabledBase): gen_qabstractspinbox.QAbstractSpinBoxStepEnabledFlag) =
  # TODO check subclass
  type Cb = proc(super: QDoubleSpinBoxstepEnabledBase): gen_qabstractspinbox.QAbstractSpinBoxStepEnabledFlag
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_stepEnabled(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_stepEnabled(self: ptr cQDoubleSpinBox, slot: int): cint {.exportc: "miqt_exec_callback_QDoubleSpinBox_stepEnabled ".} =
  type Cb = proc(super: QDoubleSpinBoxstepEnabledBase): gen_qabstractspinbox.QAbstractSpinBoxStepEnabledFlag
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_stepEnabled(QDoubleSpinBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_devType(self: QDoubleSpinBox, ): cint =


  fQDoubleSpinBox_virtualbase_devType(self.h)

type QDoubleSpinBoxdevTypeBase* = proc(): cint
proc ondevType*(self: QDoubleSpinBox, slot: proc(super: QDoubleSpinBoxdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QDoubleSpinBoxdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_devType(self: ptr cQDoubleSpinBox, slot: int): cint {.exportc: "miqt_exec_callback_QDoubleSpinBox_devType ".} =
  type Cb = proc(super: QDoubleSpinBoxdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QDoubleSpinBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QDoubleSpinBox, visible: bool): void =


  fQDoubleSpinBox_virtualbase_setVisible(self.h, visible)

type QDoubleSpinBoxsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QDoubleSpinBox, slot: proc(super: QDoubleSpinBoxsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QDoubleSpinBoxsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_setVisible(self: ptr cQDoubleSpinBox, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_setVisible ".} =
  type Cb = proc(super: QDoubleSpinBoxsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QDoubleSpinBox(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_heightForWidth(self: QDoubleSpinBox, param1: cint): cint =


  fQDoubleSpinBox_virtualbase_heightForWidth(self.h, param1)

type QDoubleSpinBoxheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QDoubleSpinBox, slot: proc(super: QDoubleSpinBoxheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QDoubleSpinBoxheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_heightForWidth(self: ptr cQDoubleSpinBox, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QDoubleSpinBox_heightForWidth ".} =
  type Cb = proc(super: QDoubleSpinBoxheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QDoubleSpinBox(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QDoubleSpinBox, ): bool =


  fQDoubleSpinBox_virtualbase_hasHeightForWidth(self.h)

type QDoubleSpinBoxhasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QDoubleSpinBox, slot: proc(super: QDoubleSpinBoxhasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QDoubleSpinBoxhasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_hasHeightForWidth(self: ptr cQDoubleSpinBox, slot: int): bool {.exportc: "miqt_exec_callback_QDoubleSpinBox_hasHeightForWidth ".} =
  type Cb = proc(super: QDoubleSpinBoxhasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QDoubleSpinBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QDoubleSpinBox, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQDoubleSpinBox_virtualbase_paintEngine(self.h))

type QDoubleSpinBoxpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QDoubleSpinBox, slot: proc(super: QDoubleSpinBoxpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QDoubleSpinBoxpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_paintEngine(self: ptr cQDoubleSpinBox, slot: int): pointer {.exportc: "miqt_exec_callback_QDoubleSpinBox_paintEngine ".} =
  type Cb = proc(super: QDoubleSpinBoxpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QDoubleSpinBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_mouseDoubleClickEvent(self: QDoubleSpinBox, event: gen_qevent.QMouseEvent): void =


  fQDoubleSpinBox_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QDoubleSpinBoxmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QDoubleSpinBox, slot: proc(super: QDoubleSpinBoxmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDoubleSpinBoxmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_mouseDoubleClickEvent(self: ptr cQDoubleSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QDoubleSpinBoxmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QDoubleSpinBox(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QDoubleSpinBox, event: gen_qevent.QEnterEvent): void =


  fQDoubleSpinBox_virtualbase_enterEvent(self.h, event.h)

type QDoubleSpinBoxenterEventBase* = proc(event: gen_qevent.QEnterEvent): void
proc onenterEvent*(self: QDoubleSpinBox, slot: proc(super: QDoubleSpinBoxenterEventBase, event: gen_qevent.QEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDoubleSpinBoxenterEventBase, event: gen_qevent.QEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_enterEvent(self: ptr cQDoubleSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_enterEvent ".} =
  type Cb = proc(super: QDoubleSpinBoxenterEventBase, event: gen_qevent.QEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QEnterEvent): auto =
    callVirtualBase_enterEvent(QDoubleSpinBox(h: self), event)
  let slotval1 = gen_qevent.QEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QDoubleSpinBox, event: gen_qcoreevent.QEvent): void =


  fQDoubleSpinBox_virtualbase_leaveEvent(self.h, event.h)

type QDoubleSpinBoxleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QDoubleSpinBox, slot: proc(super: QDoubleSpinBoxleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDoubleSpinBoxleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_leaveEvent(self: ptr cQDoubleSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_leaveEvent ".} =
  type Cb = proc(super: QDoubleSpinBoxleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QDoubleSpinBox(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QDoubleSpinBox, event: gen_qevent.QMoveEvent): void =


  fQDoubleSpinBox_virtualbase_moveEvent(self.h, event.h)

type QDoubleSpinBoxmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QDoubleSpinBox, slot: proc(super: QDoubleSpinBoxmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDoubleSpinBoxmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_moveEvent(self: ptr cQDoubleSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_moveEvent ".} =
  type Cb = proc(super: QDoubleSpinBoxmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QDoubleSpinBox(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QDoubleSpinBox, event: gen_qevent.QTabletEvent): void =


  fQDoubleSpinBox_virtualbase_tabletEvent(self.h, event.h)

type QDoubleSpinBoxtabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QDoubleSpinBox, slot: proc(super: QDoubleSpinBoxtabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDoubleSpinBoxtabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_tabletEvent(self: ptr cQDoubleSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_tabletEvent ".} =
  type Cb = proc(super: QDoubleSpinBoxtabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QDoubleSpinBox(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QDoubleSpinBox, event: gen_qevent.QActionEvent): void =


  fQDoubleSpinBox_virtualbase_actionEvent(self.h, event.h)

type QDoubleSpinBoxactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QDoubleSpinBox, slot: proc(super: QDoubleSpinBoxactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDoubleSpinBoxactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_actionEvent(self: ptr cQDoubleSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_actionEvent ".} =
  type Cb = proc(super: QDoubleSpinBoxactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QDoubleSpinBox(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QDoubleSpinBox, event: gen_qevent.QDragEnterEvent): void =


  fQDoubleSpinBox_virtualbase_dragEnterEvent(self.h, event.h)

type QDoubleSpinBoxdragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QDoubleSpinBox, slot: proc(super: QDoubleSpinBoxdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDoubleSpinBoxdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_dragEnterEvent(self: ptr cQDoubleSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_dragEnterEvent ".} =
  type Cb = proc(super: QDoubleSpinBoxdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QDoubleSpinBox(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QDoubleSpinBox, event: gen_qevent.QDragMoveEvent): void =


  fQDoubleSpinBox_virtualbase_dragMoveEvent(self.h, event.h)

type QDoubleSpinBoxdragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QDoubleSpinBox, slot: proc(super: QDoubleSpinBoxdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDoubleSpinBoxdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_dragMoveEvent(self: ptr cQDoubleSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_dragMoveEvent ".} =
  type Cb = proc(super: QDoubleSpinBoxdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QDoubleSpinBox(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QDoubleSpinBox, event: gen_qevent.QDragLeaveEvent): void =


  fQDoubleSpinBox_virtualbase_dragLeaveEvent(self.h, event.h)

type QDoubleSpinBoxdragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QDoubleSpinBox, slot: proc(super: QDoubleSpinBoxdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDoubleSpinBoxdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_dragLeaveEvent(self: ptr cQDoubleSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_dragLeaveEvent ".} =
  type Cb = proc(super: QDoubleSpinBoxdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QDoubleSpinBox(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QDoubleSpinBox, event: gen_qevent.QDropEvent): void =


  fQDoubleSpinBox_virtualbase_dropEvent(self.h, event.h)

type QDoubleSpinBoxdropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QDoubleSpinBox, slot: proc(super: QDoubleSpinBoxdropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDoubleSpinBoxdropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_dropEvent(self: ptr cQDoubleSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_dropEvent ".} =
  type Cb = proc(super: QDoubleSpinBoxdropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QDoubleSpinBox(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QDoubleSpinBox, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =


  fQDoubleSpinBox_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QDoubleSpinBoxnativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: QDoubleSpinBox, slot: proc(super: QDoubleSpinBoxnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool) =
  # TODO check subclass
  type Cb = proc(super: QDoubleSpinBoxnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_nativeEvent(self: ptr cQDoubleSpinBox, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QDoubleSpinBox_nativeEvent ".} =
  type Cb = proc(super: QDoubleSpinBoxnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr uint): auto =
    callVirtualBase_nativeEvent(QDoubleSpinBox(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QDoubleSpinBox, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQDoubleSpinBox_virtualbase_metric(self.h, cint(param1))

type QDoubleSpinBoxmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QDoubleSpinBox, slot: proc(super: QDoubleSpinBoxmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QDoubleSpinBoxmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_metric(self: ptr cQDoubleSpinBox, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QDoubleSpinBox_metric ".} =
  type Cb = proc(super: QDoubleSpinBoxmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QDoubleSpinBox(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QDoubleSpinBox, painter: gen_qpainter.QPainter): void =


  fQDoubleSpinBox_virtualbase_initPainter(self.h, painter.h)

type QDoubleSpinBoxinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QDoubleSpinBox, slot: proc(super: QDoubleSpinBoxinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QDoubleSpinBoxinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_initPainter(self: ptr cQDoubleSpinBox, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_initPainter ".} =
  type Cb = proc(super: QDoubleSpinBoxinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QDoubleSpinBox(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QDoubleSpinBox, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQDoubleSpinBox_virtualbase_redirected(self.h, offset.h))

type QDoubleSpinBoxredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QDoubleSpinBox, slot: proc(super: QDoubleSpinBoxredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QDoubleSpinBoxredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_redirected(self: ptr cQDoubleSpinBox, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QDoubleSpinBox_redirected ".} =
  type Cb = proc(super: QDoubleSpinBoxredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QDoubleSpinBox(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QDoubleSpinBox, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQDoubleSpinBox_virtualbase_sharedPainter(self.h))

type QDoubleSpinBoxsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QDoubleSpinBox, slot: proc(super: QDoubleSpinBoxsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QDoubleSpinBoxsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_sharedPainter(self: ptr cQDoubleSpinBox, slot: int): pointer {.exportc: "miqt_exec_callback_QDoubleSpinBox_sharedPainter ".} =
  type Cb = proc(super: QDoubleSpinBoxsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QDoubleSpinBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QDoubleSpinBox, param1: gen_qevent.QInputMethodEvent): void =


  fQDoubleSpinBox_virtualbase_inputMethodEvent(self.h, param1.h)

type QDoubleSpinBoxinputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QDoubleSpinBox, slot: proc(super: QDoubleSpinBoxinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDoubleSpinBoxinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_inputMethodEvent(self: ptr cQDoubleSpinBox, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_inputMethodEvent ".} =
  type Cb = proc(super: QDoubleSpinBoxinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QDoubleSpinBox(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusNextPrevChild(self: QDoubleSpinBox, next: bool): bool =


  fQDoubleSpinBox_virtualbase_focusNextPrevChild(self.h, next)

type QDoubleSpinBoxfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QDoubleSpinBox, slot: proc(super: QDoubleSpinBoxfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QDoubleSpinBoxfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_focusNextPrevChild(self: ptr cQDoubleSpinBox, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QDoubleSpinBox_focusNextPrevChild ".} =
  type Cb = proc(super: QDoubleSpinBoxfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QDoubleSpinBox(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QDoubleSpinBox, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQDoubleSpinBox_virtualbase_eventFilter(self.h, watched.h, event.h)

type QDoubleSpinBoxeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QDoubleSpinBox, slot: proc(super: QDoubleSpinBoxeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QDoubleSpinBoxeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_eventFilter(self: ptr cQDoubleSpinBox, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QDoubleSpinBox_eventFilter ".} =
  type Cb = proc(super: QDoubleSpinBoxeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QDoubleSpinBox(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_childEvent(self: QDoubleSpinBox, event: gen_qcoreevent.QChildEvent): void =


  fQDoubleSpinBox_virtualbase_childEvent(self.h, event.h)

type QDoubleSpinBoxchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QDoubleSpinBox, slot: proc(super: QDoubleSpinBoxchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDoubleSpinBoxchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_childEvent(self: ptr cQDoubleSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_childEvent ".} =
  type Cb = proc(super: QDoubleSpinBoxchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QDoubleSpinBox(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QDoubleSpinBox, event: gen_qcoreevent.QEvent): void =


  fQDoubleSpinBox_virtualbase_customEvent(self.h, event.h)

type QDoubleSpinBoxcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QDoubleSpinBox, slot: proc(super: QDoubleSpinBoxcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDoubleSpinBoxcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_customEvent(self: ptr cQDoubleSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_customEvent ".} =
  type Cb = proc(super: QDoubleSpinBoxcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QDoubleSpinBox(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QDoubleSpinBox, signal: gen_qmetaobject.QMetaMethod): void =


  fQDoubleSpinBox_virtualbase_connectNotify(self.h, signal.h)

type QDoubleSpinBoxconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QDoubleSpinBox, slot: proc(super: QDoubleSpinBoxconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QDoubleSpinBoxconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_connectNotify(self: ptr cQDoubleSpinBox, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_connectNotify ".} =
  type Cb = proc(super: QDoubleSpinBoxconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QDoubleSpinBox(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QDoubleSpinBox, signal: gen_qmetaobject.QMetaMethod): void =


  fQDoubleSpinBox_virtualbase_disconnectNotify(self.h, signal.h)

type QDoubleSpinBoxdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QDoubleSpinBox, slot: proc(super: QDoubleSpinBoxdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QDoubleSpinBoxdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleSpinBox_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleSpinBox_disconnectNotify(self: ptr cQDoubleSpinBox, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QDoubleSpinBox_disconnectNotify ".} =
  type Cb = proc(super: QDoubleSpinBoxdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QDoubleSpinBox(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QDoubleSpinBox) =
  fcQDoubleSpinBox_delete(self.h)
