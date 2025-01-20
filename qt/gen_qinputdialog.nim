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
{.compile("gen_qinputdialog.cpp", cflags).}


type QInputDialogInputDialogOption* = cint
const
  QInputDialogNoButtons* = 1
  QInputDialogUseListViewForComboBoxItems* = 2
  QInputDialogUsePlainTextEditForTextInput* = 4



type QInputDialogInputMode* = cint
const
  QInputDialogTextInput* = 0
  QInputDialogIntInput* = 1
  QInputDialogDoubleInput* = 2



import gen_qinputdialog_types
export gen_qinputdialog_types

import
  gen_qcoreevent,
  gen_qdialog,
  gen_qevent,
  gen_qlineedit,
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
  gen_qcoreevent,
  gen_qdialog,
  gen_qevent,
  gen_qlineedit,
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

type cQInputDialog*{.exportc: "QInputDialog", incompleteStruct.} = object

proc fcQInputDialog_new(parent: pointer): ptr cQInputDialog {.importc: "QInputDialog_new".}
proc fcQInputDialog_new2(): ptr cQInputDialog {.importc: "QInputDialog_new2".}
proc fcQInputDialog_new3(parent: pointer, flags: cint): ptr cQInputDialog {.importc: "QInputDialog_new3".}
proc fcQInputDialog_metaObject(self: pointer, ): pointer {.importc: "QInputDialog_metaObject".}
proc fcQInputDialog_metacast(self: pointer, param1: cstring): pointer {.importc: "QInputDialog_metacast".}
proc fcQInputDialog_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QInputDialog_metacall".}
proc fcQInputDialog_tr(s: cstring): struct_miqt_string {.importc: "QInputDialog_tr".}
proc fcQInputDialog_trUtf8(s: cstring): struct_miqt_string {.importc: "QInputDialog_trUtf8".}
proc fcQInputDialog_setInputMode(self: pointer, mode: cint): void {.importc: "QInputDialog_setInputMode".}
proc fcQInputDialog_inputMode(self: pointer, ): cint {.importc: "QInputDialog_inputMode".}
proc fcQInputDialog_setLabelText(self: pointer, text: struct_miqt_string): void {.importc: "QInputDialog_setLabelText".}
proc fcQInputDialog_labelText(self: pointer, ): struct_miqt_string {.importc: "QInputDialog_labelText".}
proc fcQInputDialog_setOption(self: pointer, option: cint): void {.importc: "QInputDialog_setOption".}
proc fcQInputDialog_testOption(self: pointer, option: cint): bool {.importc: "QInputDialog_testOption".}
proc fcQInputDialog_setOptions(self: pointer, options: cint): void {.importc: "QInputDialog_setOptions".}
proc fcQInputDialog_options(self: pointer, ): cint {.importc: "QInputDialog_options".}
proc fcQInputDialog_setTextValue(self: pointer, text: struct_miqt_string): void {.importc: "QInputDialog_setTextValue".}
proc fcQInputDialog_textValue(self: pointer, ): struct_miqt_string {.importc: "QInputDialog_textValue".}
proc fcQInputDialog_setTextEchoMode(self: pointer, mode: cint): void {.importc: "QInputDialog_setTextEchoMode".}
proc fcQInputDialog_textEchoMode(self: pointer, ): cint {.importc: "QInputDialog_textEchoMode".}
proc fcQInputDialog_setComboBoxEditable(self: pointer, editable: bool): void {.importc: "QInputDialog_setComboBoxEditable".}
proc fcQInputDialog_isComboBoxEditable(self: pointer, ): bool {.importc: "QInputDialog_isComboBoxEditable".}
proc fcQInputDialog_setComboBoxItems(self: pointer, items: struct_miqt_array): void {.importc: "QInputDialog_setComboBoxItems".}
proc fcQInputDialog_comboBoxItems(self: pointer, ): struct_miqt_array {.importc: "QInputDialog_comboBoxItems".}
proc fcQInputDialog_setIntValue(self: pointer, value: cint): void {.importc: "QInputDialog_setIntValue".}
proc fcQInputDialog_intValue(self: pointer, ): cint {.importc: "QInputDialog_intValue".}
proc fcQInputDialog_setIntMinimum(self: pointer, min: cint): void {.importc: "QInputDialog_setIntMinimum".}
proc fcQInputDialog_intMinimum(self: pointer, ): cint {.importc: "QInputDialog_intMinimum".}
proc fcQInputDialog_setIntMaximum(self: pointer, max: cint): void {.importc: "QInputDialog_setIntMaximum".}
proc fcQInputDialog_intMaximum(self: pointer, ): cint {.importc: "QInputDialog_intMaximum".}
proc fcQInputDialog_setIntRange(self: pointer, min: cint, max: cint): void {.importc: "QInputDialog_setIntRange".}
proc fcQInputDialog_setIntStep(self: pointer, step: cint): void {.importc: "QInputDialog_setIntStep".}
proc fcQInputDialog_intStep(self: pointer, ): cint {.importc: "QInputDialog_intStep".}
proc fcQInputDialog_setDoubleValue(self: pointer, value: float64): void {.importc: "QInputDialog_setDoubleValue".}
proc fcQInputDialog_doubleValue(self: pointer, ): float64 {.importc: "QInputDialog_doubleValue".}
proc fcQInputDialog_setDoubleMinimum(self: pointer, min: float64): void {.importc: "QInputDialog_setDoubleMinimum".}
proc fcQInputDialog_doubleMinimum(self: pointer, ): float64 {.importc: "QInputDialog_doubleMinimum".}
proc fcQInputDialog_setDoubleMaximum(self: pointer, max: float64): void {.importc: "QInputDialog_setDoubleMaximum".}
proc fcQInputDialog_doubleMaximum(self: pointer, ): float64 {.importc: "QInputDialog_doubleMaximum".}
proc fcQInputDialog_setDoubleRange(self: pointer, min: float64, max: float64): void {.importc: "QInputDialog_setDoubleRange".}
proc fcQInputDialog_setDoubleDecimals(self: pointer, decimals: cint): void {.importc: "QInputDialog_setDoubleDecimals".}
proc fcQInputDialog_doubleDecimals(self: pointer, ): cint {.importc: "QInputDialog_doubleDecimals".}
proc fcQInputDialog_setOkButtonText(self: pointer, text: struct_miqt_string): void {.importc: "QInputDialog_setOkButtonText".}
proc fcQInputDialog_okButtonText(self: pointer, ): struct_miqt_string {.importc: "QInputDialog_okButtonText".}
proc fcQInputDialog_setCancelButtonText(self: pointer, text: struct_miqt_string): void {.importc: "QInputDialog_setCancelButtonText".}
proc fcQInputDialog_cancelButtonText(self: pointer, ): struct_miqt_string {.importc: "QInputDialog_cancelButtonText".}
proc fcQInputDialog_minimumSizeHint(self: pointer, ): pointer {.importc: "QInputDialog_minimumSizeHint".}
proc fcQInputDialog_sizeHint(self: pointer, ): pointer {.importc: "QInputDialog_sizeHint".}
proc fcQInputDialog_setVisible(self: pointer, visible: bool): void {.importc: "QInputDialog_setVisible".}
proc fcQInputDialog_getText(parent: pointer, title: struct_miqt_string, label: struct_miqt_string): struct_miqt_string {.importc: "QInputDialog_getText".}
proc fcQInputDialog_getMultiLineText(parent: pointer, title: struct_miqt_string, label: struct_miqt_string): struct_miqt_string {.importc: "QInputDialog_getMultiLineText".}
proc fcQInputDialog_getItem(parent: pointer, title: struct_miqt_string, label: struct_miqt_string, items: struct_miqt_array): struct_miqt_string {.importc: "QInputDialog_getItem".}
proc fcQInputDialog_getInt(parent: pointer, title: struct_miqt_string, label: struct_miqt_string): cint {.importc: "QInputDialog_getInt".}
proc fcQInputDialog_getDouble(parent: pointer, title: struct_miqt_string, label: struct_miqt_string): float64 {.importc: "QInputDialog_getDouble".}
proc fcQInputDialog_getDouble2(parent: pointer, title: struct_miqt_string, label: struct_miqt_string, value: float64, minValue: float64, maxValue: float64, decimals: cint, ok: ptr bool, flags: cint, step: float64): float64 {.importc: "QInputDialog_getDouble2".}
proc fcQInputDialog_setDoubleStep(self: pointer, step: float64): void {.importc: "QInputDialog_setDoubleStep".}
proc fcQInputDialog_doubleStep(self: pointer, ): float64 {.importc: "QInputDialog_doubleStep".}
proc fcQInputDialog_textValueChanged(self: pointer, text: struct_miqt_string): void {.importc: "QInputDialog_textValueChanged".}
proc fQInputDialog_connect_textValueChanged(self: pointer, slot: int) {.importc: "QInputDialog_connect_textValueChanged".}
proc fcQInputDialog_textValueSelected(self: pointer, text: struct_miqt_string): void {.importc: "QInputDialog_textValueSelected".}
proc fQInputDialog_connect_textValueSelected(self: pointer, slot: int) {.importc: "QInputDialog_connect_textValueSelected".}
proc fcQInputDialog_intValueChanged(self: pointer, value: cint): void {.importc: "QInputDialog_intValueChanged".}
proc fQInputDialog_connect_intValueChanged(self: pointer, slot: int) {.importc: "QInputDialog_connect_intValueChanged".}
proc fcQInputDialog_intValueSelected(self: pointer, value: cint): void {.importc: "QInputDialog_intValueSelected".}
proc fQInputDialog_connect_intValueSelected(self: pointer, slot: int) {.importc: "QInputDialog_connect_intValueSelected".}
proc fcQInputDialog_doubleValueChanged(self: pointer, value: float64): void {.importc: "QInputDialog_doubleValueChanged".}
proc fQInputDialog_connect_doubleValueChanged(self: pointer, slot: int) {.importc: "QInputDialog_connect_doubleValueChanged".}
proc fcQInputDialog_doubleValueSelected(self: pointer, value: float64): void {.importc: "QInputDialog_doubleValueSelected".}
proc fQInputDialog_connect_doubleValueSelected(self: pointer, slot: int) {.importc: "QInputDialog_connect_doubleValueSelected".}
proc fcQInputDialog_done(self: pointer, resultVal: cint): void {.importc: "QInputDialog_done".}
proc fcQInputDialog_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QInputDialog_tr2".}
proc fcQInputDialog_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QInputDialog_tr3".}
proc fcQInputDialog_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QInputDialog_trUtf82".}
proc fcQInputDialog_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QInputDialog_trUtf83".}
proc fcQInputDialog_setOption2(self: pointer, option: cint, on: bool): void {.importc: "QInputDialog_setOption2".}
proc fcQInputDialog_getText4(parent: pointer, title: struct_miqt_string, label: struct_miqt_string, echo: cint): struct_miqt_string {.importc: "QInputDialog_getText4".}
proc fcQInputDialog_getText5(parent: pointer, title: struct_miqt_string, label: struct_miqt_string, echo: cint, text: struct_miqt_string): struct_miqt_string {.importc: "QInputDialog_getText5".}
proc fcQInputDialog_getText6(parent: pointer, title: struct_miqt_string, label: struct_miqt_string, echo: cint, text: struct_miqt_string, ok: ptr bool): struct_miqt_string {.importc: "QInputDialog_getText6".}
proc fcQInputDialog_getText7(parent: pointer, title: struct_miqt_string, label: struct_miqt_string, echo: cint, text: struct_miqt_string, ok: ptr bool, flags: cint): struct_miqt_string {.importc: "QInputDialog_getText7".}
proc fcQInputDialog_getText8(parent: pointer, title: struct_miqt_string, label: struct_miqt_string, echo: cint, text: struct_miqt_string, ok: ptr bool, flags: cint, inputMethodHints: cint): struct_miqt_string {.importc: "QInputDialog_getText8".}
proc fcQInputDialog_getMultiLineText4(parent: pointer, title: struct_miqt_string, label: struct_miqt_string, text: struct_miqt_string): struct_miqt_string {.importc: "QInputDialog_getMultiLineText4".}
proc fcQInputDialog_getMultiLineText5(parent: pointer, title: struct_miqt_string, label: struct_miqt_string, text: struct_miqt_string, ok: ptr bool): struct_miqt_string {.importc: "QInputDialog_getMultiLineText5".}
proc fcQInputDialog_getMultiLineText6(parent: pointer, title: struct_miqt_string, label: struct_miqt_string, text: struct_miqt_string, ok: ptr bool, flags: cint): struct_miqt_string {.importc: "QInputDialog_getMultiLineText6".}
proc fcQInputDialog_getMultiLineText7(parent: pointer, title: struct_miqt_string, label: struct_miqt_string, text: struct_miqt_string, ok: ptr bool, flags: cint, inputMethodHints: cint): struct_miqt_string {.importc: "QInputDialog_getMultiLineText7".}
proc fcQInputDialog_getItem5(parent: pointer, title: struct_miqt_string, label: struct_miqt_string, items: struct_miqt_array, current: cint): struct_miqt_string {.importc: "QInputDialog_getItem5".}
proc fcQInputDialog_getItem6(parent: pointer, title: struct_miqt_string, label: struct_miqt_string, items: struct_miqt_array, current: cint, editable: bool): struct_miqt_string {.importc: "QInputDialog_getItem6".}
proc fcQInputDialog_getItem7(parent: pointer, title: struct_miqt_string, label: struct_miqt_string, items: struct_miqt_array, current: cint, editable: bool, ok: ptr bool): struct_miqt_string {.importc: "QInputDialog_getItem7".}
proc fcQInputDialog_getItem8(parent: pointer, title: struct_miqt_string, label: struct_miqt_string, items: struct_miqt_array, current: cint, editable: bool, ok: ptr bool, flags: cint): struct_miqt_string {.importc: "QInputDialog_getItem8".}
proc fcQInputDialog_getItem9(parent: pointer, title: struct_miqt_string, label: struct_miqt_string, items: struct_miqt_array, current: cint, editable: bool, ok: ptr bool, flags: cint, inputMethodHints: cint): struct_miqt_string {.importc: "QInputDialog_getItem9".}
proc fcQInputDialog_getInt4(parent: pointer, title: struct_miqt_string, label: struct_miqt_string, value: cint): cint {.importc: "QInputDialog_getInt4".}
proc fcQInputDialog_getInt5(parent: pointer, title: struct_miqt_string, label: struct_miqt_string, value: cint, minValue: cint): cint {.importc: "QInputDialog_getInt5".}
proc fcQInputDialog_getInt6(parent: pointer, title: struct_miqt_string, label: struct_miqt_string, value: cint, minValue: cint, maxValue: cint): cint {.importc: "QInputDialog_getInt6".}
proc fcQInputDialog_getInt7(parent: pointer, title: struct_miqt_string, label: struct_miqt_string, value: cint, minValue: cint, maxValue: cint, step: cint): cint {.importc: "QInputDialog_getInt7".}
proc fcQInputDialog_getInt8(parent: pointer, title: struct_miqt_string, label: struct_miqt_string, value: cint, minValue: cint, maxValue: cint, step: cint, ok: ptr bool): cint {.importc: "QInputDialog_getInt8".}
proc fcQInputDialog_getInt9(parent: pointer, title: struct_miqt_string, label: struct_miqt_string, value: cint, minValue: cint, maxValue: cint, step: cint, ok: ptr bool, flags: cint): cint {.importc: "QInputDialog_getInt9".}
proc fcQInputDialog_getDouble4(parent: pointer, title: struct_miqt_string, label: struct_miqt_string, value: float64): float64 {.importc: "QInputDialog_getDouble4".}
proc fcQInputDialog_getDouble5(parent: pointer, title: struct_miqt_string, label: struct_miqt_string, value: float64, minValue: float64): float64 {.importc: "QInputDialog_getDouble5".}
proc fcQInputDialog_getDouble6(parent: pointer, title: struct_miqt_string, label: struct_miqt_string, value: float64, minValue: float64, maxValue: float64): float64 {.importc: "QInputDialog_getDouble6".}
proc fcQInputDialog_getDouble7(parent: pointer, title: struct_miqt_string, label: struct_miqt_string, value: float64, minValue: float64, maxValue: float64, decimals: cint): float64 {.importc: "QInputDialog_getDouble7".}
proc fcQInputDialog_getDouble8(parent: pointer, title: struct_miqt_string, label: struct_miqt_string, value: float64, minValue: float64, maxValue: float64, decimals: cint, ok: ptr bool): float64 {.importc: "QInputDialog_getDouble8".}
proc fcQInputDialog_getDouble9(parent: pointer, title: struct_miqt_string, label: struct_miqt_string, value: float64, minValue: float64, maxValue: float64, decimals: cint, ok: ptr bool, flags: cint): float64 {.importc: "QInputDialog_getDouble9".}
proc fQInputDialog_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QInputDialog_virtualbase_metaObject".}
proc fcQInputDialog_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_metaObject".}
proc fQInputDialog_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QInputDialog_virtualbase_metacast".}
proc fcQInputDialog_override_virtual_metacast(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_metacast".}
proc fQInputDialog_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QInputDialog_virtualbase_metacall".}
proc fcQInputDialog_override_virtual_metacall(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_metacall".}
proc fQInputDialog_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QInputDialog_virtualbase_minimumSizeHint".}
proc fcQInputDialog_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_minimumSizeHint".}
proc fQInputDialog_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QInputDialog_virtualbase_sizeHint".}
proc fcQInputDialog_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_sizeHint".}
proc fQInputDialog_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QInputDialog_virtualbase_setVisible".}
proc fcQInputDialog_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_setVisible".}
proc fQInputDialog_virtualbase_done(self: pointer, resultVal: cint): void{.importc: "QInputDialog_virtualbase_done".}
proc fcQInputDialog_override_virtual_done(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_done".}
proc fQInputDialog_virtualbase_open(self: pointer, ): void{.importc: "QInputDialog_virtualbase_open".}
proc fcQInputDialog_override_virtual_open(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_open".}
proc fQInputDialog_virtualbase_exec(self: pointer, ): cint{.importc: "QInputDialog_virtualbase_exec".}
proc fcQInputDialog_override_virtual_exec(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_exec".}
proc fQInputDialog_virtualbase_accept(self: pointer, ): void{.importc: "QInputDialog_virtualbase_accept".}
proc fcQInputDialog_override_virtual_accept(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_accept".}
proc fQInputDialog_virtualbase_reject(self: pointer, ): void{.importc: "QInputDialog_virtualbase_reject".}
proc fcQInputDialog_override_virtual_reject(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_reject".}
proc fQInputDialog_virtualbase_keyPressEvent(self: pointer, param1: pointer): void{.importc: "QInputDialog_virtualbase_keyPressEvent".}
proc fcQInputDialog_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_keyPressEvent".}
proc fQInputDialog_virtualbase_closeEvent(self: pointer, param1: pointer): void{.importc: "QInputDialog_virtualbase_closeEvent".}
proc fcQInputDialog_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_closeEvent".}
proc fQInputDialog_virtualbase_showEvent(self: pointer, param1: pointer): void{.importc: "QInputDialog_virtualbase_showEvent".}
proc fcQInputDialog_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_showEvent".}
proc fQInputDialog_virtualbase_resizeEvent(self: pointer, param1: pointer): void{.importc: "QInputDialog_virtualbase_resizeEvent".}
proc fcQInputDialog_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_resizeEvent".}
proc fQInputDialog_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QInputDialog_virtualbase_contextMenuEvent".}
proc fcQInputDialog_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_contextMenuEvent".}
proc fQInputDialog_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool{.importc: "QInputDialog_virtualbase_eventFilter".}
proc fcQInputDialog_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_eventFilter".}
proc fQInputDialog_virtualbase_devType(self: pointer, ): cint{.importc: "QInputDialog_virtualbase_devType".}
proc fcQInputDialog_override_virtual_devType(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_devType".}
proc fQInputDialog_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QInputDialog_virtualbase_heightForWidth".}
proc fcQInputDialog_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_heightForWidth".}
proc fQInputDialog_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QInputDialog_virtualbase_hasHeightForWidth".}
proc fcQInputDialog_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_hasHeightForWidth".}
proc fQInputDialog_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QInputDialog_virtualbase_paintEngine".}
proc fcQInputDialog_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_paintEngine".}
proc fQInputDialog_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QInputDialog_virtualbase_event".}
proc fcQInputDialog_override_virtual_event(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_event".}
proc fQInputDialog_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QInputDialog_virtualbase_mousePressEvent".}
proc fcQInputDialog_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_mousePressEvent".}
proc fQInputDialog_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QInputDialog_virtualbase_mouseReleaseEvent".}
proc fcQInputDialog_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_mouseReleaseEvent".}
proc fQInputDialog_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QInputDialog_virtualbase_mouseDoubleClickEvent".}
proc fcQInputDialog_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_mouseDoubleClickEvent".}
proc fQInputDialog_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QInputDialog_virtualbase_mouseMoveEvent".}
proc fcQInputDialog_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_mouseMoveEvent".}
proc fQInputDialog_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QInputDialog_virtualbase_wheelEvent".}
proc fcQInputDialog_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_wheelEvent".}
proc fQInputDialog_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QInputDialog_virtualbase_keyReleaseEvent".}
proc fcQInputDialog_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_keyReleaseEvent".}
proc fQInputDialog_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QInputDialog_virtualbase_focusInEvent".}
proc fcQInputDialog_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_focusInEvent".}
proc fQInputDialog_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QInputDialog_virtualbase_focusOutEvent".}
proc fcQInputDialog_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_focusOutEvent".}
proc fQInputDialog_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QInputDialog_virtualbase_enterEvent".}
proc fcQInputDialog_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_enterEvent".}
proc fQInputDialog_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QInputDialog_virtualbase_leaveEvent".}
proc fcQInputDialog_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_leaveEvent".}
proc fQInputDialog_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QInputDialog_virtualbase_paintEvent".}
proc fcQInputDialog_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_paintEvent".}
proc fQInputDialog_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QInputDialog_virtualbase_moveEvent".}
proc fcQInputDialog_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_moveEvent".}
proc fQInputDialog_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QInputDialog_virtualbase_tabletEvent".}
proc fcQInputDialog_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_tabletEvent".}
proc fQInputDialog_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QInputDialog_virtualbase_actionEvent".}
proc fcQInputDialog_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_actionEvent".}
proc fQInputDialog_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QInputDialog_virtualbase_dragEnterEvent".}
proc fcQInputDialog_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_dragEnterEvent".}
proc fQInputDialog_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QInputDialog_virtualbase_dragMoveEvent".}
proc fcQInputDialog_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_dragMoveEvent".}
proc fQInputDialog_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QInputDialog_virtualbase_dragLeaveEvent".}
proc fcQInputDialog_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_dragLeaveEvent".}
proc fQInputDialog_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QInputDialog_virtualbase_dropEvent".}
proc fcQInputDialog_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_dropEvent".}
proc fQInputDialog_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QInputDialog_virtualbase_hideEvent".}
proc fcQInputDialog_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_hideEvent".}
proc fQInputDialog_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QInputDialog_virtualbase_nativeEvent".}
proc fcQInputDialog_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_nativeEvent".}
proc fQInputDialog_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QInputDialog_virtualbase_changeEvent".}
proc fcQInputDialog_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_changeEvent".}
proc fQInputDialog_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QInputDialog_virtualbase_metric".}
proc fcQInputDialog_override_virtual_metric(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_metric".}
proc fQInputDialog_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QInputDialog_virtualbase_initPainter".}
proc fcQInputDialog_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_initPainter".}
proc fQInputDialog_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QInputDialog_virtualbase_redirected".}
proc fcQInputDialog_override_virtual_redirected(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_redirected".}
proc fQInputDialog_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QInputDialog_virtualbase_sharedPainter".}
proc fcQInputDialog_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_sharedPainter".}
proc fQInputDialog_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QInputDialog_virtualbase_inputMethodEvent".}
proc fcQInputDialog_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_inputMethodEvent".}
proc fQInputDialog_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QInputDialog_virtualbase_inputMethodQuery".}
proc fcQInputDialog_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_inputMethodQuery".}
proc fQInputDialog_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QInputDialog_virtualbase_focusNextPrevChild".}
proc fcQInputDialog_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_focusNextPrevChild".}
proc fQInputDialog_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QInputDialog_virtualbase_timerEvent".}
proc fcQInputDialog_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_timerEvent".}
proc fQInputDialog_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QInputDialog_virtualbase_childEvent".}
proc fcQInputDialog_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_childEvent".}
proc fQInputDialog_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QInputDialog_virtualbase_customEvent".}
proc fcQInputDialog_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_customEvent".}
proc fQInputDialog_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QInputDialog_virtualbase_connectNotify".}
proc fcQInputDialog_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_connectNotify".}
proc fQInputDialog_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QInputDialog_virtualbase_disconnectNotify".}
proc fcQInputDialog_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_disconnectNotify".}
proc fcQInputDialog_staticMetaObject(): pointer {.importc: "QInputDialog_staticMetaObject".}
proc fcQInputDialog_delete(self: pointer) {.importc: "QInputDialog_delete".}


func init*(T: type QInputDialog, h: ptr cQInputDialog): QInputDialog =
  T(h: h)
proc create*(T: type QInputDialog, parent: gen_qwidget.QWidget): QInputDialog =

  QInputDialog.init(fcQInputDialog_new(parent.h))
proc create*(T: type QInputDialog, ): QInputDialog =

  QInputDialog.init(fcQInputDialog_new2())
proc create*(T: type QInputDialog, parent: gen_qwidget.QWidget, flags: gen_qnamespace.WindowType): QInputDialog =

  QInputDialog.init(fcQInputDialog_new3(parent.h, cint(flags)))
proc metaObject*(self: QInputDialog, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQInputDialog_metaObject(self.h))

proc metacast*(self: QInputDialog, param1: cstring): pointer =

  fcQInputDialog_metacast(self.h, param1)

proc metacall*(self: QInputDialog, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQInputDialog_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QInputDialog, s: cstring): string =

  let v_ms = fcQInputDialog_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QInputDialog, s: cstring): string =

  let v_ms = fcQInputDialog_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setInputMode*(self: QInputDialog, mode: QInputDialogInputMode): void =

  fcQInputDialog_setInputMode(self.h, cint(mode))

proc inputMode*(self: QInputDialog, ): QInputDialogInputMode =

  QInputDialogInputMode(fcQInputDialog_inputMode(self.h))

proc setLabelText*(self: QInputDialog, text: string): void =

  fcQInputDialog_setLabelText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc labelText*(self: QInputDialog, ): string =

  let v_ms = fcQInputDialog_labelText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setOption*(self: QInputDialog, option: QInputDialogInputDialogOption): void =

  fcQInputDialog_setOption(self.h, cint(option))

proc testOption*(self: QInputDialog, option: QInputDialogInputDialogOption): bool =

  fcQInputDialog_testOption(self.h, cint(option))

proc setOptions*(self: QInputDialog, options: QInputDialogInputDialogOption): void =

  fcQInputDialog_setOptions(self.h, cint(options))

proc options*(self: QInputDialog, ): QInputDialogInputDialogOption =

  QInputDialogInputDialogOption(fcQInputDialog_options(self.h))

proc setTextValue*(self: QInputDialog, text: string): void =

  fcQInputDialog_setTextValue(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc textValue*(self: QInputDialog, ): string =

  let v_ms = fcQInputDialog_textValue(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setTextEchoMode*(self: QInputDialog, mode: gen_qlineedit.QLineEditEchoMode): void =

  fcQInputDialog_setTextEchoMode(self.h, cint(mode))

proc textEchoMode*(self: QInputDialog, ): gen_qlineedit.QLineEditEchoMode =

  gen_qlineedit.QLineEditEchoMode(fcQInputDialog_textEchoMode(self.h))

proc setComboBoxEditable*(self: QInputDialog, editable: bool): void =

  fcQInputDialog_setComboBoxEditable(self.h, editable)

proc isComboBoxEditable*(self: QInputDialog, ): bool =

  fcQInputDialog_isComboBoxEditable(self.h)

proc setComboBoxItems*(self: QInputDialog, items: seq[string]): void =

  var items_CArray = newSeq[struct_miqt_string](len(items))
  for i in 0..<len(items):
    items_CArray[i] = struct_miqt_string(data: items[i], len: csize_t(len(items[i])))

  fcQInputDialog_setComboBoxItems(self.h, struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0])))

proc comboBoxItems*(self: QInputDialog, ): seq[string] =

  var v_ma = fcQInputDialog_comboBoxItems(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc setIntValue*(self: QInputDialog, value: cint): void =

  fcQInputDialog_setIntValue(self.h, value)

proc intValue*(self: QInputDialog, ): cint =

  fcQInputDialog_intValue(self.h)

proc setIntMinimum*(self: QInputDialog, min: cint): void =

  fcQInputDialog_setIntMinimum(self.h, min)

proc intMinimum*(self: QInputDialog, ): cint =

  fcQInputDialog_intMinimum(self.h)

proc setIntMaximum*(self: QInputDialog, max: cint): void =

  fcQInputDialog_setIntMaximum(self.h, max)

proc intMaximum*(self: QInputDialog, ): cint =

  fcQInputDialog_intMaximum(self.h)

proc setIntRange*(self: QInputDialog, min: cint, max: cint): void =

  fcQInputDialog_setIntRange(self.h, min, max)

proc setIntStep*(self: QInputDialog, step: cint): void =

  fcQInputDialog_setIntStep(self.h, step)

proc intStep*(self: QInputDialog, ): cint =

  fcQInputDialog_intStep(self.h)

proc setDoubleValue*(self: QInputDialog, value: float64): void =

  fcQInputDialog_setDoubleValue(self.h, value)

proc doubleValue*(self: QInputDialog, ): float64 =

  fcQInputDialog_doubleValue(self.h)

proc setDoubleMinimum*(self: QInputDialog, min: float64): void =

  fcQInputDialog_setDoubleMinimum(self.h, min)

proc doubleMinimum*(self: QInputDialog, ): float64 =

  fcQInputDialog_doubleMinimum(self.h)

proc setDoubleMaximum*(self: QInputDialog, max: float64): void =

  fcQInputDialog_setDoubleMaximum(self.h, max)

proc doubleMaximum*(self: QInputDialog, ): float64 =

  fcQInputDialog_doubleMaximum(self.h)

proc setDoubleRange*(self: QInputDialog, min: float64, max: float64): void =

  fcQInputDialog_setDoubleRange(self.h, min, max)

proc setDoubleDecimals*(self: QInputDialog, decimals: cint): void =

  fcQInputDialog_setDoubleDecimals(self.h, decimals)

proc doubleDecimals*(self: QInputDialog, ): cint =

  fcQInputDialog_doubleDecimals(self.h)

proc setOkButtonText*(self: QInputDialog, text: string): void =

  fcQInputDialog_setOkButtonText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc okButtonText*(self: QInputDialog, ): string =

  let v_ms = fcQInputDialog_okButtonText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setCancelButtonText*(self: QInputDialog, text: string): void =

  fcQInputDialog_setCancelButtonText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc cancelButtonText*(self: QInputDialog, ): string =

  let v_ms = fcQInputDialog_cancelButtonText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc minimumSizeHint*(self: QInputDialog, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQInputDialog_minimumSizeHint(self.h))

proc sizeHint*(self: QInputDialog, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQInputDialog_sizeHint(self.h))

proc setVisible*(self: QInputDialog, visible: bool): void =

  fcQInputDialog_setVisible(self.h, visible)

proc getText*(_: type QInputDialog, parent: gen_qwidget.QWidget, title: string, label: string): string =

  let v_ms = fcQInputDialog_getText(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getMultiLineText*(_: type QInputDialog, parent: gen_qwidget.QWidget, title: string, label: string): string =

  let v_ms = fcQInputDialog_getMultiLineText(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getItem*(_: type QInputDialog, parent: gen_qwidget.QWidget, title: string, label: string, items: seq[string]): string =

  var items_CArray = newSeq[struct_miqt_string](len(items))
  for i in 0..<len(items):
    items_CArray[i] = struct_miqt_string(data: items[i], len: csize_t(len(items[i])))

  let v_ms = fcQInputDialog_getItem(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))), struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0])))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getInt*(_: type QInputDialog, parent: gen_qwidget.QWidget, title: string, label: string): cint =

  fcQInputDialog_getInt(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))))

proc getDouble*(_: type QInputDialog, parent: gen_qwidget.QWidget, title: string, label: string): float64 =

  fcQInputDialog_getDouble(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))))

