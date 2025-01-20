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
{.compile("gen_qlineedit.cpp", cflags).}


type QLineEditActionPosition* = cint
const
  QLineEditLeadingPosition* = 0
  QLineEditTrailingPosition* = 1



type QLineEditEchoMode* = cint
const
  QLineEditNormal* = 0
  QLineEditNoEcho* = 1
  QLineEditPassword* = 2
  QLineEditPasswordEchoOnEdit* = 3



import gen_qlineedit_types
export gen_qlineedit_types

import
  gen_qaction,
  gen_qcompleter,
  gen_qcoreevent,
  gen_qevent,
  gen_qicon,
  gen_qmargins,
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
  gen_qvalidator,
  gen_qvariant,
  gen_qwidget
export
  gen_qaction,
  gen_qcompleter,
  gen_qcoreevent,
  gen_qevent,
  gen_qicon,
  gen_qmargins,
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
  gen_qvalidator,
  gen_qvariant,
  gen_qwidget

type cQLineEdit*{.exportc: "QLineEdit", incompleteStruct.} = object

proc fcQLineEdit_new(parent: pointer): ptr cQLineEdit {.importc: "QLineEdit_new".}
proc fcQLineEdit_new2(): ptr cQLineEdit {.importc: "QLineEdit_new2".}
proc fcQLineEdit_new3(param1: struct_miqt_string): ptr cQLineEdit {.importc: "QLineEdit_new3".}
proc fcQLineEdit_new4(param1: struct_miqt_string, parent: pointer): ptr cQLineEdit {.importc: "QLineEdit_new4".}
proc fcQLineEdit_metaObject(self: pointer, ): pointer {.importc: "QLineEdit_metaObject".}
proc fcQLineEdit_metacast(self: pointer, param1: cstring): pointer {.importc: "QLineEdit_metacast".}
proc fcQLineEdit_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QLineEdit_metacall".}
proc fcQLineEdit_tr(s: cstring): struct_miqt_string {.importc: "QLineEdit_tr".}
proc fcQLineEdit_text(self: pointer, ): struct_miqt_string {.importc: "QLineEdit_text".}
proc fcQLineEdit_displayText(self: pointer, ): struct_miqt_string {.importc: "QLineEdit_displayText".}
proc fcQLineEdit_placeholderText(self: pointer, ): struct_miqt_string {.importc: "QLineEdit_placeholderText".}
proc fcQLineEdit_setPlaceholderText(self: pointer, placeholderText: struct_miqt_string): void {.importc: "QLineEdit_setPlaceholderText".}
proc fcQLineEdit_maxLength(self: pointer, ): cint {.importc: "QLineEdit_maxLength".}
proc fcQLineEdit_setMaxLength(self: pointer, maxLength: cint): void {.importc: "QLineEdit_setMaxLength".}
proc fcQLineEdit_setFrame(self: pointer, frame: bool): void {.importc: "QLineEdit_setFrame".}
proc fcQLineEdit_hasFrame(self: pointer, ): bool {.importc: "QLineEdit_hasFrame".}
proc fcQLineEdit_setClearButtonEnabled(self: pointer, enable: bool): void {.importc: "QLineEdit_setClearButtonEnabled".}
proc fcQLineEdit_isClearButtonEnabled(self: pointer, ): bool {.importc: "QLineEdit_isClearButtonEnabled".}
proc fcQLineEdit_echoMode(self: pointer, ): cint {.importc: "QLineEdit_echoMode".}
proc fcQLineEdit_setEchoMode(self: pointer, echoMode: cint): void {.importc: "QLineEdit_setEchoMode".}
proc fcQLineEdit_isReadOnly(self: pointer, ): bool {.importc: "QLineEdit_isReadOnly".}
proc fcQLineEdit_setReadOnly(self: pointer, readOnly: bool): void {.importc: "QLineEdit_setReadOnly".}
proc fcQLineEdit_setValidator(self: pointer, validator: pointer): void {.importc: "QLineEdit_setValidator".}
proc fcQLineEdit_validator(self: pointer, ): pointer {.importc: "QLineEdit_validator".}
proc fcQLineEdit_setCompleter(self: pointer, completer: pointer): void {.importc: "QLineEdit_setCompleter".}
proc fcQLineEdit_completer(self: pointer, ): pointer {.importc: "QLineEdit_completer".}
proc fcQLineEdit_sizeHint(self: pointer, ): pointer {.importc: "QLineEdit_sizeHint".}
proc fcQLineEdit_minimumSizeHint(self: pointer, ): pointer {.importc: "QLineEdit_minimumSizeHint".}
proc fcQLineEdit_cursorPosition(self: pointer, ): cint {.importc: "QLineEdit_cursorPosition".}
proc fcQLineEdit_setCursorPosition(self: pointer, cursorPosition: cint): void {.importc: "QLineEdit_setCursorPosition".}
proc fcQLineEdit_cursorPositionAt(self: pointer, pos: pointer): cint {.importc: "QLineEdit_cursorPositionAt".}
proc fcQLineEdit_setAlignment(self: pointer, flag: cint): void {.importc: "QLineEdit_setAlignment".}
proc fcQLineEdit_alignment(self: pointer, ): cint {.importc: "QLineEdit_alignment".}
proc fcQLineEdit_cursorForward(self: pointer, mark: bool): void {.importc: "QLineEdit_cursorForward".}
proc fcQLineEdit_cursorBackward(self: pointer, mark: bool): void {.importc: "QLineEdit_cursorBackward".}
proc fcQLineEdit_cursorWordForward(self: pointer, mark: bool): void {.importc: "QLineEdit_cursorWordForward".}
proc fcQLineEdit_cursorWordBackward(self: pointer, mark: bool): void {.importc: "QLineEdit_cursorWordBackward".}
proc fcQLineEdit_backspace(self: pointer, ): void {.importc: "QLineEdit_backspace".}
proc fcQLineEdit_del(self: pointer, ): void {.importc: "QLineEdit_del".}
proc fcQLineEdit_home(self: pointer, mark: bool): void {.importc: "QLineEdit_home".}
proc fcQLineEdit_endX(self: pointer, mark: bool): void {.importc: "QLineEdit_end".}
proc fcQLineEdit_isModified(self: pointer, ): bool {.importc: "QLineEdit_isModified".}
proc fcQLineEdit_setModified(self: pointer, modified: bool): void {.importc: "QLineEdit_setModified".}
proc fcQLineEdit_setSelection(self: pointer, param1: cint, param2: cint): void {.importc: "QLineEdit_setSelection".}
proc fcQLineEdit_hasSelectedText(self: pointer, ): bool {.importc: "QLineEdit_hasSelectedText".}
proc fcQLineEdit_selectedText(self: pointer, ): struct_miqt_string {.importc: "QLineEdit_selectedText".}
proc fcQLineEdit_selectionStart(self: pointer, ): cint {.importc: "QLineEdit_selectionStart".}
proc fcQLineEdit_selectionEnd(self: pointer, ): cint {.importc: "QLineEdit_selectionEnd".}
proc fcQLineEdit_selectionLength(self: pointer, ): cint {.importc: "QLineEdit_selectionLength".}
proc fcQLineEdit_isUndoAvailable(self: pointer, ): bool {.importc: "QLineEdit_isUndoAvailable".}
proc fcQLineEdit_isRedoAvailable(self: pointer, ): bool {.importc: "QLineEdit_isRedoAvailable".}
proc fcQLineEdit_setDragEnabled(self: pointer, b: bool): void {.importc: "QLineEdit_setDragEnabled".}
proc fcQLineEdit_dragEnabled(self: pointer, ): bool {.importc: "QLineEdit_dragEnabled".}
proc fcQLineEdit_setCursorMoveStyle(self: pointer, style: cint): void {.importc: "QLineEdit_setCursorMoveStyle".}
proc fcQLineEdit_cursorMoveStyle(self: pointer, ): cint {.importc: "QLineEdit_cursorMoveStyle".}
proc fcQLineEdit_inputMask(self: pointer, ): struct_miqt_string {.importc: "QLineEdit_inputMask".}
proc fcQLineEdit_setInputMask(self: pointer, inputMask: struct_miqt_string): void {.importc: "QLineEdit_setInputMask".}
proc fcQLineEdit_hasAcceptableInput(self: pointer, ): bool {.importc: "QLineEdit_hasAcceptableInput".}
proc fcQLineEdit_setTextMargins(self: pointer, left: cint, top: cint, right: cint, bottom: cint): void {.importc: "QLineEdit_setTextMargins".}
proc fcQLineEdit_setTextMarginsWithMargins(self: pointer, margins: pointer): void {.importc: "QLineEdit_setTextMarginsWithMargins".}
proc fcQLineEdit_textMargins(self: pointer, ): pointer {.importc: "QLineEdit_textMargins".}
proc fcQLineEdit_addAction(self: pointer, action: pointer, position: cint): void {.importc: "QLineEdit_addAction".}
proc fcQLineEdit_addAction2(self: pointer, icon: pointer, position: cint): pointer {.importc: "QLineEdit_addAction2".}
proc fcQLineEdit_setText(self: pointer, text: struct_miqt_string): void {.importc: "QLineEdit_setText".}
proc fcQLineEdit_clear(self: pointer, ): void {.importc: "QLineEdit_clear".}
proc fcQLineEdit_selectAll(self: pointer, ): void {.importc: "QLineEdit_selectAll".}
proc fcQLineEdit_undo(self: pointer, ): void {.importc: "QLineEdit_undo".}
proc fcQLineEdit_redo(self: pointer, ): void {.importc: "QLineEdit_redo".}
proc fcQLineEdit_cut(self: pointer, ): void {.importc: "QLineEdit_cut".}
proc fcQLineEdit_copy(self: pointer, ): void {.importc: "QLineEdit_copy".}
proc fcQLineEdit_paste(self: pointer, ): void {.importc: "QLineEdit_paste".}
proc fcQLineEdit_deselect(self: pointer, ): void {.importc: "QLineEdit_deselect".}
proc fcQLineEdit_insert(self: pointer, param1: struct_miqt_string): void {.importc: "QLineEdit_insert".}
proc fcQLineEdit_createStandardContextMenu(self: pointer, ): pointer {.importc: "QLineEdit_createStandardContextMenu".}
proc fcQLineEdit_textChanged(self: pointer, param1: struct_miqt_string): void {.importc: "QLineEdit_textChanged".}
proc fQLineEdit_connect_textChanged(self: pointer, slot: int) {.importc: "QLineEdit_connect_textChanged".}
proc fcQLineEdit_textEdited(self: pointer, param1: struct_miqt_string): void {.importc: "QLineEdit_textEdited".}
proc fQLineEdit_connect_textEdited(self: pointer, slot: int) {.importc: "QLineEdit_connect_textEdited".}
proc fcQLineEdit_cursorPositionChanged(self: pointer, param1: cint, param2: cint): void {.importc: "QLineEdit_cursorPositionChanged".}
proc fQLineEdit_connect_cursorPositionChanged(self: pointer, slot: int) {.importc: "QLineEdit_connect_cursorPositionChanged".}
proc fcQLineEdit_returnPressed(self: pointer, ): void {.importc: "QLineEdit_returnPressed".}
proc fQLineEdit_connect_returnPressed(self: pointer, slot: int) {.importc: "QLineEdit_connect_returnPressed".}
proc fcQLineEdit_editingFinished(self: pointer, ): void {.importc: "QLineEdit_editingFinished".}
proc fQLineEdit_connect_editingFinished(self: pointer, slot: int) {.importc: "QLineEdit_connect_editingFinished".}
proc fcQLineEdit_selectionChanged(self: pointer, ): void {.importc: "QLineEdit_selectionChanged".}
proc fQLineEdit_connect_selectionChanged(self: pointer, slot: int) {.importc: "QLineEdit_connect_selectionChanged".}
proc fcQLineEdit_inputRejected(self: pointer, ): void {.importc: "QLineEdit_inputRejected".}
proc fQLineEdit_connect_inputRejected(self: pointer, slot: int) {.importc: "QLineEdit_connect_inputRejected".}
proc fcQLineEdit_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QLineEdit_inputMethodQuery".}
proc fcQLineEdit_inputMethodQuery2(self: pointer, property: cint, argument: pointer): pointer {.importc: "QLineEdit_inputMethodQuery2".}
proc fcQLineEdit_timerEvent(self: pointer, param1: pointer): void {.importc: "QLineEdit_timerEvent".}
proc fcQLineEdit_event(self: pointer, param1: pointer): bool {.importc: "QLineEdit_event".}
proc fcQLineEdit_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QLineEdit_tr2".}
proc fcQLineEdit_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QLineEdit_tr3".}
proc fcQLineEdit_cursorForward2(self: pointer, mark: bool, steps: cint): void {.importc: "QLineEdit_cursorForward2".}
proc fcQLineEdit_cursorBackward2(self: pointer, mark: bool, steps: cint): void {.importc: "QLineEdit_cursorBackward2".}
proc fQLineEdit_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QLineEdit_virtualbase_metaObject".}
proc fcQLineEdit_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_metaObject".}
proc fQLineEdit_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QLineEdit_virtualbase_metacast".}
proc fcQLineEdit_override_virtual_metacast(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_metacast".}
proc fQLineEdit_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QLineEdit_virtualbase_metacall".}
proc fcQLineEdit_override_virtual_metacall(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_metacall".}
proc fQLineEdit_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QLineEdit_virtualbase_sizeHint".}
proc fcQLineEdit_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_sizeHint".}
proc fQLineEdit_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QLineEdit_virtualbase_minimumSizeHint".}
proc fcQLineEdit_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_minimumSizeHint".}
proc fQLineEdit_virtualbase_mousePressEvent(self: pointer, param1: pointer): void{.importc: "QLineEdit_virtualbase_mousePressEvent".}
proc fcQLineEdit_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_mousePressEvent".}
proc fQLineEdit_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void{.importc: "QLineEdit_virtualbase_mouseMoveEvent".}
proc fcQLineEdit_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_mouseMoveEvent".}
proc fQLineEdit_virtualbase_mouseReleaseEvent(self: pointer, param1: pointer): void{.importc: "QLineEdit_virtualbase_mouseReleaseEvent".}
proc fcQLineEdit_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_mouseReleaseEvent".}
proc fQLineEdit_virtualbase_mouseDoubleClickEvent(self: pointer, param1: pointer): void{.importc: "QLineEdit_virtualbase_mouseDoubleClickEvent".}
proc fcQLineEdit_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_mouseDoubleClickEvent".}
proc fQLineEdit_virtualbase_keyPressEvent(self: pointer, param1: pointer): void{.importc: "QLineEdit_virtualbase_keyPressEvent".}
proc fcQLineEdit_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_keyPressEvent".}
proc fQLineEdit_virtualbase_keyReleaseEvent(self: pointer, param1: pointer): void{.importc: "QLineEdit_virtualbase_keyReleaseEvent".}
proc fcQLineEdit_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_keyReleaseEvent".}
proc fQLineEdit_virtualbase_focusInEvent(self: pointer, param1: pointer): void{.importc: "QLineEdit_virtualbase_focusInEvent".}
proc fcQLineEdit_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_focusInEvent".}
proc fQLineEdit_virtualbase_focusOutEvent(self: pointer, param1: pointer): void{.importc: "QLineEdit_virtualbase_focusOutEvent".}
proc fcQLineEdit_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_focusOutEvent".}
proc fQLineEdit_virtualbase_paintEvent(self: pointer, param1: pointer): void{.importc: "QLineEdit_virtualbase_paintEvent".}
proc fcQLineEdit_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_paintEvent".}
proc fQLineEdit_virtualbase_dragEnterEvent(self: pointer, param1: pointer): void{.importc: "QLineEdit_virtualbase_dragEnterEvent".}
proc fcQLineEdit_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_dragEnterEvent".}
proc fQLineEdit_virtualbase_dragMoveEvent(self: pointer, e: pointer): void{.importc: "QLineEdit_virtualbase_dragMoveEvent".}
proc fcQLineEdit_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_dragMoveEvent".}
proc fQLineEdit_virtualbase_dragLeaveEvent(self: pointer, e: pointer): void{.importc: "QLineEdit_virtualbase_dragLeaveEvent".}
proc fcQLineEdit_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_dragLeaveEvent".}
proc fQLineEdit_virtualbase_dropEvent(self: pointer, param1: pointer): void{.importc: "QLineEdit_virtualbase_dropEvent".}
proc fcQLineEdit_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_dropEvent".}
proc fQLineEdit_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QLineEdit_virtualbase_changeEvent".}
proc fcQLineEdit_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_changeEvent".}
proc fQLineEdit_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QLineEdit_virtualbase_contextMenuEvent".}
proc fcQLineEdit_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_contextMenuEvent".}
proc fQLineEdit_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QLineEdit_virtualbase_inputMethodEvent".}
proc fcQLineEdit_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_inputMethodEvent".}
proc fQLineEdit_virtualbase_initStyleOption(self: pointer, option: pointer): void{.importc: "QLineEdit_virtualbase_initStyleOption".}
proc fcQLineEdit_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_initStyleOption".}
proc fQLineEdit_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QLineEdit_virtualbase_inputMethodQuery".}
proc fcQLineEdit_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_inputMethodQuery".}
proc fQLineEdit_virtualbase_timerEvent(self: pointer, param1: pointer): void{.importc: "QLineEdit_virtualbase_timerEvent".}
proc fcQLineEdit_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_timerEvent".}
proc fQLineEdit_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QLineEdit_virtualbase_event".}
proc fcQLineEdit_override_virtual_event(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_event".}
proc fQLineEdit_virtualbase_devType(self: pointer, ): cint{.importc: "QLineEdit_virtualbase_devType".}
proc fcQLineEdit_override_virtual_devType(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_devType".}
proc fQLineEdit_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QLineEdit_virtualbase_setVisible".}
proc fcQLineEdit_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_setVisible".}
proc fQLineEdit_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QLineEdit_virtualbase_heightForWidth".}
proc fcQLineEdit_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_heightForWidth".}
proc fQLineEdit_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QLineEdit_virtualbase_hasHeightForWidth".}
proc fcQLineEdit_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_hasHeightForWidth".}
proc fQLineEdit_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QLineEdit_virtualbase_paintEngine".}
proc fcQLineEdit_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_paintEngine".}
proc fQLineEdit_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QLineEdit_virtualbase_wheelEvent".}
proc fcQLineEdit_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_wheelEvent".}
proc fQLineEdit_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QLineEdit_virtualbase_enterEvent".}
proc fcQLineEdit_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_enterEvent".}
proc fQLineEdit_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QLineEdit_virtualbase_leaveEvent".}
proc fcQLineEdit_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_leaveEvent".}
proc fQLineEdit_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QLineEdit_virtualbase_moveEvent".}
proc fcQLineEdit_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_moveEvent".}
proc fQLineEdit_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QLineEdit_virtualbase_resizeEvent".}
proc fcQLineEdit_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_resizeEvent".}
proc fQLineEdit_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QLineEdit_virtualbase_closeEvent".}
proc fcQLineEdit_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_closeEvent".}
proc fQLineEdit_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QLineEdit_virtualbase_tabletEvent".}
proc fcQLineEdit_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_tabletEvent".}
proc fQLineEdit_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QLineEdit_virtualbase_actionEvent".}
proc fcQLineEdit_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_actionEvent".}
proc fQLineEdit_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QLineEdit_virtualbase_showEvent".}
proc fcQLineEdit_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_showEvent".}
proc fQLineEdit_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QLineEdit_virtualbase_hideEvent".}
proc fcQLineEdit_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_hideEvent".}
proc fQLineEdit_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QLineEdit_virtualbase_nativeEvent".}
proc fcQLineEdit_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_nativeEvent".}
proc fQLineEdit_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QLineEdit_virtualbase_metric".}
proc fcQLineEdit_override_virtual_metric(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_metric".}
proc fQLineEdit_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QLineEdit_virtualbase_initPainter".}
proc fcQLineEdit_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_initPainter".}
proc fQLineEdit_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QLineEdit_virtualbase_redirected".}
proc fcQLineEdit_override_virtual_redirected(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_redirected".}
proc fQLineEdit_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QLineEdit_virtualbase_sharedPainter".}
proc fcQLineEdit_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_sharedPainter".}
proc fQLineEdit_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QLineEdit_virtualbase_focusNextPrevChild".}
proc fcQLineEdit_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_focusNextPrevChild".}
proc fQLineEdit_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QLineEdit_virtualbase_eventFilter".}
proc fcQLineEdit_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_eventFilter".}
proc fQLineEdit_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QLineEdit_virtualbase_childEvent".}
proc fcQLineEdit_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_childEvent".}
proc fQLineEdit_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QLineEdit_virtualbase_customEvent".}
proc fcQLineEdit_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_customEvent".}
proc fQLineEdit_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QLineEdit_virtualbase_connectNotify".}
proc fcQLineEdit_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_connectNotify".}
proc fQLineEdit_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QLineEdit_virtualbase_disconnectNotify".}
proc fcQLineEdit_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QLineEdit_override_virtual_disconnectNotify".}
proc fcQLineEdit_staticMetaObject(): pointer {.importc: "QLineEdit_staticMetaObject".}
proc fcQLineEdit_delete(self: pointer) {.importc: "QLineEdit_delete".}


func init*(T: type QLineEdit, h: ptr cQLineEdit): QLineEdit =
  T(h: h)
proc create*(T: type QLineEdit, parent: gen_qwidget.QWidget): QLineEdit =

  QLineEdit.init(fcQLineEdit_new(parent.h))
proc create*(T: type QLineEdit, ): QLineEdit =

  QLineEdit.init(fcQLineEdit_new2())
proc create*(T: type QLineEdit, param1: string): QLineEdit =

  QLineEdit.init(fcQLineEdit_new3(struct_miqt_string(data: param1, len: csize_t(len(param1)))))
proc create*(T: type QLineEdit, param1: string, parent: gen_qwidget.QWidget): QLineEdit =

  QLineEdit.init(fcQLineEdit_new4(struct_miqt_string(data: param1, len: csize_t(len(param1))), parent.h))
proc metaObject*(self: QLineEdit, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQLineEdit_metaObject(self.h))

proc metacast*(self: QLineEdit, param1: cstring): pointer =

  fcQLineEdit_metacast(self.h, param1)

proc metacall*(self: QLineEdit, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQLineEdit_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QLineEdit, s: cstring): string =

  let v_ms = fcQLineEdit_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc text*(self: QLineEdit, ): string =

  let v_ms = fcQLineEdit_text(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc displayText*(self: QLineEdit, ): string =

  let v_ms = fcQLineEdit_displayText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc placeholderText*(self: QLineEdit, ): string =

  let v_ms = fcQLineEdit_placeholderText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPlaceholderText*(self: QLineEdit, placeholderText: string): void =

  fcQLineEdit_setPlaceholderText(self.h, struct_miqt_string(data: placeholderText, len: csize_t(len(placeholderText))))

proc maxLength*(self: QLineEdit, ): cint =

  fcQLineEdit_maxLength(self.h)

proc setMaxLength*(self: QLineEdit, maxLength: cint): void =

  fcQLineEdit_setMaxLength(self.h, maxLength)

proc setFrame*(self: QLineEdit, frame: bool): void =

  fcQLineEdit_setFrame(self.h, frame)

proc hasFrame*(self: QLineEdit, ): bool =

  fcQLineEdit_hasFrame(self.h)

proc setClearButtonEnabled*(self: QLineEdit, enable: bool): void =

  fcQLineEdit_setClearButtonEnabled(self.h, enable)

proc isClearButtonEnabled*(self: QLineEdit, ): bool =

  fcQLineEdit_isClearButtonEnabled(self.h)

proc echoMode*(self: QLineEdit, ): QLineEditEchoMode =

  QLineEditEchoMode(fcQLineEdit_echoMode(self.h))

proc setEchoMode*(self: QLineEdit, echoMode: QLineEditEchoMode): void =

  fcQLineEdit_setEchoMode(self.h, cint(echoMode))

proc isReadOnly*(self: QLineEdit, ): bool =

  fcQLineEdit_isReadOnly(self.h)

proc setReadOnly*(self: QLineEdit, readOnly: bool): void =

  fcQLineEdit_setReadOnly(self.h, readOnly)

proc setValidator*(self: QLineEdit, validator: gen_qvalidator.QValidator): void =

  fcQLineEdit_setValidator(self.h, validator.h)

proc validator*(self: QLineEdit, ): gen_qvalidator.QValidator =

  gen_qvalidator.QValidator(h: fcQLineEdit_validator(self.h))

proc setCompleter*(self: QLineEdit, completer: gen_qcompleter.QCompleter): void =

  fcQLineEdit_setCompleter(self.h, completer.h)

proc completer*(self: QLineEdit, ): gen_qcompleter.QCompleter =

  gen_qcompleter.QCompleter(h: fcQLineEdit_completer(self.h))

proc sizeHint*(self: QLineEdit, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQLineEdit_sizeHint(self.h))

proc minimumSizeHint*(self: QLineEdit, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQLineEdit_minimumSizeHint(self.h))

proc cursorPosition*(self: QLineEdit, ): cint =

  fcQLineEdit_cursorPosition(self.h)

proc setCursorPosition*(self: QLineEdit, cursorPosition: cint): void =

  fcQLineEdit_setCursorPosition(self.h, cursorPosition)

proc cursorPositionAt*(self: QLineEdit, pos: gen_qpoint.QPoint): cint =

  fcQLineEdit_cursorPositionAt(self.h, pos.h)

proc setAlignment*(self: QLineEdit, flag: gen_qnamespace.AlignmentFlag): void =

  fcQLineEdit_setAlignment(self.h, cint(flag))

proc alignment*(self: QLineEdit, ): gen_qnamespace.AlignmentFlag =

  gen_qnamespace.AlignmentFlag(fcQLineEdit_alignment(self.h))

proc cursorForward*(self: QLineEdit, mark: bool): void =

  fcQLineEdit_cursorForward(self.h, mark)

proc cursorBackward*(self: QLineEdit, mark: bool): void =

  fcQLineEdit_cursorBackward(self.h, mark)

proc cursorWordForward*(self: QLineEdit, mark: bool): void =

  fcQLineEdit_cursorWordForward(self.h, mark)

proc cursorWordBackward*(self: QLineEdit, mark: bool): void =

  fcQLineEdit_cursorWordBackward(self.h, mark)

proc backspace*(self: QLineEdit, ): void =

  fcQLineEdit_backspace(self.h)

proc del*(self: QLineEdit, ): void =

  fcQLineEdit_del(self.h)

proc home*(self: QLineEdit, mark: bool): void =

  fcQLineEdit_home(self.h, mark)

proc endX*(self: QLineEdit, mark: bool): void =

  fcQLineEdit_endX(self.h, mark)

proc isModified*(self: QLineEdit, ): bool =

  fcQLineEdit_isModified(self.h)

proc setModified*(self: QLineEdit, modified: bool): void =

  fcQLineEdit_setModified(self.h, modified)

proc setSelection*(self: QLineEdit, param1: cint, param2: cint): void =

  fcQLineEdit_setSelection(self.h, param1, param2)

proc hasSelectedText*(self: QLineEdit, ): bool =

  fcQLineEdit_hasSelectedText(self.h)

proc selectedText*(self: QLineEdit, ): string =

  let v_ms = fcQLineEdit_selectedText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc selectionStart*(self: QLineEdit, ): cint =

  fcQLineEdit_selectionStart(self.h)

proc selectionEnd*(self: QLineEdit, ): cint =

  fcQLineEdit_selectionEnd(self.h)

proc selectionLength*(self: QLineEdit, ): cint =

  fcQLineEdit_selectionLength(self.h)

proc isUndoAvailable*(self: QLineEdit, ): bool =

  fcQLineEdit_isUndoAvailable(self.h)

proc isRedoAvailable*(self: QLineEdit, ): bool =

  fcQLineEdit_isRedoAvailable(self.h)

proc setDragEnabled*(self: QLineEdit, b: bool): void =

  fcQLineEdit_setDragEnabled(self.h, b)

proc dragEnabled*(self: QLineEdit, ): bool =

  fcQLineEdit_dragEnabled(self.h)

proc setCursorMoveStyle*(self: QLineEdit, style: gen_qnamespace.CursorMoveStyle): void =

  fcQLineEdit_setCursorMoveStyle(self.h, cint(style))

proc cursorMoveStyle*(self: QLineEdit, ): gen_qnamespace.CursorMoveStyle =

  gen_qnamespace.CursorMoveStyle(fcQLineEdit_cursorMoveStyle(self.h))

proc inputMask*(self: QLineEdit, ): string =

  let v_ms = fcQLineEdit_inputMask(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setInputMask*(self: QLineEdit, inputMask: string): void =

  fcQLineEdit_setInputMask(self.h, struct_miqt_string(data: inputMask, len: csize_t(len(inputMask))))

proc hasAcceptableInput*(self: QLineEdit, ): bool =

  fcQLineEdit_hasAcceptableInput(self.h)

proc setTextMargins*(self: QLineEdit, left: cint, top: cint, right: cint, bottom: cint): void =

  fcQLineEdit_setTextMargins(self.h, left, top, right, bottom)

proc setTextMarginsWithMargins*(self: QLineEdit, margins: gen_qmargins.QMargins): void =

  fcQLineEdit_setTextMarginsWithMargins(self.h, margins.h)

proc textMargins*(self: QLineEdit, ): gen_qmargins.QMargins =

  gen_qmargins.QMargins(h: fcQLineEdit_textMargins(self.h))

proc addAction*(self: QLineEdit, action: gen_qaction.QAction, position: QLineEditActionPosition): void =

  fcQLineEdit_addAction(self.h, action.h, cint(position))

proc addAction2*(self: QLineEdit, icon: gen_qicon.QIcon, position: QLineEditActionPosition): gen_qaction.QAction =

  gen_qaction.QAction(h: fcQLineEdit_addAction2(self.h, icon.h, cint(position)))

proc setText*(self: QLineEdit, text: string): void =

  fcQLineEdit_setText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc clear*(self: QLineEdit, ): void =

  fcQLineEdit_clear(self.h)

proc selectAll*(self: QLineEdit, ): void =

  fcQLineEdit_selectAll(self.h)

proc undo*(self: QLineEdit, ): void =

  fcQLineEdit_undo(self.h)

proc redo*(self: QLineEdit, ): void =

  fcQLineEdit_redo(self.h)

proc cut*(self: QLineEdit, ): void =

  fcQLineEdit_cut(self.h)

proc copy*(self: QLineEdit, ): void =

  fcQLineEdit_copy(self.h)

proc paste*(self: QLineEdit, ): void =

  fcQLineEdit_paste(self.h)

proc deselect*(self: QLineEdit, ): void =

  fcQLineEdit_deselect(self.h)

proc insert*(self: QLineEdit, param1: string): void =

  fcQLineEdit_insert(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

proc createStandardContextMenu*(self: QLineEdit, ): gen_qmenu.QMenu =

  gen_qmenu.QMenu(h: fcQLineEdit_createStandardContextMenu(self.h))

proc textChanged*(self: QLineEdit, param1: string): void =

  fcQLineEdit_textChanged(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

proc miqt_exec_callback_QLineEdit_textChanged(slot: int, param1: struct_miqt_string) {.exportc.} =
  type Cb = proc(param1: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret


  nimfunc[](slotval1)

proc ontextChanged*(self: QLineEdit, slot: proc(param1: string)) =
  type Cb = proc(param1: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQLineEdit_connect_textChanged(self.h, cast[int](addr tmp[]))
proc textEdited*(self: QLineEdit, param1: string): void =

  fcQLineEdit_textEdited(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

proc miqt_exec_callback_QLineEdit_textEdited(slot: int, param1: struct_miqt_string) {.exportc.} =
  type Cb = proc(param1: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret


  nimfunc[](slotval1)

proc ontextEdited*(self: QLineEdit, slot: proc(param1: string)) =
  type Cb = proc(param1: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQLineEdit_connect_textEdited(self.h, cast[int](addr tmp[]))
proc cursorPositionChanged*(self: QLineEdit, param1: cint, param2: cint): void =

  fcQLineEdit_cursorPositionChanged(self.h, param1, param2)

proc miqt_exec_callback_QLineEdit_cursorPositionChanged(slot: int, param1: cint, param2: cint) {.exportc.} =
  type Cb = proc(param1: cint, param2: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = param1

  let slotval2 = param2


  nimfunc[](slotval1, slotval2)

proc oncursorPositionChanged*(self: QLineEdit, slot: proc(param1: cint, param2: cint)) =
  type Cb = proc(param1: cint, param2: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQLineEdit_connect_cursorPositionChanged(self.h, cast[int](addr tmp[]))
proc returnPressed*(self: QLineEdit, ): void =

  fcQLineEdit_returnPressed(self.h)

proc miqt_exec_callback_QLineEdit_returnPressed(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onreturnPressed*(self: QLineEdit, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQLineEdit_connect_returnPressed(self.h, cast[int](addr tmp[]))
proc editingFinished*(self: QLineEdit, ): void =

  fcQLineEdit_editingFinished(self.h)

proc miqt_exec_callback_QLineEdit_editingFinished(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc oneditingFinished*(self: QLineEdit, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQLineEdit_connect_editingFinished(self.h, cast[int](addr tmp[]))
proc selectionChanged*(self: QLineEdit, ): void =

  fcQLineEdit_selectionChanged(self.h)

proc miqt_exec_callback_QLineEdit_selectionChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onselectionChanged*(self: QLineEdit, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQLineEdit_connect_selectionChanged(self.h, cast[int](addr tmp[]))
proc inputRejected*(self: QLineEdit, ): void =

  fcQLineEdit_inputRejected(self.h)

proc miqt_exec_callback_QLineEdit_inputRejected(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc oninputRejected*(self: QLineEdit, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQLineEdit_connect_inputRejected(self.h, cast[int](addr tmp[]))
proc inputMethodQuery*(self: QLineEdit, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQLineEdit_inputMethodQuery(self.h, cint(param1)))

proc inputMethodQuery2*(self: QLineEdit, property: gen_qnamespace.InputMethodQuery, argument: gen_qvariant.QVariant): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQLineEdit_inputMethodQuery2(self.h, cint(property), argument.h))

proc timerEvent*(self: QLineEdit, param1: gen_qcoreevent.QTimerEvent): void =

  fcQLineEdit_timerEvent(self.h, param1.h)

proc event*(self: QLineEdit, param1: gen_qcoreevent.QEvent): bool =

  fcQLineEdit_event(self.h, param1.h)

proc tr2*(_: type QLineEdit, s: cstring, c: cstring): string =

  let v_ms = fcQLineEdit_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QLineEdit, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQLineEdit_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc cursorForward2*(self: QLineEdit, mark: bool, steps: cint): void =

  fcQLineEdit_cursorForward2(self.h, mark, steps)

proc cursorBackward2*(self: QLineEdit, mark: bool, steps: cint): void =

  fcQLineEdit_cursorBackward2(self.h, mark, steps)

proc callVirtualBase_metaObject(self: QLineEdit, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQLineEdit_virtualbase_metaObject(self.h))

type QLineEditmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QLineEdit, slot: proc(super: QLineEditmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QLineEditmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_metaObject(self: ptr cQLineEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QLineEdit_metaObject ".} =
  type Cb = proc(super: QLineEditmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QLineEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QLineEdit, param1: cstring): pointer =


  fQLineEdit_virtualbase_metacast(self.h, param1)

type QLineEditmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QLineEdit, slot: proc(super: QLineEditmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QLineEditmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_metacast(self: ptr cQLineEdit, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QLineEdit_metacast ".} =
  type Cb = proc(super: QLineEditmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QLineEdit(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QLineEdit, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQLineEdit_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QLineEditmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QLineEdit, slot: proc(super: QLineEditmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QLineEditmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_metacall(self: ptr cQLineEdit, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QLineEdit_metacall ".} =
  type Cb = proc(super: QLineEditmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QLineEdit(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_sizeHint(self: QLineEdit, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQLineEdit_virtualbase_sizeHint(self.h))

type QLineEditsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QLineEdit, slot: proc(super: QLineEditsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QLineEditsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_sizeHint(self: ptr cQLineEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QLineEdit_sizeHint ".} =
  type Cb = proc(super: QLineEditsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QLineEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_minimumSizeHint(self: QLineEdit, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQLineEdit_virtualbase_minimumSizeHint(self.h))

type QLineEditminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QLineEdit, slot: proc(super: QLineEditminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QLineEditminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_minimumSizeHint(self: ptr cQLineEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QLineEdit_minimumSizeHint ".} =
  type Cb = proc(super: QLineEditminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QLineEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_mousePressEvent(self: QLineEdit, param1: gen_qevent.QMouseEvent): void =


  fQLineEdit_virtualbase_mousePressEvent(self.h, param1.h)

type QLineEditmousePressEventBase* = proc(param1: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QLineEdit, slot: proc(super: QLineEditmousePressEventBase, param1: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLineEditmousePressEventBase, param1: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_mousePressEvent(self: ptr cQLineEdit, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_mousePressEvent ".} =
  type Cb = proc(super: QLineEditmousePressEventBase, param1: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QLineEdit(h: self), param1)
  let slotval1 = gen_qevent.QMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QLineEdit, param1: gen_qevent.QMouseEvent): void =


  fQLineEdit_virtualbase_mouseMoveEvent(self.h, param1.h)

type QLineEditmouseMoveEventBase* = proc(param1: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QLineEdit, slot: proc(super: QLineEditmouseMoveEventBase, param1: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLineEditmouseMoveEventBase, param1: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_mouseMoveEvent(self: ptr cQLineEdit, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_mouseMoveEvent ".} =
  type Cb = proc(super: QLineEditmouseMoveEventBase, param1: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QLineEdit(h: self), param1)
  let slotval1 = gen_qevent.QMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QLineEdit, param1: gen_qevent.QMouseEvent): void =


  fQLineEdit_virtualbase_mouseReleaseEvent(self.h, param1.h)

type QLineEditmouseReleaseEventBase* = proc(param1: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QLineEdit, slot: proc(super: QLineEditmouseReleaseEventBase, param1: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLineEditmouseReleaseEventBase, param1: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_mouseReleaseEvent(self: ptr cQLineEdit, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_mouseReleaseEvent ".} =
  type Cb = proc(super: QLineEditmouseReleaseEventBase, param1: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QLineEdit(h: self), param1)
  let slotval1 = gen_qevent.QMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QLineEdit, param1: gen_qevent.QMouseEvent): void =


  fQLineEdit_virtualbase_mouseDoubleClickEvent(self.h, param1.h)

type QLineEditmouseDoubleClickEventBase* = proc(param1: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QLineEdit, slot: proc(super: QLineEditmouseDoubleClickEventBase, param1: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLineEditmouseDoubleClickEventBase, param1: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_mouseDoubleClickEvent(self: ptr cQLineEdit, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QLineEditmouseDoubleClickEventBase, param1: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QLineEdit(h: self), param1)
  let slotval1 = gen_qevent.QMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QLineEdit, param1: gen_qevent.QKeyEvent): void =


  fQLineEdit_virtualbase_keyPressEvent(self.h, param1.h)

type QLineEditkeyPressEventBase* = proc(param1: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QLineEdit, slot: proc(super: QLineEditkeyPressEventBase, param1: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLineEditkeyPressEventBase, param1: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_keyPressEvent(self: ptr cQLineEdit, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_keyPressEvent ".} =
  type Cb = proc(super: QLineEditkeyPressEventBase, param1: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QLineEdit(h: self), param1)
  let slotval1 = gen_qevent.QKeyEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QLineEdit, param1: gen_qevent.QKeyEvent): void =


  fQLineEdit_virtualbase_keyReleaseEvent(self.h, param1.h)

type QLineEditkeyReleaseEventBase* = proc(param1: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QLineEdit, slot: proc(super: QLineEditkeyReleaseEventBase, param1: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLineEditkeyReleaseEventBase, param1: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_keyReleaseEvent(self: ptr cQLineEdit, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_keyReleaseEvent ".} =
  type Cb = proc(super: QLineEditkeyReleaseEventBase, param1: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QLineEdit(h: self), param1)
  let slotval1 = gen_qevent.QKeyEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QLineEdit, param1: gen_qevent.QFocusEvent): void =


  fQLineEdit_virtualbase_focusInEvent(self.h, param1.h)

type QLineEditfocusInEventBase* = proc(param1: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QLineEdit, slot: proc(super: QLineEditfocusInEventBase, param1: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLineEditfocusInEventBase, param1: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_focusInEvent(self: ptr cQLineEdit, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_focusInEvent ".} =
  type Cb = proc(super: QLineEditfocusInEventBase, param1: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QLineEdit(h: self), param1)
  let slotval1 = gen_qevent.QFocusEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QLineEdit, param1: gen_qevent.QFocusEvent): void =


  fQLineEdit_virtualbase_focusOutEvent(self.h, param1.h)

type QLineEditfocusOutEventBase* = proc(param1: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QLineEdit, slot: proc(super: QLineEditfocusOutEventBase, param1: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLineEditfocusOutEventBase, param1: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_focusOutEvent(self: ptr cQLineEdit, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_focusOutEvent ".} =
  type Cb = proc(super: QLineEditfocusOutEventBase, param1: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QLineEdit(h: self), param1)
  let slotval1 = gen_qevent.QFocusEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QLineEdit, param1: gen_qevent.QPaintEvent): void =


  fQLineEdit_virtualbase_paintEvent(self.h, param1.h)

type QLineEditpaintEventBase* = proc(param1: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QLineEdit, slot: proc(super: QLineEditpaintEventBase, param1: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLineEditpaintEventBase, param1: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_paintEvent(self: ptr cQLineEdit, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_paintEvent ".} =
  type Cb = proc(super: QLineEditpaintEventBase, param1: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QLineEdit(h: self), param1)
  let slotval1 = gen_qevent.QPaintEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QLineEdit, param1: gen_qevent.QDragEnterEvent): void =


  fQLineEdit_virtualbase_dragEnterEvent(self.h, param1.h)

type QLineEditdragEnterEventBase* = proc(param1: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QLineEdit, slot: proc(super: QLineEditdragEnterEventBase, param1: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLineEditdragEnterEventBase, param1: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_dragEnterEvent(self: ptr cQLineEdit, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_dragEnterEvent ".} =
  type Cb = proc(super: QLineEditdragEnterEventBase, param1: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QLineEdit(h: self), param1)
  let slotval1 = gen_qevent.QDragEnterEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QLineEdit, e: gen_qevent.QDragMoveEvent): void =


  fQLineEdit_virtualbase_dragMoveEvent(self.h, e.h)

type QLineEditdragMoveEventBase* = proc(e: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QLineEdit, slot: proc(super: QLineEditdragMoveEventBase, e: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLineEditdragMoveEventBase, e: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_dragMoveEvent(self: ptr cQLineEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_dragMoveEvent ".} =
  type Cb = proc(super: QLineEditdragMoveEventBase, e: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QLineEdit(h: self), e)
  let slotval1 = gen_qevent.QDragMoveEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QLineEdit, e: gen_qevent.QDragLeaveEvent): void =


  fQLineEdit_virtualbase_dragLeaveEvent(self.h, e.h)

type QLineEditdragLeaveEventBase* = proc(e: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QLineEdit, slot: proc(super: QLineEditdragLeaveEventBase, e: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLineEditdragLeaveEventBase, e: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_dragLeaveEvent(self: ptr cQLineEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_dragLeaveEvent ".} =
  type Cb = proc(super: QLineEditdragLeaveEventBase, e: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QLineEdit(h: self), e)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QLineEdit, param1: gen_qevent.QDropEvent): void =


  fQLineEdit_virtualbase_dropEvent(self.h, param1.h)

type QLineEditdropEventBase* = proc(param1: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QLineEdit, slot: proc(super: QLineEditdropEventBase, param1: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLineEditdropEventBase, param1: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_dropEvent(self: ptr cQLineEdit, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_dropEvent ".} =
  type Cb = proc(super: QLineEditdropEventBase, param1: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QLineEdit(h: self), param1)
  let slotval1 = gen_qevent.QDropEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_changeEvent(self: QLineEdit, param1: gen_qcoreevent.QEvent): void =


  fQLineEdit_virtualbase_changeEvent(self.h, param1.h)

type QLineEditchangeEventBase* = proc(param1: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QLineEdit, slot: proc(super: QLineEditchangeEventBase, param1: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLineEditchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_changeEvent(self: ptr cQLineEdit, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_changeEvent ".} =
  type Cb = proc(super: QLineEditchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QLineEdit(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QLineEdit, param1: gen_qevent.QContextMenuEvent): void =


  fQLineEdit_virtualbase_contextMenuEvent(self.h, param1.h)

type QLineEditcontextMenuEventBase* = proc(param1: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QLineEdit, slot: proc(super: QLineEditcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLineEditcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_contextMenuEvent(self: ptr cQLineEdit, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_contextMenuEvent ".} =
  type Cb = proc(super: QLineEditcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QLineEdit(h: self), param1)
  let slotval1 = gen_qevent.QContextMenuEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodEvent(self: QLineEdit, param1: gen_qevent.QInputMethodEvent): void =


  fQLineEdit_virtualbase_inputMethodEvent(self.h, param1.h)

type QLineEditinputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QLineEdit, slot: proc(super: QLineEditinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLineEditinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_inputMethodEvent(self: ptr cQLineEdit, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_inputMethodEvent ".} =
  type Cb = proc(super: QLineEditinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QLineEdit(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_initStyleOption(self: QLineEdit, option: gen_qstyleoption.QStyleOptionFrame): void =


  fQLineEdit_virtualbase_initStyleOption(self.h, option.h)

type QLineEditinitStyleOptionBase* = proc(option: gen_qstyleoption.QStyleOptionFrame): void
proc oninitStyleOption*(self: QLineEdit, slot: proc(super: QLineEditinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionFrame): void) =
  # TODO check subclass
  type Cb = proc(super: QLineEditinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionFrame): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_initStyleOption(self: ptr cQLineEdit, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_initStyleOption ".} =
  type Cb = proc(super: QLineEditinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionFrame): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(option: gen_qstyleoption.QStyleOptionFrame): auto =
    callVirtualBase_initStyleOption(QLineEdit(h: self), option)
  let slotval1 = gen_qstyleoption.QStyleOptionFrame(h: option)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QLineEdit, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQLineEdit_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QLineEditinputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QLineEdit, slot: proc(super: QLineEditinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QLineEditinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_inputMethodQuery(self: ptr cQLineEdit, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QLineEdit_inputMethodQuery ".} =
  type Cb = proc(super: QLineEditinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QLineEdit(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_timerEvent(self: QLineEdit, param1: gen_qcoreevent.QTimerEvent): void =


  fQLineEdit_virtualbase_timerEvent(self.h, param1.h)

type QLineEdittimerEventBase* = proc(param1: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QLineEdit, slot: proc(super: QLineEdittimerEventBase, param1: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLineEdittimerEventBase, param1: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_timerEvent(self: ptr cQLineEdit, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_timerEvent ".} =
  type Cb = proc(super: QLineEdittimerEventBase, param1: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QLineEdit(h: self), param1)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QLineEdit, param1: gen_qcoreevent.QEvent): bool =


  fQLineEdit_virtualbase_event(self.h, param1.h)

type QLineEditeventBase* = proc(param1: gen_qcoreevent.QEvent): bool
proc onevent*(self: QLineEdit, slot: proc(super: QLineEditeventBase, param1: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QLineEditeventBase, param1: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_event(self: ptr cQLineEdit, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QLineEdit_event ".} =
  type Cb = proc(super: QLineEditeventBase, param1: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QLineEdit(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_devType(self: QLineEdit, ): cint =


  fQLineEdit_virtualbase_devType(self.h)

type QLineEditdevTypeBase* = proc(): cint
proc ondevType*(self: QLineEdit, slot: proc(super: QLineEditdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QLineEditdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_devType(self: ptr cQLineEdit, slot: int): cint {.exportc: "miqt_exec_callback_QLineEdit_devType ".} =
  type Cb = proc(super: QLineEditdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QLineEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QLineEdit, visible: bool): void =


  fQLineEdit_virtualbase_setVisible(self.h, visible)

type QLineEditsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QLineEdit, slot: proc(super: QLineEditsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QLineEditsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_setVisible(self: ptr cQLineEdit, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QLineEdit_setVisible ".} =
  type Cb = proc(super: QLineEditsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QLineEdit(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_heightForWidth(self: QLineEdit, param1: cint): cint =


  fQLineEdit_virtualbase_heightForWidth(self.h, param1)

type QLineEditheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QLineEdit, slot: proc(super: QLineEditheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QLineEditheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_heightForWidth(self: ptr cQLineEdit, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QLineEdit_heightForWidth ".} =
  type Cb = proc(super: QLineEditheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QLineEdit(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QLineEdit, ): bool =


  fQLineEdit_virtualbase_hasHeightForWidth(self.h)

type QLineEdithasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QLineEdit, slot: proc(super: QLineEdithasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QLineEdithasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_hasHeightForWidth(self: ptr cQLineEdit, slot: int): bool {.exportc: "miqt_exec_callback_QLineEdit_hasHeightForWidth ".} =
  type Cb = proc(super: QLineEdithasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QLineEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QLineEdit, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQLineEdit_virtualbase_paintEngine(self.h))

type QLineEditpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QLineEdit, slot: proc(super: QLineEditpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QLineEditpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_paintEngine(self: ptr cQLineEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QLineEdit_paintEngine ".} =
  type Cb = proc(super: QLineEditpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QLineEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_wheelEvent(self: QLineEdit, event: gen_qevent.QWheelEvent): void =


  fQLineEdit_virtualbase_wheelEvent(self.h, event.h)

type QLineEditwheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QLineEdit, slot: proc(super: QLineEditwheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLineEditwheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_wheelEvent(self: ptr cQLineEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_wheelEvent ".} =
  type Cb = proc(super: QLineEditwheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QLineEdit(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QLineEdit, event: gen_qevent.QEnterEvent): void =


  fQLineEdit_virtualbase_enterEvent(self.h, event.h)

type QLineEditenterEventBase* = proc(event: gen_qevent.QEnterEvent): void
proc onenterEvent*(self: QLineEdit, slot: proc(super: QLineEditenterEventBase, event: gen_qevent.QEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLineEditenterEventBase, event: gen_qevent.QEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_enterEvent(self: ptr cQLineEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_enterEvent ".} =
  type Cb = proc(super: QLineEditenterEventBase, event: gen_qevent.QEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QEnterEvent): auto =
    callVirtualBase_enterEvent(QLineEdit(h: self), event)
  let slotval1 = gen_qevent.QEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QLineEdit, event: gen_qcoreevent.QEvent): void =


  fQLineEdit_virtualbase_leaveEvent(self.h, event.h)

type QLineEditleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QLineEdit, slot: proc(super: QLineEditleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLineEditleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_leaveEvent(self: ptr cQLineEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_leaveEvent ".} =
  type Cb = proc(super: QLineEditleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QLineEdit(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QLineEdit, event: gen_qevent.QMoveEvent): void =


  fQLineEdit_virtualbase_moveEvent(self.h, event.h)

type QLineEditmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QLineEdit, slot: proc(super: QLineEditmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLineEditmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_moveEvent(self: ptr cQLineEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_moveEvent ".} =
  type Cb = proc(super: QLineEditmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QLineEdit(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QLineEdit, event: gen_qevent.QResizeEvent): void =


  fQLineEdit_virtualbase_resizeEvent(self.h, event.h)

type QLineEditresizeEventBase* = proc(event: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QLineEdit, slot: proc(super: QLineEditresizeEventBase, event: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLineEditresizeEventBase, event: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_resizeEvent(self: ptr cQLineEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_resizeEvent ".} =
  type Cb = proc(super: QLineEditresizeEventBase, event: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QLineEdit(h: self), event)
  let slotval1 = gen_qevent.QResizeEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QLineEdit, event: gen_qevent.QCloseEvent): void =


  fQLineEdit_virtualbase_closeEvent(self.h, event.h)

type QLineEditcloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QLineEdit, slot: proc(super: QLineEditcloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLineEditcloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_closeEvent(self: ptr cQLineEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_closeEvent ".} =
  type Cb = proc(super: QLineEditcloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QLineEdit(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QLineEdit, event: gen_qevent.QTabletEvent): void =


  fQLineEdit_virtualbase_tabletEvent(self.h, event.h)

type QLineEdittabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QLineEdit, slot: proc(super: QLineEdittabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLineEdittabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_tabletEvent(self: ptr cQLineEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_tabletEvent ".} =
  type Cb = proc(super: QLineEdittabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QLineEdit(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QLineEdit, event: gen_qevent.QActionEvent): void =


  fQLineEdit_virtualbase_actionEvent(self.h, event.h)

type QLineEditactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QLineEdit, slot: proc(super: QLineEditactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLineEditactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_actionEvent(self: ptr cQLineEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_actionEvent ".} =
  type Cb = proc(super: QLineEditactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QLineEdit(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QLineEdit, event: gen_qevent.QShowEvent): void =


  fQLineEdit_virtualbase_showEvent(self.h, event.h)

type QLineEditshowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QLineEdit, slot: proc(super: QLineEditshowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLineEditshowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_showEvent(self: ptr cQLineEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_showEvent ".} =
  type Cb = proc(super: QLineEditshowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QLineEdit(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QLineEdit, event: gen_qevent.QHideEvent): void =


  fQLineEdit_virtualbase_hideEvent(self.h, event.h)

type QLineEdithideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QLineEdit, slot: proc(super: QLineEdithideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLineEdithideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_hideEvent(self: ptr cQLineEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_hideEvent ".} =
  type Cb = proc(super: QLineEdithideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QLineEdit(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QLineEdit, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =


  fQLineEdit_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QLineEditnativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: QLineEdit, slot: proc(super: QLineEditnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool) =
  # TODO check subclass
  type Cb = proc(super: QLineEditnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_nativeEvent(self: ptr cQLineEdit, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QLineEdit_nativeEvent ".} =
  type Cb = proc(super: QLineEditnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr uint): auto =
    callVirtualBase_nativeEvent(QLineEdit(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QLineEdit, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQLineEdit_virtualbase_metric(self.h, cint(param1))

type QLineEditmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QLineEdit, slot: proc(super: QLineEditmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QLineEditmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_metric(self: ptr cQLineEdit, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QLineEdit_metric ".} =
  type Cb = proc(super: QLineEditmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QLineEdit(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QLineEdit, painter: gen_qpainter.QPainter): void =


  fQLineEdit_virtualbase_initPainter(self.h, painter.h)

type QLineEditinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QLineEdit, slot: proc(super: QLineEditinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QLineEditinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_initPainter(self: ptr cQLineEdit, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_initPainter ".} =
  type Cb = proc(super: QLineEditinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QLineEdit(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QLineEdit, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQLineEdit_virtualbase_redirected(self.h, offset.h))

type QLineEditredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QLineEdit, slot: proc(super: QLineEditredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QLineEditredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_redirected(self: ptr cQLineEdit, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QLineEdit_redirected ".} =
  type Cb = proc(super: QLineEditredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QLineEdit(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QLineEdit, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQLineEdit_virtualbase_sharedPainter(self.h))

type QLineEditsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QLineEdit, slot: proc(super: QLineEditsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QLineEditsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_sharedPainter(self: ptr cQLineEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QLineEdit_sharedPainter ".} =
  type Cb = proc(super: QLineEditsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QLineEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QLineEdit, next: bool): bool =


  fQLineEdit_virtualbase_focusNextPrevChild(self.h, next)

type QLineEditfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QLineEdit, slot: proc(super: QLineEditfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QLineEditfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_focusNextPrevChild(self: ptr cQLineEdit, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QLineEdit_focusNextPrevChild ".} =
  type Cb = proc(super: QLineEditfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QLineEdit(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QLineEdit, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQLineEdit_virtualbase_eventFilter(self.h, watched.h, event.h)

type QLineEditeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QLineEdit, slot: proc(super: QLineEditeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QLineEditeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_eventFilter(self: ptr cQLineEdit, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QLineEdit_eventFilter ".} =
  type Cb = proc(super: QLineEditeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QLineEdit(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_childEvent(self: QLineEdit, event: gen_qcoreevent.QChildEvent): void =


  fQLineEdit_virtualbase_childEvent(self.h, event.h)

type QLineEditchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QLineEdit, slot: proc(super: QLineEditchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLineEditchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_childEvent(self: ptr cQLineEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_childEvent ".} =
  type Cb = proc(super: QLineEditchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QLineEdit(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QLineEdit, event: gen_qcoreevent.QEvent): void =


  fQLineEdit_virtualbase_customEvent(self.h, event.h)

type QLineEditcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QLineEdit, slot: proc(super: QLineEditcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLineEditcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_customEvent(self: ptr cQLineEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_customEvent ".} =
  type Cb = proc(super: QLineEditcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QLineEdit(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QLineEdit, signal: gen_qmetaobject.QMetaMethod): void =


  fQLineEdit_virtualbase_connectNotify(self.h, signal.h)

type QLineEditconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QLineEdit, slot: proc(super: QLineEditconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QLineEditconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_connectNotify(self: ptr cQLineEdit, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_connectNotify ".} =
  type Cb = proc(super: QLineEditconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QLineEdit(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QLineEdit, signal: gen_qmetaobject.QMetaMethod): void =


  fQLineEdit_virtualbase_disconnectNotify(self.h, signal.h)

type QLineEditdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QLineEdit, slot: proc(super: QLineEditdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QLineEditdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLineEdit_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLineEdit_disconnectNotify(self: ptr cQLineEdit, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QLineEdit_disconnectNotify ".} =
  type Cb = proc(super: QLineEditdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QLineEdit(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QLineEdit): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQLineEdit_staticMetaObject())
proc delete*(self: QLineEdit) =
  fcQLineEdit_delete(self.h)