proc getDouble2*(_: type QInputDialog, parent: gen_qwidget.QWidget, title: string, label: string, value: float64, minValue: float64, maxValue: float64, decimals: cint, ok: ptr bool, flags: gen_qnamespace.WindowType, step: float64): float64 =

  fcQInputDialog_getDouble2(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))), value, minValue, maxValue, decimals, ok, cint(flags), step)

proc setDoubleStep*(self: QInputDialog, step: float64): void =

  fcQInputDialog_setDoubleStep(self.h, step)

proc doubleStep*(self: QInputDialog, ): float64 =

  fcQInputDialog_doubleStep(self.h)

proc textValueChanged*(self: QInputDialog, text: string): void =

  fcQInputDialog_textValueChanged(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc miqt_exec_callback_QInputDialog_textValueChanged(slot: int, text: struct_miqt_string) {.exportc.} =
  type Cb = proc(text: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret


  nimfunc[](slotval1)

proc ontextValueChanged*(self: QInputDialog, slot: proc(text: string)) =
  type Cb = proc(text: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQInputDialog_connect_textValueChanged(self.h, cast[int](addr tmp[]))
proc textValueSelected*(self: QInputDialog, text: string): void =

  fcQInputDialog_textValueSelected(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc miqt_exec_callback_QInputDialog_textValueSelected(slot: int, text: struct_miqt_string) {.exportc.} =
  type Cb = proc(text: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret


  nimfunc[](slotval1)

proc ontextValueSelected*(self: QInputDialog, slot: proc(text: string)) =
  type Cb = proc(text: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQInputDialog_connect_textValueSelected(self.h, cast[int](addr tmp[]))
proc intValueChanged*(self: QInputDialog, value: cint): void =

  fcQInputDialog_intValueChanged(self.h, value)

proc miqt_exec_callback_QInputDialog_intValueChanged(slot: int, value: cint) {.exportc.} =
  type Cb = proc(value: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = value


  nimfunc[](slotval1)

proc onintValueChanged*(self: QInputDialog, slot: proc(value: cint)) =
  type Cb = proc(value: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQInputDialog_connect_intValueChanged(self.h, cast[int](addr tmp[]))
proc intValueSelected*(self: QInputDialog, value: cint): void =

  fcQInputDialog_intValueSelected(self.h, value)

proc miqt_exec_callback_QInputDialog_intValueSelected(slot: int, value: cint) {.exportc.} =
  type Cb = proc(value: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = value


  nimfunc[](slotval1)

proc onintValueSelected*(self: QInputDialog, slot: proc(value: cint)) =
  type Cb = proc(value: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQInputDialog_connect_intValueSelected(self.h, cast[int](addr tmp[]))
proc doubleValueChanged*(self: QInputDialog, value: float64): void =

  fcQInputDialog_doubleValueChanged(self.h, value)

proc miqt_exec_callback_QInputDialog_doubleValueChanged(slot: int, value: float64) {.exportc.} =
  type Cb = proc(value: float64)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = value


  nimfunc[](slotval1)

proc ondoubleValueChanged*(self: QInputDialog, slot: proc(value: float64)) =
  type Cb = proc(value: float64)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQInputDialog_connect_doubleValueChanged(self.h, cast[int](addr tmp[]))
proc doubleValueSelected*(self: QInputDialog, value: float64): void =

  fcQInputDialog_doubleValueSelected(self.h, value)

proc miqt_exec_callback_QInputDialog_doubleValueSelected(slot: int, value: float64) {.exportc.} =
  type Cb = proc(value: float64)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = value


  nimfunc[](slotval1)

proc ondoubleValueSelected*(self: QInputDialog, slot: proc(value: float64)) =
  type Cb = proc(value: float64)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQInputDialog_connect_doubleValueSelected(self.h, cast[int](addr tmp[]))
proc done*(self: QInputDialog, resultVal: cint): void =

  fcQInputDialog_done(self.h, resultVal)

proc tr2*(_: type QInputDialog, s: cstring, c: cstring): string =

  let v_ms = fcQInputDialog_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QInputDialog, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQInputDialog_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QInputDialog, s: cstring, c: cstring): string =

  let v_ms = fcQInputDialog_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QInputDialog, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQInputDialog_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setOption2*(self: QInputDialog, option: QInputDialogInputDialogOption, on: bool): void =

  fcQInputDialog_setOption2(self.h, cint(option), on)

proc getText4*(_: type QInputDialog, parent: gen_qwidget.QWidget, title: string, label: string, echo: gen_qlineedit.QLineEditEchoMode): string =

  let v_ms = fcQInputDialog_getText4(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))), cint(echo))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getText5*(_: type QInputDialog, parent: gen_qwidget.QWidget, title: string, label: string, echo: gen_qlineedit.QLineEditEchoMode, text: string): string =

  let v_ms = fcQInputDialog_getText5(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))), cint(echo), struct_miqt_string(data: text, len: csize_t(len(text))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getText6*(_: type QInputDialog, parent: gen_qwidget.QWidget, title: string, label: string, echo: gen_qlineedit.QLineEditEchoMode, text: string, ok: ptr bool): string =

  let v_ms = fcQInputDialog_getText6(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))), cint(echo), struct_miqt_string(data: text, len: csize_t(len(text))), ok)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getText7*(_: type QInputDialog, parent: gen_qwidget.QWidget, title: string, label: string, echo: gen_qlineedit.QLineEditEchoMode, text: string, ok: ptr bool, flags: gen_qnamespace.WindowType): string =

  let v_ms = fcQInputDialog_getText7(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))), cint(echo), struct_miqt_string(data: text, len: csize_t(len(text))), ok, cint(flags))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getText8*(_: type QInputDialog, parent: gen_qwidget.QWidget, title: string, label: string, echo: gen_qlineedit.QLineEditEchoMode, text: string, ok: ptr bool, flags: gen_qnamespace.WindowType, inputMethodHints: gen_qnamespace.InputMethodHint): string =

  let v_ms = fcQInputDialog_getText8(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))), cint(echo), struct_miqt_string(data: text, len: csize_t(len(text))), ok, cint(flags), cint(inputMethodHints))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getMultiLineText4*(_: type QInputDialog, parent: gen_qwidget.QWidget, title: string, label: string, text: string): string =

  let v_ms = fcQInputDialog_getMultiLineText4(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))), struct_miqt_string(data: text, len: csize_t(len(text))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getMultiLineText5*(_: type QInputDialog, parent: gen_qwidget.QWidget, title: string, label: string, text: string, ok: ptr bool): string =

  let v_ms = fcQInputDialog_getMultiLineText5(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))), struct_miqt_string(data: text, len: csize_t(len(text))), ok)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getMultiLineText6*(_: type QInputDialog, parent: gen_qwidget.QWidget, title: string, label: string, text: string, ok: ptr bool, flags: gen_qnamespace.WindowType): string =

  let v_ms = fcQInputDialog_getMultiLineText6(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))), struct_miqt_string(data: text, len: csize_t(len(text))), ok, cint(flags))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getMultiLineText7*(_: type QInputDialog, parent: gen_qwidget.QWidget, title: string, label: string, text: string, ok: ptr bool, flags: gen_qnamespace.WindowType, inputMethodHints: gen_qnamespace.InputMethodHint): string =

  let v_ms = fcQInputDialog_getMultiLineText7(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))), struct_miqt_string(data: text, len: csize_t(len(text))), ok, cint(flags), cint(inputMethodHints))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getItem5*(_: type QInputDialog, parent: gen_qwidget.QWidget, title: string, label: string, items: seq[string], current: cint): string =

  var items_CArray = newSeq[struct_miqt_string](len(items))
  for i in 0..<len(items):
    items_CArray[i] = struct_miqt_string(data: items[i], len: csize_t(len(items[i])))

  let v_ms = fcQInputDialog_getItem5(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))), struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0])), current)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getItem6*(_: type QInputDialog, parent: gen_qwidget.QWidget, title: string, label: string, items: seq[string], current: cint, editable: bool): string =

  var items_CArray = newSeq[struct_miqt_string](len(items))
  for i in 0..<len(items):
    items_CArray[i] = struct_miqt_string(data: items[i], len: csize_t(len(items[i])))

  let v_ms = fcQInputDialog_getItem6(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))), struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0])), current, editable)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getItem7*(_: type QInputDialog, parent: gen_qwidget.QWidget, title: string, label: string, items: seq[string], current: cint, editable: bool, ok: ptr bool): string =

  var items_CArray = newSeq[struct_miqt_string](len(items))
  for i in 0..<len(items):
    items_CArray[i] = struct_miqt_string(data: items[i], len: csize_t(len(items[i])))

  let v_ms = fcQInputDialog_getItem7(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))), struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0])), current, editable, ok)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getItem8*(_: type QInputDialog, parent: gen_qwidget.QWidget, title: string, label: string, items: seq[string], current: cint, editable: bool, ok: ptr bool, flags: gen_qnamespace.WindowType): string =

  var items_CArray = newSeq[struct_miqt_string](len(items))
  for i in 0..<len(items):
    items_CArray[i] = struct_miqt_string(data: items[i], len: csize_t(len(items[i])))

  let v_ms = fcQInputDialog_getItem8(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))), struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0])), current, editable, ok, cint(flags))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getItem9*(_: type QInputDialog, parent: gen_qwidget.QWidget, title: string, label: string, items: seq[string], current: cint, editable: bool, ok: ptr bool, flags: gen_qnamespace.WindowType, inputMethodHints: gen_qnamespace.InputMethodHint): string =

  var items_CArray = newSeq[struct_miqt_string](len(items))
  for i in 0..<len(items):
    items_CArray[i] = struct_miqt_string(data: items[i], len: csize_t(len(items[i])))

  let v_ms = fcQInputDialog_getItem9(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))), struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0])), current, editable, ok, cint(flags), cint(inputMethodHints))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getInt4*(_: type QInputDialog, parent: gen_qwidget.QWidget, title: string, label: string, value: cint): cint =

  fcQInputDialog_getInt4(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))), value)

proc getInt5*(_: type QInputDialog, parent: gen_qwidget.QWidget, title: string, label: string, value: cint, minValue: cint): cint =

  fcQInputDialog_getInt5(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))), value, minValue)

proc getInt6*(_: type QInputDialog, parent: gen_qwidget.QWidget, title: string, label: string, value: cint, minValue: cint, maxValue: cint): cint =

  fcQInputDialog_getInt6(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))), value, minValue, maxValue)

proc getInt7*(_: type QInputDialog, parent: gen_qwidget.QWidget, title: string, label: string, value: cint, minValue: cint, maxValue: cint, step: cint): cint =

  fcQInputDialog_getInt7(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))), value, minValue, maxValue, step)

proc getInt8*(_: type QInputDialog, parent: gen_qwidget.QWidget, title: string, label: string, value: cint, minValue: cint, maxValue: cint, step: cint, ok: ptr bool): cint =

  fcQInputDialog_getInt8(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))), value, minValue, maxValue, step, ok)

proc getInt9*(_: type QInputDialog, parent: gen_qwidget.QWidget, title: string, label: string, value: cint, minValue: cint, maxValue: cint, step: cint, ok: ptr bool, flags: gen_qnamespace.WindowType): cint =

  fcQInputDialog_getInt9(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))), value, minValue, maxValue, step, ok, cint(flags))

proc getDouble4*(_: type QInputDialog, parent: gen_qwidget.QWidget, title: string, label: string, value: float64): float64 =

  fcQInputDialog_getDouble4(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))), value)

proc getDouble5*(_: type QInputDialog, parent: gen_qwidget.QWidget, title: string, label: string, value: float64, minValue: float64): float64 =

  fcQInputDialog_getDouble5(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))), value, minValue)

proc getDouble6*(_: type QInputDialog, parent: gen_qwidget.QWidget, title: string, label: string, value: float64, minValue: float64, maxValue: float64): float64 =

  fcQInputDialog_getDouble6(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))), value, minValue, maxValue)

proc getDouble7*(_: type QInputDialog, parent: gen_qwidget.QWidget, title: string, label: string, value: float64, minValue: float64, maxValue: float64, decimals: cint): float64 =

  fcQInputDialog_getDouble7(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))), value, minValue, maxValue, decimals)

proc getDouble8*(_: type QInputDialog, parent: gen_qwidget.QWidget, title: string, label: string, value: float64, minValue: float64, maxValue: float64, decimals: cint, ok: ptr bool): float64 =

  fcQInputDialog_getDouble8(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))), value, minValue, maxValue, decimals, ok)

proc getDouble9*(_: type QInputDialog, parent: gen_qwidget.QWidget, title: string, label: string, value: float64, minValue: float64, maxValue: float64, decimals: cint, ok: ptr bool, flags: gen_qnamespace.WindowType): float64 =

  fcQInputDialog_getDouble9(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))), value, minValue, maxValue, decimals, ok, cint(flags))

proc callVirtualBase_metaObject(self: QInputDialog, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQInputDialog_virtualbase_metaObject(self.h))

type QInputDialogmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QInputDialog, slot: proc(super: QInputDialogmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QInputDialogmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_metaObject(self: ptr cQInputDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QInputDialog_metaObject ".} =
  type Cb = proc(super: QInputDialogmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QInputDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QInputDialog, param1: cstring): pointer =


  fQInputDialog_virtualbase_metacast(self.h, param1)

type QInputDialogmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QInputDialog, slot: proc(super: QInputDialogmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QInputDialogmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_metacast(self: ptr cQInputDialog, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QInputDialog_metacast ".} =
  type Cb = proc(super: QInputDialogmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QInputDialog(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QInputDialog, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQInputDialog_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QInputDialogmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QInputDialog, slot: proc(super: QInputDialogmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QInputDialogmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_metacall(self: ptr cQInputDialog, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QInputDialog_metacall ".} =
  type Cb = proc(super: QInputDialogmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QInputDialog(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_minimumSizeHint(self: QInputDialog, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQInputDialog_virtualbase_minimumSizeHint(self.h))

type QInputDialogminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QInputDialog, slot: proc(super: QInputDialogminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QInputDialogminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_minimumSizeHint(self: ptr cQInputDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QInputDialog_minimumSizeHint ".} =
  type Cb = proc(super: QInputDialogminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QInputDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_sizeHint(self: QInputDialog, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQInputDialog_virtualbase_sizeHint(self.h))

type QInputDialogsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QInputDialog, slot: proc(super: QInputDialogsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QInputDialogsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_sizeHint(self: ptr cQInputDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QInputDialog_sizeHint ".} =
  type Cb = proc(super: QInputDialogsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QInputDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setVisible(self: QInputDialog, visible: bool): void =


  fQInputDialog_virtualbase_setVisible(self.h, visible)

type QInputDialogsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QInputDialog, slot: proc(super: QInputDialogsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QInputDialogsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_setVisible(self: ptr cQInputDialog, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QInputDialog_setVisible ".} =
  type Cb = proc(super: QInputDialogsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QInputDialog(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_done(self: QInputDialog, resultVal: cint): void =


  fQInputDialog_virtualbase_done(self.h, resultVal)

type QInputDialogdoneBase* = proc(resultVal: cint): void
proc ondone*(self: QInputDialog, slot: proc(super: QInputDialogdoneBase, resultVal: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QInputDialogdoneBase, resultVal: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_done(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_done(self: ptr cQInputDialog, slot: int, resultVal: cint): void {.exportc: "miqt_exec_callback_QInputDialog_done ".} =
  type Cb = proc(super: QInputDialogdoneBase, resultVal: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(resultVal: cint): auto =
    callVirtualBase_done(QInputDialog(h: self), resultVal)
  let slotval1 = resultVal


  nimfunc[](superCall, slotval1)
proc callVirtualBase_open(self: QInputDialog, ): void =


  fQInputDialog_virtualbase_open(self.h)

type QInputDialogopenBase* = proc(): void
proc onopen*(self: QInputDialog, slot: proc(super: QInputDialogopenBase): void) =
  # TODO check subclass
  type Cb = proc(super: QInputDialogopenBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_open(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_open(self: ptr cQInputDialog, slot: int): void {.exportc: "miqt_exec_callback_QInputDialog_open ".} =
  type Cb = proc(super: QInputDialogopenBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_open(QInputDialog(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_exec(self: QInputDialog, ): cint =


  fQInputDialog_virtualbase_exec(self.h)

type QInputDialogexecBase* = proc(): cint
proc onexec*(self: QInputDialog, slot: proc(super: QInputDialogexecBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QInputDialogexecBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_exec(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_exec(self: ptr cQInputDialog, slot: int): cint {.exportc: "miqt_exec_callback_QInputDialog_exec ".} =
  type Cb = proc(super: QInputDialogexecBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_exec(QInputDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_accept(self: QInputDialog, ): void =


  fQInputDialog_virtualbase_accept(self.h)

type QInputDialogacceptBase* = proc(): void
proc onaccept*(self: QInputDialog, slot: proc(super: QInputDialogacceptBase): void) =
  # TODO check subclass
  type Cb = proc(super: QInputDialogacceptBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_accept(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_accept(self: ptr cQInputDialog, slot: int): void {.exportc: "miqt_exec_callback_QInputDialog_accept ".} =
  type Cb = proc(super: QInputDialogacceptBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_accept(QInputDialog(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_reject(self: QInputDialog, ): void =


  fQInputDialog_virtualbase_reject(self.h)

type QInputDialogrejectBase* = proc(): void
proc onreject*(self: QInputDialog, slot: proc(super: QInputDialogrejectBase): void) =
  # TODO check subclass
  type Cb = proc(super: QInputDialogrejectBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_reject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_reject(self: ptr cQInputDialog, slot: int): void {.exportc: "miqt_exec_callback_QInputDialog_reject ".} =
  type Cb = proc(super: QInputDialogrejectBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_reject(QInputDialog(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_keyPressEvent(self: QInputDialog, param1: gen_qevent.QKeyEvent): void =


  fQInputDialog_virtualbase_keyPressEvent(self.h, param1.h)

type QInputDialogkeyPressEventBase* = proc(param1: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QInputDialog, slot: proc(super: QInputDialogkeyPressEventBase, param1: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QInputDialogkeyPressEventBase, param1: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_keyPressEvent(self: ptr cQInputDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_keyPressEvent ".} =
  type Cb = proc(super: QInputDialogkeyPressEventBase, param1: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QInputDialog(h: self), param1)
  let slotval1 = gen_qevent.QKeyEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QInputDialog, param1: gen_qevent.QCloseEvent): void =


  fQInputDialog_virtualbase_closeEvent(self.h, param1.h)

type QInputDialogcloseEventBase* = proc(param1: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QInputDialog, slot: proc(super: QInputDialogcloseEventBase, param1: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QInputDialogcloseEventBase, param1: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_closeEvent(self: ptr cQInputDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_closeEvent ".} =
  type Cb = proc(super: QInputDialogcloseEventBase, param1: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QInputDialog(h: self), param1)
  let slotval1 = gen_qevent.QCloseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QInputDialog, param1: gen_qevent.QShowEvent): void =


  fQInputDialog_virtualbase_showEvent(self.h, param1.h)

type QInputDialogshowEventBase* = proc(param1: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QInputDialog, slot: proc(super: QInputDialogshowEventBase, param1: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QInputDialogshowEventBase, param1: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_showEvent(self: ptr cQInputDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_showEvent ".} =
  type Cb = proc(super: QInputDialogshowEventBase, param1: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QInputDialog(h: self), param1)
  let slotval1 = gen_qevent.QShowEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QInputDialog, param1: gen_qevent.QResizeEvent): void =


  fQInputDialog_virtualbase_resizeEvent(self.h, param1.h)

type QInputDialogresizeEventBase* = proc(param1: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QInputDialog, slot: proc(super: QInputDialogresizeEventBase, param1: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QInputDialogresizeEventBase, param1: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_resizeEvent(self: ptr cQInputDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_resizeEvent ".} =
  type Cb = proc(super: QInputDialogresizeEventBase, param1: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QInputDialog(h: self), param1)
  let slotval1 = gen_qevent.QResizeEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QInputDialog, param1: gen_qevent.QContextMenuEvent): void =


  fQInputDialog_virtualbase_contextMenuEvent(self.h, param1.h)

type QInputDialogcontextMenuEventBase* = proc(param1: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QInputDialog, slot: proc(super: QInputDialogcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QInputDialogcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_contextMenuEvent(self: ptr cQInputDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_contextMenuEvent ".} =
  type Cb = proc(super: QInputDialogcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QInputDialog(h: self), param1)
  let slotval1 = gen_qevent.QContextMenuEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_eventFilter(self: QInputDialog, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool =


  fQInputDialog_virtualbase_eventFilter(self.h, param1.h, param2.h)

type QInputDialogeventFilterBase* = proc(param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QInputDialog, slot: proc(super: QInputDialogeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QInputDialogeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_eventFilter(self: ptr cQInputDialog, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_QInputDialog_eventFilter ".} =
  type Cb = proc(super: QInputDialogeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QInputDialog(h: self), param1, param2)
  let slotval1 = gen_qobject.QObject(h: param1)

  let slotval2 = gen_qcoreevent.QEvent(h: param2)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_devType(self: QInputDialog, ): cint =


  fQInputDialog_virtualbase_devType(self.h)

type QInputDialogdevTypeBase* = proc(): cint
proc ondevType*(self: QInputDialog, slot: proc(super: QInputDialogdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QInputDialogdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_devType(self: ptr cQInputDialog, slot: int): cint {.exportc: "miqt_exec_callback_QInputDialog_devType ".} =
  type Cb = proc(super: QInputDialogdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QInputDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_heightForWidth(self: QInputDialog, param1: cint): cint =


  fQInputDialog_virtualbase_heightForWidth(self.h, param1)

type QInputDialogheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QInputDialog, slot: proc(super: QInputDialogheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QInputDialogheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_heightForWidth(self: ptr cQInputDialog, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QInputDialog_heightForWidth ".} =
  type Cb = proc(super: QInputDialogheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QInputDialog(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QInputDialog, ): bool =


  fQInputDialog_virtualbase_hasHeightForWidth(self.h)

type QInputDialoghasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QInputDialog, slot: proc(super: QInputDialoghasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QInputDialoghasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_hasHeightForWidth(self: ptr cQInputDialog, slot: int): bool {.exportc: "miqt_exec_callback_QInputDialog_hasHeightForWidth ".} =
  type Cb = proc(super: QInputDialoghasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QInputDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QInputDialog, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQInputDialog_virtualbase_paintEngine(self.h))

type QInputDialogpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QInputDialog, slot: proc(super: QInputDialogpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QInputDialogpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_paintEngine(self: ptr cQInputDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QInputDialog_paintEngine ".} =
  type Cb = proc(super: QInputDialogpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QInputDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_event(self: QInputDialog, event: gen_qcoreevent.QEvent): bool =


  fQInputDialog_virtualbase_event(self.h, event.h)

type QInputDialogeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QInputDialog, slot: proc(super: QInputDialogeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QInputDialogeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_event(self: ptr cQInputDialog, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QInputDialog_event ".} =
  type Cb = proc(super: QInputDialogeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QInputDialog(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_mousePressEvent(self: QInputDialog, event: gen_qevent.QMouseEvent): void =


  fQInputDialog_virtualbase_mousePressEvent(self.h, event.h)

type QInputDialogmousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QInputDialog, slot: proc(super: QInputDialogmousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QInputDialogmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_mousePressEvent(self: ptr cQInputDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_mousePressEvent ".} =
  type Cb = proc(super: QInputDialogmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QInputDialog(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QInputDialog, event: gen_qevent.QMouseEvent): void =


  fQInputDialog_virtualbase_mouseReleaseEvent(self.h, event.h)

type QInputDialogmouseReleaseEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QInputDialog, slot: proc(super: QInputDialogmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QInputDialogmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_mouseReleaseEvent(self: ptr cQInputDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_mouseReleaseEvent ".} =
  type Cb = proc(super: QInputDialogmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QInputDialog(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QInputDialog, event: gen_qevent.QMouseEvent): void =


  fQInputDialog_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QInputDialogmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QInputDialog, slot: proc(super: QInputDialogmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QInputDialogmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_mouseDoubleClickEvent(self: ptr cQInputDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QInputDialogmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QInputDialog(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QInputDialog, event: gen_qevent.QMouseEvent): void =


  fQInputDialog_virtualbase_mouseMoveEvent(self.h, event.h)

type QInputDialogmouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QInputDialog, slot: proc(super: QInputDialogmouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QInputDialogmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_mouseMoveEvent(self: ptr cQInputDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_mouseMoveEvent ".} =
  type Cb = proc(super: QInputDialogmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QInputDialog(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QInputDialog, event: gen_qevent.QWheelEvent): void =


  fQInputDialog_virtualbase_wheelEvent(self.h, event.h)

type QInputDialogwheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QInputDialog, slot: proc(super: QInputDialogwheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QInputDialogwheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_wheelEvent(self: ptr cQInputDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_wheelEvent ".} =
  type Cb = proc(super: QInputDialogwheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QInputDialog(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QInputDialog, event: gen_qevent.QKeyEvent): void =


  fQInputDialog_virtualbase_keyReleaseEvent(self.h, event.h)

type QInputDialogkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QInputDialog, slot: proc(super: QInputDialogkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QInputDialogkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_keyReleaseEvent(self: ptr cQInputDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_keyReleaseEvent ".} =
  type Cb = proc(super: QInputDialogkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QInputDialog(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QInputDialog, event: gen_qevent.QFocusEvent): void =


  fQInputDialog_virtualbase_focusInEvent(self.h, event.h)

type QInputDialogfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QInputDialog, slot: proc(super: QInputDialogfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QInputDialogfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_focusInEvent(self: ptr cQInputDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_focusInEvent ".} =
  type Cb = proc(super: QInputDialogfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QInputDialog(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QInputDialog, event: gen_qevent.QFocusEvent): void =


  fQInputDialog_virtualbase_focusOutEvent(self.h, event.h)

type QInputDialogfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QInputDialog, slot: proc(super: QInputDialogfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QInputDialogfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_focusOutEvent(self: ptr cQInputDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_focusOutEvent ".} =
  type Cb = proc(super: QInputDialogfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QInputDialog(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QInputDialog, event: gen_qcoreevent.QEvent): void =


  fQInputDialog_virtualbase_enterEvent(self.h, event.h)

type QInputDialogenterEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onenterEvent*(self: QInputDialog, slot: proc(super: QInputDialogenterEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QInputDialogenterEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_enterEvent(self: ptr cQInputDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_enterEvent ".} =
  type Cb = proc(super: QInputDialogenterEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_enterEvent(QInputDialog(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QInputDialog, event: gen_qcoreevent.QEvent): void =


  fQInputDialog_virtualbase_leaveEvent(self.h, event.h)

type QInputDialogleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QInputDialog, slot: proc(super: QInputDialogleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QInputDialogleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_leaveEvent(self: ptr cQInputDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_leaveEvent ".} =
  type Cb = proc(super: QInputDialogleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QInputDialog(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QInputDialog, event: gen_qevent.QPaintEvent): void =


  fQInputDialog_virtualbase_paintEvent(self.h, event.h)

type QInputDialogpaintEventBase* = proc(event: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QInputDialog, slot: proc(super: QInputDialogpaintEventBase, event: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QInputDialogpaintEventBase, event: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_paintEvent(self: ptr cQInputDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_paintEvent ".} =
  type Cb = proc(super: QInputDialogpaintEventBase, event: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QInputDialog(h: self), event)
  let slotval1 = gen_qevent.QPaintEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QInputDialog, event: gen_qevent.QMoveEvent): void =


  fQInputDialog_virtualbase_moveEvent(self.h, event.h)

type QInputDialogmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QInputDialog, slot: proc(super: QInputDialogmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QInputDialogmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_moveEvent(self: ptr cQInputDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_moveEvent ".} =
  type Cb = proc(super: QInputDialogmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QInputDialog(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QInputDialog, event: gen_qevent.QTabletEvent): void =


  fQInputDialog_virtualbase_tabletEvent(self.h, event.h)

type QInputDialogtabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QInputDialog, slot: proc(super: QInputDialogtabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QInputDialogtabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_tabletEvent(self: ptr cQInputDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_tabletEvent ".} =
  type Cb = proc(super: QInputDialogtabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QInputDialog(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QInputDialog, event: gen_qevent.QActionEvent): void =


  fQInputDialog_virtualbase_actionEvent(self.h, event.h)

type QInputDialogactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QInputDialog, slot: proc(super: QInputDialogactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QInputDialogactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_actionEvent(self: ptr cQInputDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_actionEvent ".} =
  type Cb = proc(super: QInputDialogactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QInputDialog(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QInputDialog, event: gen_qevent.QDragEnterEvent): void =


  fQInputDialog_virtualbase_dragEnterEvent(self.h, event.h)

type QInputDialogdragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QInputDialog, slot: proc(super: QInputDialogdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QInputDialogdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_dragEnterEvent(self: ptr cQInputDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_dragEnterEvent ".} =
  type Cb = proc(super: QInputDialogdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QInputDialog(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QInputDialog, event: gen_qevent.QDragMoveEvent): void =


  fQInputDialog_virtualbase_dragMoveEvent(self.h, event.h)

type QInputDialogdragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QInputDialog, slot: proc(super: QInputDialogdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QInputDialogdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_dragMoveEvent(self: ptr cQInputDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_dragMoveEvent ".} =
  type Cb = proc(super: QInputDialogdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QInputDialog(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QInputDialog, event: gen_qevent.QDragLeaveEvent): void =


  fQInputDialog_virtualbase_dragLeaveEvent(self.h, event.h)

type QInputDialogdragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QInputDialog, slot: proc(super: QInputDialogdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QInputDialogdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_dragLeaveEvent(self: ptr cQInputDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_dragLeaveEvent ".} =
  type Cb = proc(super: QInputDialogdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QInputDialog(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QInputDialog, event: gen_qevent.QDropEvent): void =


  fQInputDialog_virtualbase_dropEvent(self.h, event.h)

type QInputDialogdropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QInputDialog, slot: proc(super: QInputDialogdropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QInputDialogdropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_dropEvent(self: ptr cQInputDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_dropEvent ".} =
  type Cb = proc(super: QInputDialogdropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QInputDialog(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QInputDialog, event: gen_qevent.QHideEvent): void =


  fQInputDialog_virtualbase_hideEvent(self.h, event.h)

type QInputDialoghideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QInputDialog, slot: proc(super: QInputDialoghideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QInputDialoghideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_hideEvent(self: ptr cQInputDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_hideEvent ".} =
  type Cb = proc(super: QInputDialoghideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QInputDialog(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QInputDialog, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =


  fQInputDialog_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QInputDialognativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: QInputDialog, slot: proc(super: QInputDialognativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool) =
  # TODO check subclass
  type Cb = proc(super: QInputDialognativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_nativeEvent(self: ptr cQInputDialog, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QInputDialog_nativeEvent ".} =
  type Cb = proc(super: QInputDialognativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr clong): auto =
    callVirtualBase_nativeEvent(QInputDialog(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_changeEvent(self: QInputDialog, param1: gen_qcoreevent.QEvent): void =


  fQInputDialog_virtualbase_changeEvent(self.h, param1.h)

type QInputDialogchangeEventBase* = proc(param1: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QInputDialog, slot: proc(super: QInputDialogchangeEventBase, param1: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QInputDialogchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_changeEvent(self: ptr cQInputDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_changeEvent ".} =
  type Cb = proc(super: QInputDialogchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QInputDialog(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_metric(self: QInputDialog, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQInputDialog_virtualbase_metric(self.h, cint(param1))

type QInputDialogmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QInputDialog, slot: proc(super: QInputDialogmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QInputDialogmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_metric(self: ptr cQInputDialog, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QInputDialog_metric ".} =
  type Cb = proc(super: QInputDialogmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QInputDialog(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QInputDialog, painter: gen_qpainter.QPainter): void =


  fQInputDialog_virtualbase_initPainter(self.h, painter.h)

type QInputDialoginitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QInputDialog, slot: proc(super: QInputDialoginitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QInputDialoginitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_initPainter(self: ptr cQInputDialog, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_initPainter ".} =
  type Cb = proc(super: QInputDialoginitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QInputDialog(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QInputDialog, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQInputDialog_virtualbase_redirected(self.h, offset.h))

type QInputDialogredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QInputDialog, slot: proc(super: QInputDialogredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QInputDialogredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_redirected(self: ptr cQInputDialog, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QInputDialog_redirected ".} =
  type Cb = proc(super: QInputDialogredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QInputDialog(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QInputDialog, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQInputDialog_virtualbase_sharedPainter(self.h))

type QInputDialogsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QInputDialog, slot: proc(super: QInputDialogsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QInputDialogsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_sharedPainter(self: ptr cQInputDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QInputDialog_sharedPainter ".} =
  type Cb = proc(super: QInputDialogsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QInputDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QInputDialog, param1: gen_qevent.QInputMethodEvent): void =


  fQInputDialog_virtualbase_inputMethodEvent(self.h, param1.h)

type QInputDialoginputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QInputDialog, slot: proc(super: QInputDialoginputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QInputDialoginputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_inputMethodEvent(self: ptr cQInputDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_inputMethodEvent ".} =
  type Cb = proc(super: QInputDialoginputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QInputDialog(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QInputDialog, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQInputDialog_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QInputDialoginputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QInputDialog, slot: proc(super: QInputDialoginputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QInputDialoginputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_inputMethodQuery(self: ptr cQInputDialog, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QInputDialog_inputMethodQuery ".} =
  type Cb = proc(super: QInputDialoginputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QInputDialog(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QInputDialog, next: bool): bool =


  fQInputDialog_virtualbase_focusNextPrevChild(self.h, next)

type QInputDialogfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QInputDialog, slot: proc(super: QInputDialogfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QInputDialogfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_focusNextPrevChild(self: ptr cQInputDialog, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QInputDialog_focusNextPrevChild ".} =
  type Cb = proc(super: QInputDialogfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QInputDialog(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QInputDialog, event: gen_qcoreevent.QTimerEvent): void =


  fQInputDialog_virtualbase_timerEvent(self.h, event.h)

type QInputDialogtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QInputDialog, slot: proc(super: QInputDialogtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QInputDialogtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_timerEvent(self: ptr cQInputDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_timerEvent ".} =
  type Cb = proc(super: QInputDialogtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QInputDialog(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QInputDialog, event: gen_qcoreevent.QChildEvent): void =


  fQInputDialog_virtualbase_childEvent(self.h, event.h)

type QInputDialogchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QInputDialog, slot: proc(super: QInputDialogchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QInputDialogchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_childEvent(self: ptr cQInputDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_childEvent ".} =
  type Cb = proc(super: QInputDialogchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QInputDialog(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QInputDialog, event: gen_qcoreevent.QEvent): void =


  fQInputDialog_virtualbase_customEvent(self.h, event.h)

type QInputDialogcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QInputDialog, slot: proc(super: QInputDialogcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QInputDialogcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_customEvent(self: ptr cQInputDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_customEvent ".} =
  type Cb = proc(super: QInputDialogcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QInputDialog(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QInputDialog, signal: gen_qmetaobject.QMetaMethod): void =


  fQInputDialog_virtualbase_connectNotify(self.h, signal.h)

type QInputDialogconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QInputDialog, slot: proc(super: QInputDialogconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QInputDialogconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_connectNotify(self: ptr cQInputDialog, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_connectNotify ".} =
  type Cb = proc(super: QInputDialogconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QInputDialog(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QInputDialog, signal: gen_qmetaobject.QMetaMethod): void =


  fQInputDialog_virtualbase_disconnectNotify(self.h, signal.h)

type QInputDialogdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QInputDialog, slot: proc(super: QInputDialogdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QInputDialogdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_disconnectNotify(self: ptr cQInputDialog, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_disconnectNotify ".} =
  type Cb = proc(super: QInputDialogdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QInputDialog(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QInputDialog): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQInputDialog_staticMetaObject())
proc delete*(self: QInputDialog) =
  fcQInputDialog_delete(self.h)
