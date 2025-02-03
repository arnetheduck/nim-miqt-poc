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
{.compile("gen_qplaintextedit.cpp", cflags).}


type QPlainTextEditLineWrapMode* = cint
const
  QPlainTextEditNoWrap* = 0
  QPlainTextEditWidgetWidth* = 1



import gen_qplaintextedit_types
export gen_qplaintextedit_types

import
  gen_qabstractscrollarea,
  gen_qabstracttextdocumentlayout,
  gen_qcoreevent,
  gen_qevent,
  gen_qmenu,
  gen_qmetaobject,
  gen_qmimedata,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpagedpaintdevice,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpoint,
  gen_qrect,
  gen_qregexp,
  gen_qregularexpression,
  gen_qsize,
  gen_qtextcursor,
  gen_qtextdocument,
  gen_qtextedit,
  gen_qtextformat,
  gen_qtextlayout,
  gen_qtextobject,
  gen_qtextoption,
  gen_qurl,
  gen_qvariant,
  gen_qwidget
export
  gen_qabstractscrollarea,
  gen_qabstracttextdocumentlayout,
  gen_qcoreevent,
  gen_qevent,
  gen_qmenu,
  gen_qmetaobject,
  gen_qmimedata,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpagedpaintdevice,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpoint,
  gen_qrect,
  gen_qregexp,
  gen_qregularexpression,
  gen_qsize,
  gen_qtextcursor,
  gen_qtextdocument,
  gen_qtextedit,
  gen_qtextformat,
  gen_qtextlayout,
  gen_qtextobject,
  gen_qtextoption,
  gen_qurl,
  gen_qvariant,
  gen_qwidget

type cQPlainTextEdit*{.exportc: "QPlainTextEdit", incompleteStruct.} = object
type cQPlainTextDocumentLayout*{.exportc: "QPlainTextDocumentLayout", incompleteStruct.} = object

proc fcQPlainTextEdit_new(parent: pointer): ptr cQPlainTextEdit {.importc: "QPlainTextEdit_new".}
proc fcQPlainTextEdit_new2(): ptr cQPlainTextEdit {.importc: "QPlainTextEdit_new2".}
proc fcQPlainTextEdit_new3(text: struct_miqt_string): ptr cQPlainTextEdit {.importc: "QPlainTextEdit_new3".}
proc fcQPlainTextEdit_new4(text: struct_miqt_string, parent: pointer): ptr cQPlainTextEdit {.importc: "QPlainTextEdit_new4".}
proc fcQPlainTextEdit_metaObject(self: pointer, ): pointer {.importc: "QPlainTextEdit_metaObject".}
proc fcQPlainTextEdit_metacast(self: pointer, param1: cstring): pointer {.importc: "QPlainTextEdit_metacast".}
proc fcQPlainTextEdit_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPlainTextEdit_metacall".}
proc fcQPlainTextEdit_tr(s: cstring): struct_miqt_string {.importc: "QPlainTextEdit_tr".}
proc fcQPlainTextEdit_trUtf8(s: cstring): struct_miqt_string {.importc: "QPlainTextEdit_trUtf8".}
proc fcQPlainTextEdit_setDocument(self: pointer, document: pointer): void {.importc: "QPlainTextEdit_setDocument".}
proc fcQPlainTextEdit_document(self: pointer, ): pointer {.importc: "QPlainTextEdit_document".}
proc fcQPlainTextEdit_setPlaceholderText(self: pointer, placeholderText: struct_miqt_string): void {.importc: "QPlainTextEdit_setPlaceholderText".}
proc fcQPlainTextEdit_placeholderText(self: pointer, ): struct_miqt_string {.importc: "QPlainTextEdit_placeholderText".}
proc fcQPlainTextEdit_setTextCursor(self: pointer, cursor: pointer): void {.importc: "QPlainTextEdit_setTextCursor".}
proc fcQPlainTextEdit_textCursor(self: pointer, ): pointer {.importc: "QPlainTextEdit_textCursor".}
proc fcQPlainTextEdit_isReadOnly(self: pointer, ): bool {.importc: "QPlainTextEdit_isReadOnly".}
proc fcQPlainTextEdit_setReadOnly(self: pointer, ro: bool): void {.importc: "QPlainTextEdit_setReadOnly".}
proc fcQPlainTextEdit_setTextInteractionFlags(self: pointer, flags: cint): void {.importc: "QPlainTextEdit_setTextInteractionFlags".}
proc fcQPlainTextEdit_textInteractionFlags(self: pointer, ): cint {.importc: "QPlainTextEdit_textInteractionFlags".}
proc fcQPlainTextEdit_mergeCurrentCharFormat(self: pointer, modifier: pointer): void {.importc: "QPlainTextEdit_mergeCurrentCharFormat".}
proc fcQPlainTextEdit_setCurrentCharFormat(self: pointer, format: pointer): void {.importc: "QPlainTextEdit_setCurrentCharFormat".}
proc fcQPlainTextEdit_currentCharFormat(self: pointer, ): pointer {.importc: "QPlainTextEdit_currentCharFormat".}
proc fcQPlainTextEdit_tabChangesFocus(self: pointer, ): bool {.importc: "QPlainTextEdit_tabChangesFocus".}
proc fcQPlainTextEdit_setTabChangesFocus(self: pointer, b: bool): void {.importc: "QPlainTextEdit_setTabChangesFocus".}
proc fcQPlainTextEdit_setDocumentTitle(self: pointer, title: struct_miqt_string): void {.importc: "QPlainTextEdit_setDocumentTitle".}
proc fcQPlainTextEdit_documentTitle(self: pointer, ): struct_miqt_string {.importc: "QPlainTextEdit_documentTitle".}
proc fcQPlainTextEdit_isUndoRedoEnabled(self: pointer, ): bool {.importc: "QPlainTextEdit_isUndoRedoEnabled".}
proc fcQPlainTextEdit_setUndoRedoEnabled(self: pointer, enable: bool): void {.importc: "QPlainTextEdit_setUndoRedoEnabled".}
proc fcQPlainTextEdit_setMaximumBlockCount(self: pointer, maximum: cint): void {.importc: "QPlainTextEdit_setMaximumBlockCount".}
proc fcQPlainTextEdit_maximumBlockCount(self: pointer, ): cint {.importc: "QPlainTextEdit_maximumBlockCount".}
proc fcQPlainTextEdit_lineWrapMode(self: pointer, ): cint {.importc: "QPlainTextEdit_lineWrapMode".}
proc fcQPlainTextEdit_setLineWrapMode(self: pointer, mode: cint): void {.importc: "QPlainTextEdit_setLineWrapMode".}
proc fcQPlainTextEdit_wordWrapMode(self: pointer, ): cint {.importc: "QPlainTextEdit_wordWrapMode".}
proc fcQPlainTextEdit_setWordWrapMode(self: pointer, policy: cint): void {.importc: "QPlainTextEdit_setWordWrapMode".}
proc fcQPlainTextEdit_setBackgroundVisible(self: pointer, visible: bool): void {.importc: "QPlainTextEdit_setBackgroundVisible".}
proc fcQPlainTextEdit_backgroundVisible(self: pointer, ): bool {.importc: "QPlainTextEdit_backgroundVisible".}
proc fcQPlainTextEdit_setCenterOnScroll(self: pointer, enabled: bool): void {.importc: "QPlainTextEdit_setCenterOnScroll".}
proc fcQPlainTextEdit_centerOnScroll(self: pointer, ): bool {.importc: "QPlainTextEdit_centerOnScroll".}
proc fcQPlainTextEdit_find(self: pointer, exp: struct_miqt_string): bool {.importc: "QPlainTextEdit_find".}
proc fcQPlainTextEdit_findWithExp(self: pointer, exp: pointer): bool {.importc: "QPlainTextEdit_findWithExp".}
proc fcQPlainTextEdit_find2(self: pointer, exp: pointer): bool {.importc: "QPlainTextEdit_find2".}
proc fcQPlainTextEdit_toPlainText(self: pointer, ): struct_miqt_string {.importc: "QPlainTextEdit_toPlainText".}
proc fcQPlainTextEdit_ensureCursorVisible(self: pointer, ): void {.importc: "QPlainTextEdit_ensureCursorVisible".}
proc fcQPlainTextEdit_loadResource(self: pointer, typeVal: cint, name: pointer): pointer {.importc: "QPlainTextEdit_loadResource".}
proc fcQPlainTextEdit_createStandardContextMenu(self: pointer, ): pointer {.importc: "QPlainTextEdit_createStandardContextMenu".}
proc fcQPlainTextEdit_createStandardContextMenuWithPosition(self: pointer, position: pointer): pointer {.importc: "QPlainTextEdit_createStandardContextMenuWithPosition".}
proc fcQPlainTextEdit_cursorForPosition(self: pointer, pos: pointer): pointer {.importc: "QPlainTextEdit_cursorForPosition".}
proc fcQPlainTextEdit_cursorRect(self: pointer, cursor: pointer): pointer {.importc: "QPlainTextEdit_cursorRect".}
proc fcQPlainTextEdit_cursorRect2(self: pointer, ): pointer {.importc: "QPlainTextEdit_cursorRect2".}
proc fcQPlainTextEdit_anchorAt(self: pointer, pos: pointer): struct_miqt_string {.importc: "QPlainTextEdit_anchorAt".}
proc fcQPlainTextEdit_overwriteMode(self: pointer, ): bool {.importc: "QPlainTextEdit_overwriteMode".}
proc fcQPlainTextEdit_setOverwriteMode(self: pointer, overwrite: bool): void {.importc: "QPlainTextEdit_setOverwriteMode".}
proc fcQPlainTextEdit_tabStopWidth(self: pointer, ): cint {.importc: "QPlainTextEdit_tabStopWidth".}
proc fcQPlainTextEdit_setTabStopWidth(self: pointer, width: cint): void {.importc: "QPlainTextEdit_setTabStopWidth".}
proc fcQPlainTextEdit_tabStopDistance(self: pointer, ): float64 {.importc: "QPlainTextEdit_tabStopDistance".}
proc fcQPlainTextEdit_setTabStopDistance(self: pointer, distance: float64): void {.importc: "QPlainTextEdit_setTabStopDistance".}
proc fcQPlainTextEdit_cursorWidth(self: pointer, ): cint {.importc: "QPlainTextEdit_cursorWidth".}
proc fcQPlainTextEdit_setCursorWidth(self: pointer, width: cint): void {.importc: "QPlainTextEdit_setCursorWidth".}
proc fcQPlainTextEdit_setExtraSelections(self: pointer, selections: struct_miqt_array): void {.importc: "QPlainTextEdit_setExtraSelections".}
proc fcQPlainTextEdit_extraSelections(self: pointer, ): struct_miqt_array {.importc: "QPlainTextEdit_extraSelections".}
proc fcQPlainTextEdit_moveCursor(self: pointer, operation: cint): void {.importc: "QPlainTextEdit_moveCursor".}
proc fcQPlainTextEdit_canPaste(self: pointer, ): bool {.importc: "QPlainTextEdit_canPaste".}
proc fcQPlainTextEdit_print(self: pointer, printer: pointer): void {.importc: "QPlainTextEdit_print".}
proc fcQPlainTextEdit_blockCount(self: pointer, ): cint {.importc: "QPlainTextEdit_blockCount".}
proc fcQPlainTextEdit_inputMethodQuery(self: pointer, property: cint): pointer {.importc: "QPlainTextEdit_inputMethodQuery".}
proc fcQPlainTextEdit_inputMethodQuery2(self: pointer, query: cint, argument: pointer): pointer {.importc: "QPlainTextEdit_inputMethodQuery2".}
proc fcQPlainTextEdit_setPlainText(self: pointer, text: struct_miqt_string): void {.importc: "QPlainTextEdit_setPlainText".}
proc fcQPlainTextEdit_cut(self: pointer, ): void {.importc: "QPlainTextEdit_cut".}
proc fcQPlainTextEdit_copy(self: pointer, ): void {.importc: "QPlainTextEdit_copy".}
proc fcQPlainTextEdit_paste(self: pointer, ): void {.importc: "QPlainTextEdit_paste".}
proc fcQPlainTextEdit_undo(self: pointer, ): void {.importc: "QPlainTextEdit_undo".}
proc fcQPlainTextEdit_redo(self: pointer, ): void {.importc: "QPlainTextEdit_redo".}
proc fcQPlainTextEdit_clear(self: pointer, ): void {.importc: "QPlainTextEdit_clear".}
proc fcQPlainTextEdit_selectAll(self: pointer, ): void {.importc: "QPlainTextEdit_selectAll".}
proc fcQPlainTextEdit_insertPlainText(self: pointer, text: struct_miqt_string): void {.importc: "QPlainTextEdit_insertPlainText".}
proc fcQPlainTextEdit_appendPlainText(self: pointer, text: struct_miqt_string): void {.importc: "QPlainTextEdit_appendPlainText".}
proc fcQPlainTextEdit_appendHtml(self: pointer, html: struct_miqt_string): void {.importc: "QPlainTextEdit_appendHtml".}
proc fcQPlainTextEdit_centerCursor(self: pointer, ): void {.importc: "QPlainTextEdit_centerCursor".}
proc fcQPlainTextEdit_zoomIn(self: pointer, ): void {.importc: "QPlainTextEdit_zoomIn".}
proc fcQPlainTextEdit_zoomOut(self: pointer, ): void {.importc: "QPlainTextEdit_zoomOut".}
proc fcQPlainTextEdit_textChanged(self: pointer, ): void {.importc: "QPlainTextEdit_textChanged".}
proc fQPlainTextEdit_connect_textChanged(self: pointer, slot: int) {.importc: "QPlainTextEdit_connect_textChanged".}
proc fcQPlainTextEdit_undoAvailable(self: pointer, b: bool): void {.importc: "QPlainTextEdit_undoAvailable".}
proc fQPlainTextEdit_connect_undoAvailable(self: pointer, slot: int) {.importc: "QPlainTextEdit_connect_undoAvailable".}
proc fcQPlainTextEdit_redoAvailable(self: pointer, b: bool): void {.importc: "QPlainTextEdit_redoAvailable".}
proc fQPlainTextEdit_connect_redoAvailable(self: pointer, slot: int) {.importc: "QPlainTextEdit_connect_redoAvailable".}
proc fcQPlainTextEdit_copyAvailable(self: pointer, b: bool): void {.importc: "QPlainTextEdit_copyAvailable".}
proc fQPlainTextEdit_connect_copyAvailable(self: pointer, slot: int) {.importc: "QPlainTextEdit_connect_copyAvailable".}
proc fcQPlainTextEdit_selectionChanged(self: pointer, ): void {.importc: "QPlainTextEdit_selectionChanged".}
proc fQPlainTextEdit_connect_selectionChanged(self: pointer, slot: int) {.importc: "QPlainTextEdit_connect_selectionChanged".}
proc fcQPlainTextEdit_cursorPositionChanged(self: pointer, ): void {.importc: "QPlainTextEdit_cursorPositionChanged".}
proc fQPlainTextEdit_connect_cursorPositionChanged(self: pointer, slot: int) {.importc: "QPlainTextEdit_connect_cursorPositionChanged".}
proc fcQPlainTextEdit_updateRequest(self: pointer, rect: pointer, dy: cint): void {.importc: "QPlainTextEdit_updateRequest".}
proc fQPlainTextEdit_connect_updateRequest(self: pointer, slot: int) {.importc: "QPlainTextEdit_connect_updateRequest".}
proc fcQPlainTextEdit_blockCountChanged(self: pointer, newBlockCount: cint): void {.importc: "QPlainTextEdit_blockCountChanged".}
proc fQPlainTextEdit_connect_blockCountChanged(self: pointer, slot: int) {.importc: "QPlainTextEdit_connect_blockCountChanged".}
proc fcQPlainTextEdit_modificationChanged(self: pointer, param1: bool): void {.importc: "QPlainTextEdit_modificationChanged".}
proc fQPlainTextEdit_connect_modificationChanged(self: pointer, slot: int) {.importc: "QPlainTextEdit_connect_modificationChanged".}
proc fcQPlainTextEdit_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QPlainTextEdit_tr2".}
proc fcQPlainTextEdit_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPlainTextEdit_tr3".}
proc fcQPlainTextEdit_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QPlainTextEdit_trUtf82".}
proc fcQPlainTextEdit_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPlainTextEdit_trUtf83".}
proc fcQPlainTextEdit_find22(self: pointer, exp: struct_miqt_string, options: cint): bool {.importc: "QPlainTextEdit_find22".}
proc fcQPlainTextEdit_find23(self: pointer, exp: pointer, options: cint): bool {.importc: "QPlainTextEdit_find23".}
proc fcQPlainTextEdit_find24(self: pointer, exp: pointer, options: cint): bool {.importc: "QPlainTextEdit_find24".}
proc fcQPlainTextEdit_moveCursor2(self: pointer, operation: cint, mode: cint): void {.importc: "QPlainTextEdit_moveCursor2".}
proc fcQPlainTextEdit_zoomIn1(self: pointer, range: cint): void {.importc: "QPlainTextEdit_zoomIn1".}
proc fcQPlainTextEdit_zoomOut1(self: pointer, range: cint): void {.importc: "QPlainTextEdit_zoomOut1".}
proc fQPlainTextEdit_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QPlainTextEdit_virtualbase_metacall".}
proc fcQPlainTextEdit_override_virtual_metacall(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_metacall".}
proc fQPlainTextEdit_virtualbase_loadResource(self: pointer, typeVal: cint, name: pointer): pointer{.importc: "QPlainTextEdit_virtualbase_loadResource".}
proc fcQPlainTextEdit_override_virtual_loadResource(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_loadResource".}
proc fQPlainTextEdit_virtualbase_inputMethodQuery(self: pointer, property: cint): pointer{.importc: "QPlainTextEdit_virtualbase_inputMethodQuery".}
proc fcQPlainTextEdit_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_inputMethodQuery".}
proc fQPlainTextEdit_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QPlainTextEdit_virtualbase_event".}
proc fcQPlainTextEdit_override_virtual_event(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_event".}
proc fQPlainTextEdit_virtualbase_timerEvent(self: pointer, e: pointer): void{.importc: "QPlainTextEdit_virtualbase_timerEvent".}
proc fcQPlainTextEdit_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_timerEvent".}
proc fQPlainTextEdit_virtualbase_keyPressEvent(self: pointer, e: pointer): void{.importc: "QPlainTextEdit_virtualbase_keyPressEvent".}
proc fcQPlainTextEdit_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_keyPressEvent".}
proc fQPlainTextEdit_virtualbase_keyReleaseEvent(self: pointer, e: pointer): void{.importc: "QPlainTextEdit_virtualbase_keyReleaseEvent".}
proc fcQPlainTextEdit_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_keyReleaseEvent".}
proc fQPlainTextEdit_virtualbase_resizeEvent(self: pointer, e: pointer): void{.importc: "QPlainTextEdit_virtualbase_resizeEvent".}
proc fcQPlainTextEdit_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_resizeEvent".}
proc fQPlainTextEdit_virtualbase_paintEvent(self: pointer, e: pointer): void{.importc: "QPlainTextEdit_virtualbase_paintEvent".}
proc fcQPlainTextEdit_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_paintEvent".}
proc fQPlainTextEdit_virtualbase_mousePressEvent(self: pointer, e: pointer): void{.importc: "QPlainTextEdit_virtualbase_mousePressEvent".}
proc fcQPlainTextEdit_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_mousePressEvent".}
proc fQPlainTextEdit_virtualbase_mouseMoveEvent(self: pointer, e: pointer): void{.importc: "QPlainTextEdit_virtualbase_mouseMoveEvent".}
proc fcQPlainTextEdit_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_mouseMoveEvent".}
proc fQPlainTextEdit_virtualbase_mouseReleaseEvent(self: pointer, e: pointer): void{.importc: "QPlainTextEdit_virtualbase_mouseReleaseEvent".}
proc fcQPlainTextEdit_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_mouseReleaseEvent".}
proc fQPlainTextEdit_virtualbase_mouseDoubleClickEvent(self: pointer, e: pointer): void{.importc: "QPlainTextEdit_virtualbase_mouseDoubleClickEvent".}
proc fcQPlainTextEdit_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_mouseDoubleClickEvent".}
proc fQPlainTextEdit_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QPlainTextEdit_virtualbase_focusNextPrevChild".}
proc fcQPlainTextEdit_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_focusNextPrevChild".}
proc fQPlainTextEdit_virtualbase_contextMenuEvent(self: pointer, e: pointer): void{.importc: "QPlainTextEdit_virtualbase_contextMenuEvent".}
proc fcQPlainTextEdit_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_contextMenuEvent".}
proc fQPlainTextEdit_virtualbase_dragEnterEvent(self: pointer, e: pointer): void{.importc: "QPlainTextEdit_virtualbase_dragEnterEvent".}
proc fcQPlainTextEdit_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_dragEnterEvent".}
proc fQPlainTextEdit_virtualbase_dragLeaveEvent(self: pointer, e: pointer): void{.importc: "QPlainTextEdit_virtualbase_dragLeaveEvent".}
proc fcQPlainTextEdit_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_dragLeaveEvent".}
proc fQPlainTextEdit_virtualbase_dragMoveEvent(self: pointer, e: pointer): void{.importc: "QPlainTextEdit_virtualbase_dragMoveEvent".}
proc fcQPlainTextEdit_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_dragMoveEvent".}
proc fQPlainTextEdit_virtualbase_dropEvent(self: pointer, e: pointer): void{.importc: "QPlainTextEdit_virtualbase_dropEvent".}
proc fcQPlainTextEdit_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_dropEvent".}
proc fQPlainTextEdit_virtualbase_focusInEvent(self: pointer, e: pointer): void{.importc: "QPlainTextEdit_virtualbase_focusInEvent".}
proc fcQPlainTextEdit_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_focusInEvent".}
proc fQPlainTextEdit_virtualbase_focusOutEvent(self: pointer, e: pointer): void{.importc: "QPlainTextEdit_virtualbase_focusOutEvent".}
proc fcQPlainTextEdit_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_focusOutEvent".}
proc fQPlainTextEdit_virtualbase_showEvent(self: pointer, param1: pointer): void{.importc: "QPlainTextEdit_virtualbase_showEvent".}
proc fcQPlainTextEdit_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_showEvent".}
proc fQPlainTextEdit_virtualbase_changeEvent(self: pointer, e: pointer): void{.importc: "QPlainTextEdit_virtualbase_changeEvent".}
proc fcQPlainTextEdit_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_changeEvent".}
proc fQPlainTextEdit_virtualbase_wheelEvent(self: pointer, e: pointer): void{.importc: "QPlainTextEdit_virtualbase_wheelEvent".}
proc fcQPlainTextEdit_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_wheelEvent".}
proc fQPlainTextEdit_virtualbase_createMimeDataFromSelection(self: pointer, ): pointer{.importc: "QPlainTextEdit_virtualbase_createMimeDataFromSelection".}
proc fcQPlainTextEdit_override_virtual_createMimeDataFromSelection(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_createMimeDataFromSelection".}
proc fQPlainTextEdit_virtualbase_canInsertFromMimeData(self: pointer, source: pointer): bool{.importc: "QPlainTextEdit_virtualbase_canInsertFromMimeData".}
proc fcQPlainTextEdit_override_virtual_canInsertFromMimeData(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_canInsertFromMimeData".}
proc fQPlainTextEdit_virtualbase_insertFromMimeData(self: pointer, source: pointer): void{.importc: "QPlainTextEdit_virtualbase_insertFromMimeData".}
proc fcQPlainTextEdit_override_virtual_insertFromMimeData(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_insertFromMimeData".}
proc fQPlainTextEdit_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QPlainTextEdit_virtualbase_inputMethodEvent".}
proc fcQPlainTextEdit_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_inputMethodEvent".}
proc fQPlainTextEdit_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void{.importc: "QPlainTextEdit_virtualbase_scrollContentsBy".}
proc fcQPlainTextEdit_override_virtual_scrollContentsBy(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_scrollContentsBy".}
proc fQPlainTextEdit_virtualbase_doSetTextCursor(self: pointer, cursor: pointer): void{.importc: "QPlainTextEdit_virtualbase_doSetTextCursor".}
proc fcQPlainTextEdit_override_virtual_doSetTextCursor(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_doSetTextCursor".}
proc fQPlainTextEdit_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QPlainTextEdit_virtualbase_minimumSizeHint".}
proc fcQPlainTextEdit_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_minimumSizeHint".}
proc fQPlainTextEdit_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QPlainTextEdit_virtualbase_sizeHint".}
proc fcQPlainTextEdit_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_sizeHint".}
proc fQPlainTextEdit_virtualbase_setupViewport(self: pointer, viewport: pointer): void{.importc: "QPlainTextEdit_virtualbase_setupViewport".}
proc fcQPlainTextEdit_override_virtual_setupViewport(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_setupViewport".}
proc fQPlainTextEdit_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool{.importc: "QPlainTextEdit_virtualbase_eventFilter".}
proc fcQPlainTextEdit_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_eventFilter".}
proc fQPlainTextEdit_virtualbase_viewportEvent(self: pointer, param1: pointer): bool{.importc: "QPlainTextEdit_virtualbase_viewportEvent".}
proc fcQPlainTextEdit_override_virtual_viewportEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_viewportEvent".}
proc fQPlainTextEdit_virtualbase_viewportSizeHint(self: pointer, ): pointer{.importc: "QPlainTextEdit_virtualbase_viewportSizeHint".}
proc fcQPlainTextEdit_override_virtual_viewportSizeHint(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_viewportSizeHint".}
proc fQPlainTextEdit_virtualbase_devType(self: pointer, ): cint{.importc: "QPlainTextEdit_virtualbase_devType".}
proc fcQPlainTextEdit_override_virtual_devType(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_devType".}
proc fQPlainTextEdit_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QPlainTextEdit_virtualbase_setVisible".}
proc fcQPlainTextEdit_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_setVisible".}
proc fQPlainTextEdit_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QPlainTextEdit_virtualbase_heightForWidth".}
proc fcQPlainTextEdit_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_heightForWidth".}
proc fQPlainTextEdit_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QPlainTextEdit_virtualbase_hasHeightForWidth".}
proc fcQPlainTextEdit_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_hasHeightForWidth".}
proc fQPlainTextEdit_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QPlainTextEdit_virtualbase_paintEngine".}
proc fcQPlainTextEdit_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_paintEngine".}
proc fQPlainTextEdit_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QPlainTextEdit_virtualbase_enterEvent".}
proc fcQPlainTextEdit_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_enterEvent".}
proc fQPlainTextEdit_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QPlainTextEdit_virtualbase_leaveEvent".}
proc fcQPlainTextEdit_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_leaveEvent".}
proc fQPlainTextEdit_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QPlainTextEdit_virtualbase_moveEvent".}
proc fcQPlainTextEdit_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_moveEvent".}
proc fQPlainTextEdit_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QPlainTextEdit_virtualbase_closeEvent".}
proc fcQPlainTextEdit_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_closeEvent".}
proc fQPlainTextEdit_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QPlainTextEdit_virtualbase_tabletEvent".}
proc fcQPlainTextEdit_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_tabletEvent".}
proc fQPlainTextEdit_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QPlainTextEdit_virtualbase_actionEvent".}
proc fcQPlainTextEdit_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_actionEvent".}
proc fQPlainTextEdit_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QPlainTextEdit_virtualbase_hideEvent".}
proc fcQPlainTextEdit_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_hideEvent".}
proc fQPlainTextEdit_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QPlainTextEdit_virtualbase_nativeEvent".}
proc fcQPlainTextEdit_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_nativeEvent".}
proc fQPlainTextEdit_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QPlainTextEdit_virtualbase_metric".}
proc fcQPlainTextEdit_override_virtual_metric(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_metric".}
proc fQPlainTextEdit_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QPlainTextEdit_virtualbase_initPainter".}
proc fcQPlainTextEdit_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_initPainter".}
proc fQPlainTextEdit_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QPlainTextEdit_virtualbase_redirected".}
proc fcQPlainTextEdit_override_virtual_redirected(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_redirected".}
proc fQPlainTextEdit_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QPlainTextEdit_virtualbase_sharedPainter".}
proc fcQPlainTextEdit_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_sharedPainter".}
proc fQPlainTextEdit_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QPlainTextEdit_virtualbase_childEvent".}
proc fcQPlainTextEdit_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_childEvent".}
proc fQPlainTextEdit_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QPlainTextEdit_virtualbase_customEvent".}
proc fcQPlainTextEdit_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_customEvent".}
proc fQPlainTextEdit_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QPlainTextEdit_virtualbase_connectNotify".}
proc fcQPlainTextEdit_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_connectNotify".}
proc fQPlainTextEdit_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QPlainTextEdit_virtualbase_disconnectNotify".}
proc fcQPlainTextEdit_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QPlainTextEdit_override_virtual_disconnectNotify".}
proc fcQPlainTextEdit_delete(self: pointer) {.importc: "QPlainTextEdit_delete".}
proc fcQPlainTextDocumentLayout_new(document: pointer): ptr cQPlainTextDocumentLayout {.importc: "QPlainTextDocumentLayout_new".}
proc fcQPlainTextDocumentLayout_metaObject(self: pointer, ): pointer {.importc: "QPlainTextDocumentLayout_metaObject".}
proc fcQPlainTextDocumentLayout_metacast(self: pointer, param1: cstring): pointer {.importc: "QPlainTextDocumentLayout_metacast".}
proc fcQPlainTextDocumentLayout_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPlainTextDocumentLayout_metacall".}
proc fcQPlainTextDocumentLayout_tr(s: cstring): struct_miqt_string {.importc: "QPlainTextDocumentLayout_tr".}
proc fcQPlainTextDocumentLayout_trUtf8(s: cstring): struct_miqt_string {.importc: "QPlainTextDocumentLayout_trUtf8".}
proc fcQPlainTextDocumentLayout_draw(self: pointer, param1: pointer, param2: pointer): void {.importc: "QPlainTextDocumentLayout_draw".}
proc fcQPlainTextDocumentLayout_hitTest(self: pointer, param1: pointer, param2: cint): cint {.importc: "QPlainTextDocumentLayout_hitTest".}
proc fcQPlainTextDocumentLayout_pageCount(self: pointer, ): cint {.importc: "QPlainTextDocumentLayout_pageCount".}
proc fcQPlainTextDocumentLayout_documentSize(self: pointer, ): pointer {.importc: "QPlainTextDocumentLayout_documentSize".}
proc fcQPlainTextDocumentLayout_frameBoundingRect(self: pointer, param1: pointer): pointer {.importc: "QPlainTextDocumentLayout_frameBoundingRect".}
proc fcQPlainTextDocumentLayout_blockBoundingRect(self: pointer, blockVal: pointer): pointer {.importc: "QPlainTextDocumentLayout_blockBoundingRect".}
proc fcQPlainTextDocumentLayout_ensureBlockLayout(self: pointer, blockVal: pointer): void {.importc: "QPlainTextDocumentLayout_ensureBlockLayout".}
proc fcQPlainTextDocumentLayout_setCursorWidth(self: pointer, width: cint): void {.importc: "QPlainTextDocumentLayout_setCursorWidth".}
proc fcQPlainTextDocumentLayout_cursorWidth(self: pointer, ): cint {.importc: "QPlainTextDocumentLayout_cursorWidth".}
proc fcQPlainTextDocumentLayout_requestUpdate(self: pointer, ): void {.importc: "QPlainTextDocumentLayout_requestUpdate".}
proc fcQPlainTextDocumentLayout_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QPlainTextDocumentLayout_tr2".}
proc fcQPlainTextDocumentLayout_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPlainTextDocumentLayout_tr3".}
proc fcQPlainTextDocumentLayout_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QPlainTextDocumentLayout_trUtf82".}
proc fcQPlainTextDocumentLayout_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPlainTextDocumentLayout_trUtf83".}
proc fQPlainTextDocumentLayout_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QPlainTextDocumentLayout_virtualbase_metacall".}
proc fcQPlainTextDocumentLayout_override_virtual_metacall(self: pointer, slot: int) {.importc: "QPlainTextDocumentLayout_override_virtual_metacall".}
proc fQPlainTextDocumentLayout_virtualbase_draw(self: pointer, param1: pointer, param2: pointer): void{.importc: "QPlainTextDocumentLayout_virtualbase_draw".}
proc fcQPlainTextDocumentLayout_override_virtual_draw(self: pointer, slot: int) {.importc: "QPlainTextDocumentLayout_override_virtual_draw".}
proc fQPlainTextDocumentLayout_virtualbase_hitTest(self: pointer, param1: pointer, param2: cint): cint{.importc: "QPlainTextDocumentLayout_virtualbase_hitTest".}
proc fcQPlainTextDocumentLayout_override_virtual_hitTest(self: pointer, slot: int) {.importc: "QPlainTextDocumentLayout_override_virtual_hitTest".}
proc fQPlainTextDocumentLayout_virtualbase_pageCount(self: pointer, ): cint{.importc: "QPlainTextDocumentLayout_virtualbase_pageCount".}
proc fcQPlainTextDocumentLayout_override_virtual_pageCount(self: pointer, slot: int) {.importc: "QPlainTextDocumentLayout_override_virtual_pageCount".}
proc fQPlainTextDocumentLayout_virtualbase_documentSize(self: pointer, ): pointer{.importc: "QPlainTextDocumentLayout_virtualbase_documentSize".}
proc fcQPlainTextDocumentLayout_override_virtual_documentSize(self: pointer, slot: int) {.importc: "QPlainTextDocumentLayout_override_virtual_documentSize".}
proc fQPlainTextDocumentLayout_virtualbase_frameBoundingRect(self: pointer, param1: pointer): pointer{.importc: "QPlainTextDocumentLayout_virtualbase_frameBoundingRect".}
proc fcQPlainTextDocumentLayout_override_virtual_frameBoundingRect(self: pointer, slot: int) {.importc: "QPlainTextDocumentLayout_override_virtual_frameBoundingRect".}
proc fQPlainTextDocumentLayout_virtualbase_blockBoundingRect(self: pointer, blockVal: pointer): pointer{.importc: "QPlainTextDocumentLayout_virtualbase_blockBoundingRect".}
proc fcQPlainTextDocumentLayout_override_virtual_blockBoundingRect(self: pointer, slot: int) {.importc: "QPlainTextDocumentLayout_override_virtual_blockBoundingRect".}
proc fQPlainTextDocumentLayout_virtualbase_documentChanged(self: pointer, fromVal: cint, param2: cint, charsAdded: cint): void{.importc: "QPlainTextDocumentLayout_virtualbase_documentChanged".}
proc fcQPlainTextDocumentLayout_override_virtual_documentChanged(self: pointer, slot: int) {.importc: "QPlainTextDocumentLayout_override_virtual_documentChanged".}
proc fQPlainTextDocumentLayout_virtualbase_resizeInlineObject(self: pointer, item: pointer, posInDocument: cint, format: pointer): void{.importc: "QPlainTextDocumentLayout_virtualbase_resizeInlineObject".}
proc fcQPlainTextDocumentLayout_override_virtual_resizeInlineObject(self: pointer, slot: int) {.importc: "QPlainTextDocumentLayout_override_virtual_resizeInlineObject".}
proc fQPlainTextDocumentLayout_virtualbase_positionInlineObject(self: pointer, item: pointer, posInDocument: cint, format: pointer): void{.importc: "QPlainTextDocumentLayout_virtualbase_positionInlineObject".}
proc fcQPlainTextDocumentLayout_override_virtual_positionInlineObject(self: pointer, slot: int) {.importc: "QPlainTextDocumentLayout_override_virtual_positionInlineObject".}
proc fQPlainTextDocumentLayout_virtualbase_drawInlineObject(self: pointer, painter: pointer, rect: pointer, objectVal: pointer, posInDocument: cint, format: pointer): void{.importc: "QPlainTextDocumentLayout_virtualbase_drawInlineObject".}
proc fcQPlainTextDocumentLayout_override_virtual_drawInlineObject(self: pointer, slot: int) {.importc: "QPlainTextDocumentLayout_override_virtual_drawInlineObject".}
proc fQPlainTextDocumentLayout_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QPlainTextDocumentLayout_virtualbase_event".}
proc fcQPlainTextDocumentLayout_override_virtual_event(self: pointer, slot: int) {.importc: "QPlainTextDocumentLayout_override_virtual_event".}
proc fQPlainTextDocumentLayout_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QPlainTextDocumentLayout_virtualbase_eventFilter".}
proc fcQPlainTextDocumentLayout_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QPlainTextDocumentLayout_override_virtual_eventFilter".}
proc fQPlainTextDocumentLayout_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QPlainTextDocumentLayout_virtualbase_timerEvent".}
proc fcQPlainTextDocumentLayout_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QPlainTextDocumentLayout_override_virtual_timerEvent".}
proc fQPlainTextDocumentLayout_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QPlainTextDocumentLayout_virtualbase_childEvent".}
proc fcQPlainTextDocumentLayout_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QPlainTextDocumentLayout_override_virtual_childEvent".}
proc fQPlainTextDocumentLayout_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QPlainTextDocumentLayout_virtualbase_customEvent".}
proc fcQPlainTextDocumentLayout_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QPlainTextDocumentLayout_override_virtual_customEvent".}
proc fQPlainTextDocumentLayout_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QPlainTextDocumentLayout_virtualbase_connectNotify".}
proc fcQPlainTextDocumentLayout_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QPlainTextDocumentLayout_override_virtual_connectNotify".}
proc fQPlainTextDocumentLayout_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QPlainTextDocumentLayout_virtualbase_disconnectNotify".}
proc fcQPlainTextDocumentLayout_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QPlainTextDocumentLayout_override_virtual_disconnectNotify".}
proc fcQPlainTextDocumentLayout_delete(self: pointer) {.importc: "QPlainTextDocumentLayout_delete".}


func init*(T: type QPlainTextEdit, h: ptr cQPlainTextEdit): QPlainTextEdit =
  T(h: h)
proc create*(T: type QPlainTextEdit, parent: gen_qwidget.QWidget): QPlainTextEdit =

  QPlainTextEdit.init(fcQPlainTextEdit_new(parent.h))
proc create*(T: type QPlainTextEdit, ): QPlainTextEdit =

  QPlainTextEdit.init(fcQPlainTextEdit_new2())
proc create*(T: type QPlainTextEdit, text: string): QPlainTextEdit =

  QPlainTextEdit.init(fcQPlainTextEdit_new3(struct_miqt_string(data: text, len: csize_t(len(text)))))
proc create*(T: type QPlainTextEdit, text: string, parent: gen_qwidget.QWidget): QPlainTextEdit =

  QPlainTextEdit.init(fcQPlainTextEdit_new4(struct_miqt_string(data: text, len: csize_t(len(text))), parent.h))
proc metaObject*(self: QPlainTextEdit, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQPlainTextEdit_metaObject(self.h))

proc metacast*(self: QPlainTextEdit, param1: cstring): pointer =

  fcQPlainTextEdit_metacast(self.h, param1)

proc metacall*(self: QPlainTextEdit, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQPlainTextEdit_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QPlainTextEdit, s: cstring): string =

  let v_ms = fcQPlainTextEdit_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QPlainTextEdit, s: cstring): string =

  let v_ms = fcQPlainTextEdit_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setDocument*(self: QPlainTextEdit, document: gen_qtextdocument.QTextDocument): void =

  fcQPlainTextEdit_setDocument(self.h, document.h)

proc document*(self: QPlainTextEdit, ): gen_qtextdocument.QTextDocument =

  gen_qtextdocument.QTextDocument(h: fcQPlainTextEdit_document(self.h))

proc setPlaceholderText*(self: QPlainTextEdit, placeholderText: string): void =

  fcQPlainTextEdit_setPlaceholderText(self.h, struct_miqt_string(data: placeholderText, len: csize_t(len(placeholderText))))

proc placeholderText*(self: QPlainTextEdit, ): string =

  let v_ms = fcQPlainTextEdit_placeholderText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setTextCursor*(self: QPlainTextEdit, cursor: gen_qtextcursor.QTextCursor): void =

  fcQPlainTextEdit_setTextCursor(self.h, cursor.h)

proc textCursor*(self: QPlainTextEdit, ): gen_qtextcursor.QTextCursor =

  gen_qtextcursor.QTextCursor(h: fcQPlainTextEdit_textCursor(self.h))

proc isReadOnly*(self: QPlainTextEdit, ): bool =

  fcQPlainTextEdit_isReadOnly(self.h)

proc setReadOnly*(self: QPlainTextEdit, ro: bool): void =

  fcQPlainTextEdit_setReadOnly(self.h, ro)

proc setTextInteractionFlags*(self: QPlainTextEdit, flags: gen_qnamespace.TextInteractionFlag): void =

  fcQPlainTextEdit_setTextInteractionFlags(self.h, cint(flags))

proc textInteractionFlags*(self: QPlainTextEdit, ): gen_qnamespace.TextInteractionFlag =

  gen_qnamespace.TextInteractionFlag(fcQPlainTextEdit_textInteractionFlags(self.h))

proc mergeCurrentCharFormat*(self: QPlainTextEdit, modifier: gen_qtextformat.QTextCharFormat): void =

  fcQPlainTextEdit_mergeCurrentCharFormat(self.h, modifier.h)

proc setCurrentCharFormat*(self: QPlainTextEdit, format: gen_qtextformat.QTextCharFormat): void =

  fcQPlainTextEdit_setCurrentCharFormat(self.h, format.h)

proc currentCharFormat*(self: QPlainTextEdit, ): gen_qtextformat.QTextCharFormat =

  gen_qtextformat.QTextCharFormat(h: fcQPlainTextEdit_currentCharFormat(self.h))

proc tabChangesFocus*(self: QPlainTextEdit, ): bool =

  fcQPlainTextEdit_tabChangesFocus(self.h)

proc setTabChangesFocus*(self: QPlainTextEdit, b: bool): void =

  fcQPlainTextEdit_setTabChangesFocus(self.h, b)

proc setDocumentTitle*(self: QPlainTextEdit, title: string): void =

  fcQPlainTextEdit_setDocumentTitle(self.h, struct_miqt_string(data: title, len: csize_t(len(title))))

proc documentTitle*(self: QPlainTextEdit, ): string =

  let v_ms = fcQPlainTextEdit_documentTitle(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isUndoRedoEnabled*(self: QPlainTextEdit, ): bool =

  fcQPlainTextEdit_isUndoRedoEnabled(self.h)

proc setUndoRedoEnabled*(self: QPlainTextEdit, enable: bool): void =

  fcQPlainTextEdit_setUndoRedoEnabled(self.h, enable)

proc setMaximumBlockCount*(self: QPlainTextEdit, maximum: cint): void =

  fcQPlainTextEdit_setMaximumBlockCount(self.h, maximum)

proc maximumBlockCount*(self: QPlainTextEdit, ): cint =

  fcQPlainTextEdit_maximumBlockCount(self.h)

proc lineWrapMode*(self: QPlainTextEdit, ): QPlainTextEditLineWrapMode =

  QPlainTextEditLineWrapMode(fcQPlainTextEdit_lineWrapMode(self.h))

proc setLineWrapMode*(self: QPlainTextEdit, mode: QPlainTextEditLineWrapMode): void =

  fcQPlainTextEdit_setLineWrapMode(self.h, cint(mode))

proc wordWrapMode*(self: QPlainTextEdit, ): gen_qtextoption.QTextOptionWrapMode =

  gen_qtextoption.QTextOptionWrapMode(fcQPlainTextEdit_wordWrapMode(self.h))

proc setWordWrapMode*(self: QPlainTextEdit, policy: gen_qtextoption.QTextOptionWrapMode): void =

  fcQPlainTextEdit_setWordWrapMode(self.h, cint(policy))

proc setBackgroundVisible*(self: QPlainTextEdit, visible: bool): void =

  fcQPlainTextEdit_setBackgroundVisible(self.h, visible)

proc backgroundVisible*(self: QPlainTextEdit, ): bool =

  fcQPlainTextEdit_backgroundVisible(self.h)

proc setCenterOnScroll*(self: QPlainTextEdit, enabled: bool): void =

  fcQPlainTextEdit_setCenterOnScroll(self.h, enabled)

proc centerOnScroll*(self: QPlainTextEdit, ): bool =

  fcQPlainTextEdit_centerOnScroll(self.h)

proc find*(self: QPlainTextEdit, exp: string): bool =

  fcQPlainTextEdit_find(self.h, struct_miqt_string(data: exp, len: csize_t(len(exp))))

proc findWithExp*(self: QPlainTextEdit, exp: gen_qregexp.QRegExp): bool =

  fcQPlainTextEdit_findWithExp(self.h, exp.h)

proc find2*(self: QPlainTextEdit, exp: gen_qregularexpression.QRegularExpression): bool =

  fcQPlainTextEdit_find2(self.h, exp.h)

proc toPlainText*(self: QPlainTextEdit, ): string =

  let v_ms = fcQPlainTextEdit_toPlainText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc ensureCursorVisible*(self: QPlainTextEdit, ): void =

  fcQPlainTextEdit_ensureCursorVisible(self.h)

proc loadResource*(self: QPlainTextEdit, typeVal: cint, name: gen_qurl.QUrl): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQPlainTextEdit_loadResource(self.h, typeVal, name.h))

proc createStandardContextMenu*(self: QPlainTextEdit, ): gen_qmenu.QMenu =

  gen_qmenu.QMenu(h: fcQPlainTextEdit_createStandardContextMenu(self.h))

proc createStandardContextMenuWithPosition*(self: QPlainTextEdit, position: gen_qpoint.QPoint): gen_qmenu.QMenu =

  gen_qmenu.QMenu(h: fcQPlainTextEdit_createStandardContextMenuWithPosition(self.h, position.h))

proc cursorForPosition*(self: QPlainTextEdit, pos: gen_qpoint.QPoint): gen_qtextcursor.QTextCursor =

  gen_qtextcursor.QTextCursor(h: fcQPlainTextEdit_cursorForPosition(self.h, pos.h))

proc cursorRect*(self: QPlainTextEdit, cursor: gen_qtextcursor.QTextCursor): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQPlainTextEdit_cursorRect(self.h, cursor.h))

proc cursorRect2*(self: QPlainTextEdit, ): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQPlainTextEdit_cursorRect2(self.h))

proc anchorAt*(self: QPlainTextEdit, pos: gen_qpoint.QPoint): string =

  let v_ms = fcQPlainTextEdit_anchorAt(self.h, pos.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc overwriteMode*(self: QPlainTextEdit, ): bool =

  fcQPlainTextEdit_overwriteMode(self.h)

proc setOverwriteMode*(self: QPlainTextEdit, overwrite: bool): void =

  fcQPlainTextEdit_setOverwriteMode(self.h, overwrite)

proc tabStopWidth*(self: QPlainTextEdit, ): cint =

  fcQPlainTextEdit_tabStopWidth(self.h)

proc setTabStopWidth*(self: QPlainTextEdit, width: cint): void =

  fcQPlainTextEdit_setTabStopWidth(self.h, width)

proc tabStopDistance*(self: QPlainTextEdit, ): float64 =

  fcQPlainTextEdit_tabStopDistance(self.h)

proc setTabStopDistance*(self: QPlainTextEdit, distance: float64): void =

  fcQPlainTextEdit_setTabStopDistance(self.h, distance)

proc cursorWidth*(self: QPlainTextEdit, ): cint =

  fcQPlainTextEdit_cursorWidth(self.h)

proc setCursorWidth*(self: QPlainTextEdit, width: cint): void =

  fcQPlainTextEdit_setCursorWidth(self.h, width)

proc setExtraSelections*(self: QPlainTextEdit, selections: seq[gen_qtextedit.QTextEditExtraSelection]): void =

  var selections_CArray = newSeq[pointer](len(selections))
  for i in 0..<len(selections):
    selections_CArray[i] = selections[i].h

  fcQPlainTextEdit_setExtraSelections(self.h, struct_miqt_array(len: csize_t(len(selections)), data: if len(selections) == 0: nil else: addr(selections_CArray[0])))

proc extraSelections*(self: QPlainTextEdit, ): seq[gen_qtextedit.QTextEditExtraSelection] =

  var v_ma = fcQPlainTextEdit_extraSelections(self.h)
  var vx_ret = newSeq[gen_qtextedit.QTextEditExtraSelection](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qtextedit.QTextEditExtraSelection(h: v_outCast[i])
  vx_ret

proc moveCursor*(self: QPlainTextEdit, operation: gen_qtextcursor.QTextCursorMoveOperation): void =

  fcQPlainTextEdit_moveCursor(self.h, cint(operation))

proc canPaste*(self: QPlainTextEdit, ): bool =

  fcQPlainTextEdit_canPaste(self.h)

proc print*(self: QPlainTextEdit, printer: gen_qpagedpaintdevice.QPagedPaintDevice): void =

  fcQPlainTextEdit_print(self.h, printer.h)

proc blockCount*(self: QPlainTextEdit, ): cint =

  fcQPlainTextEdit_blockCount(self.h)

proc inputMethodQuery*(self: QPlainTextEdit, property: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQPlainTextEdit_inputMethodQuery(self.h, cint(property)))

proc inputMethodQuery2*(self: QPlainTextEdit, query: gen_qnamespace.InputMethodQuery, argument: gen_qvariant.QVariant): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQPlainTextEdit_inputMethodQuery2(self.h, cint(query), argument.h))

proc setPlainText*(self: QPlainTextEdit, text: string): void =

  fcQPlainTextEdit_setPlainText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc cut*(self: QPlainTextEdit, ): void =

  fcQPlainTextEdit_cut(self.h)

proc copy*(self: QPlainTextEdit, ): void =

  fcQPlainTextEdit_copy(self.h)

proc paste*(self: QPlainTextEdit, ): void =

  fcQPlainTextEdit_paste(self.h)

proc undo*(self: QPlainTextEdit, ): void =

  fcQPlainTextEdit_undo(self.h)

proc redo*(self: QPlainTextEdit, ): void =

  fcQPlainTextEdit_redo(self.h)

proc clear*(self: QPlainTextEdit, ): void =

  fcQPlainTextEdit_clear(self.h)

proc selectAll*(self: QPlainTextEdit, ): void =

  fcQPlainTextEdit_selectAll(self.h)

proc insertPlainText*(self: QPlainTextEdit, text: string): void =

  fcQPlainTextEdit_insertPlainText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc appendPlainText*(self: QPlainTextEdit, text: string): void =

  fcQPlainTextEdit_appendPlainText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc appendHtml*(self: QPlainTextEdit, html: string): void =

  fcQPlainTextEdit_appendHtml(self.h, struct_miqt_string(data: html, len: csize_t(len(html))))

proc centerCursor*(self: QPlainTextEdit, ): void =

  fcQPlainTextEdit_centerCursor(self.h)

proc zoomIn*(self: QPlainTextEdit, ): void =

  fcQPlainTextEdit_zoomIn(self.h)

proc zoomOut*(self: QPlainTextEdit, ): void =

  fcQPlainTextEdit_zoomOut(self.h)

proc textChanged*(self: QPlainTextEdit, ): void =

  fcQPlainTextEdit_textChanged(self.h)

proc miqt_exec_callback_QPlainTextEdit_textChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc ontextChanged*(self: QPlainTextEdit, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQPlainTextEdit_connect_textChanged(self.h, cast[int](addr tmp[]))
proc undoAvailable*(self: QPlainTextEdit, b: bool): void =

  fcQPlainTextEdit_undoAvailable(self.h, b)

proc miqt_exec_callback_QPlainTextEdit_undoAvailable(slot: int, b: bool) {.exportc.} =
  type Cb = proc(b: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = b


  nimfunc[](slotval1)

proc onundoAvailable*(self: QPlainTextEdit, slot: proc(b: bool)) =
  type Cb = proc(b: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQPlainTextEdit_connect_undoAvailable(self.h, cast[int](addr tmp[]))
proc redoAvailable*(self: QPlainTextEdit, b: bool): void =

  fcQPlainTextEdit_redoAvailable(self.h, b)

proc miqt_exec_callback_QPlainTextEdit_redoAvailable(slot: int, b: bool) {.exportc.} =
  type Cb = proc(b: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = b


  nimfunc[](slotval1)

proc onredoAvailable*(self: QPlainTextEdit, slot: proc(b: bool)) =
  type Cb = proc(b: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQPlainTextEdit_connect_redoAvailable(self.h, cast[int](addr tmp[]))
proc copyAvailable*(self: QPlainTextEdit, b: bool): void =

  fcQPlainTextEdit_copyAvailable(self.h, b)

proc miqt_exec_callback_QPlainTextEdit_copyAvailable(slot: int, b: bool) {.exportc.} =
  type Cb = proc(b: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = b


  nimfunc[](slotval1)

proc oncopyAvailable*(self: QPlainTextEdit, slot: proc(b: bool)) =
  type Cb = proc(b: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQPlainTextEdit_connect_copyAvailable(self.h, cast[int](addr tmp[]))
proc selectionChanged*(self: QPlainTextEdit, ): void =

  fcQPlainTextEdit_selectionChanged(self.h)

proc miqt_exec_callback_QPlainTextEdit_selectionChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onselectionChanged*(self: QPlainTextEdit, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQPlainTextEdit_connect_selectionChanged(self.h, cast[int](addr tmp[]))
proc cursorPositionChanged*(self: QPlainTextEdit, ): void =

  fcQPlainTextEdit_cursorPositionChanged(self.h)

proc miqt_exec_callback_QPlainTextEdit_cursorPositionChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc oncursorPositionChanged*(self: QPlainTextEdit, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQPlainTextEdit_connect_cursorPositionChanged(self.h, cast[int](addr tmp[]))
proc updateRequest*(self: QPlainTextEdit, rect: gen_qrect.QRect, dy: cint): void =

  fcQPlainTextEdit_updateRequest(self.h, rect.h, dy)

proc miqt_exec_callback_QPlainTextEdit_updateRequest(slot: int, rect: pointer, dy: cint) {.exportc.} =
  type Cb = proc(rect: gen_qrect.QRect, dy: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qrect.QRect(h: rect)

  let slotval2 = dy


  nimfunc[](slotval1, slotval2)

proc onupdateRequest*(self: QPlainTextEdit, slot: proc(rect: gen_qrect.QRect, dy: cint)) =
  type Cb = proc(rect: gen_qrect.QRect, dy: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQPlainTextEdit_connect_updateRequest(self.h, cast[int](addr tmp[]))
proc blockCountChanged*(self: QPlainTextEdit, newBlockCount: cint): void =

  fcQPlainTextEdit_blockCountChanged(self.h, newBlockCount)

proc miqt_exec_callback_QPlainTextEdit_blockCountChanged(slot: int, newBlockCount: cint) {.exportc.} =
  type Cb = proc(newBlockCount: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = newBlockCount


  nimfunc[](slotval1)

proc onblockCountChanged*(self: QPlainTextEdit, slot: proc(newBlockCount: cint)) =
  type Cb = proc(newBlockCount: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQPlainTextEdit_connect_blockCountChanged(self.h, cast[int](addr tmp[]))
proc modificationChanged*(self: QPlainTextEdit, param1: bool): void =

  fcQPlainTextEdit_modificationChanged(self.h, param1)

proc miqt_exec_callback_QPlainTextEdit_modificationChanged(slot: int, param1: bool) {.exportc.} =
  type Cb = proc(param1: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)

proc onmodificationChanged*(self: QPlainTextEdit, slot: proc(param1: bool)) =
  type Cb = proc(param1: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQPlainTextEdit_connect_modificationChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QPlainTextEdit, s: cstring, c: cstring): string =

  let v_ms = fcQPlainTextEdit_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QPlainTextEdit, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQPlainTextEdit_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QPlainTextEdit, s: cstring, c: cstring): string =

  let v_ms = fcQPlainTextEdit_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QPlainTextEdit, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQPlainTextEdit_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc find22*(self: QPlainTextEdit, exp: string, options: gen_qtextdocument.QTextDocumentFindFlag): bool =

  fcQPlainTextEdit_find22(self.h, struct_miqt_string(data: exp, len: csize_t(len(exp))), cint(options))

proc find23*(self: QPlainTextEdit, exp: gen_qregexp.QRegExp, options: gen_qtextdocument.QTextDocumentFindFlag): bool =

  fcQPlainTextEdit_find23(self.h, exp.h, cint(options))

proc find24*(self: QPlainTextEdit, exp: gen_qregularexpression.QRegularExpression, options: gen_qtextdocument.QTextDocumentFindFlag): bool =

  fcQPlainTextEdit_find24(self.h, exp.h, cint(options))

proc moveCursor2*(self: QPlainTextEdit, operation: gen_qtextcursor.QTextCursorMoveOperation, mode: gen_qtextcursor.QTextCursorMoveMode): void =

  fcQPlainTextEdit_moveCursor2(self.h, cint(operation), cint(mode))

proc zoomIn1*(self: QPlainTextEdit, range: cint): void =

  fcQPlainTextEdit_zoomIn1(self.h, range)

proc zoomOut1*(self: QPlainTextEdit, range: cint): void =

  fcQPlainTextEdit_zoomOut1(self.h, range)

proc callVirtualBase_metacall(self: QPlainTextEdit, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQPlainTextEdit_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QPlainTextEditmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QPlainTextEdit, slot: proc(super: QPlainTextEditmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextEditmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_metacall(self: ptr cQPlainTextEdit, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QPlainTextEdit_metacall ".} =
  type Cb = proc(super: QPlainTextEditmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QPlainTextEdit(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_loadResource(self: QPlainTextEdit, typeVal: cint, name: gen_qurl.QUrl): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQPlainTextEdit_virtualbase_loadResource(self.h, typeVal, name.h))

type QPlainTextEditloadResourceBase* = proc(typeVal: cint, name: gen_qurl.QUrl): gen_qvariant.QVariant
proc onloadResource*(self: QPlainTextEdit, slot: proc(super: QPlainTextEditloadResourceBase, typeVal: cint, name: gen_qurl.QUrl): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextEditloadResourceBase, typeVal: cint, name: gen_qurl.QUrl): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_loadResource(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_loadResource(self: ptr cQPlainTextEdit, slot: int, typeVal: cint, name: pointer): pointer {.exportc: "miqt_exec_callback_QPlainTextEdit_loadResource ".} =
  type Cb = proc(super: QPlainTextEditloadResourceBase, typeVal: cint, name: gen_qurl.QUrl): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(typeVal: cint, name: gen_qurl.QUrl): auto =
    callVirtualBase_loadResource(QPlainTextEdit(h: self), typeVal, name)
  let slotval1 = typeVal

  let slotval2 = gen_qurl.QUrl(h: name)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn.h
proc callVirtualBase_inputMethodQuery(self: QPlainTextEdit, property: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQPlainTextEdit_virtualbase_inputMethodQuery(self.h, cint(property)))

type QPlainTextEditinputMethodQueryBase* = proc(property: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QPlainTextEdit, slot: proc(super: QPlainTextEditinputMethodQueryBase, property: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextEditinputMethodQueryBase, property: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_inputMethodQuery(self: ptr cQPlainTextEdit, slot: int, property: cint): pointer {.exportc: "miqt_exec_callback_QPlainTextEdit_inputMethodQuery ".} =
  type Cb = proc(super: QPlainTextEditinputMethodQueryBase, property: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(property: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QPlainTextEdit(h: self), property)
  let slotval1 = gen_qnamespace.InputMethodQuery(property)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_event(self: QPlainTextEdit, e: gen_qcoreevent.QEvent): bool =


  fQPlainTextEdit_virtualbase_event(self.h, e.h)

type QPlainTextEditeventBase* = proc(e: gen_qcoreevent.QEvent): bool
proc onevent*(self: QPlainTextEdit, slot: proc(super: QPlainTextEditeventBase, e: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextEditeventBase, e: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_event(self: ptr cQPlainTextEdit, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QPlainTextEdit_event ".} =
  type Cb = proc(super: QPlainTextEditeventBase, e: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QPlainTextEdit(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QPlainTextEdit, e: gen_qcoreevent.QTimerEvent): void =


  fQPlainTextEdit_virtualbase_timerEvent(self.h, e.h)

type QPlainTextEdittimerEventBase* = proc(e: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QPlainTextEdit, slot: proc(super: QPlainTextEdittimerEventBase, e: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextEdittimerEventBase, e: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_timerEvent(self: ptr cQPlainTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_timerEvent ".} =
  type Cb = proc(super: QPlainTextEdittimerEventBase, e: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QPlainTextEdit(h: self), e)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QPlainTextEdit, e: gen_qevent.QKeyEvent): void =


  fQPlainTextEdit_virtualbase_keyPressEvent(self.h, e.h)

type QPlainTextEditkeyPressEventBase* = proc(e: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QPlainTextEdit, slot: proc(super: QPlainTextEditkeyPressEventBase, e: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextEditkeyPressEventBase, e: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_keyPressEvent(self: ptr cQPlainTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_keyPressEvent ".} =
  type Cb = proc(super: QPlainTextEditkeyPressEventBase, e: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QPlainTextEdit(h: self), e)
  let slotval1 = gen_qevent.QKeyEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QPlainTextEdit, e: gen_qevent.QKeyEvent): void =


  fQPlainTextEdit_virtualbase_keyReleaseEvent(self.h, e.h)

type QPlainTextEditkeyReleaseEventBase* = proc(e: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QPlainTextEdit, slot: proc(super: QPlainTextEditkeyReleaseEventBase, e: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextEditkeyReleaseEventBase, e: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_keyReleaseEvent(self: ptr cQPlainTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_keyReleaseEvent ".} =
  type Cb = proc(super: QPlainTextEditkeyReleaseEventBase, e: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QPlainTextEdit(h: self), e)
  let slotval1 = gen_qevent.QKeyEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QPlainTextEdit, e: gen_qevent.QResizeEvent): void =


  fQPlainTextEdit_virtualbase_resizeEvent(self.h, e.h)

type QPlainTextEditresizeEventBase* = proc(e: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QPlainTextEdit, slot: proc(super: QPlainTextEditresizeEventBase, e: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextEditresizeEventBase, e: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_resizeEvent(self: ptr cQPlainTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_resizeEvent ".} =
  type Cb = proc(super: QPlainTextEditresizeEventBase, e: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QPlainTextEdit(h: self), e)
  let slotval1 = gen_qevent.QResizeEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QPlainTextEdit, e: gen_qevent.QPaintEvent): void =


  fQPlainTextEdit_virtualbase_paintEvent(self.h, e.h)

type QPlainTextEditpaintEventBase* = proc(e: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QPlainTextEdit, slot: proc(super: QPlainTextEditpaintEventBase, e: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextEditpaintEventBase, e: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_paintEvent(self: ptr cQPlainTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_paintEvent ".} =
  type Cb = proc(super: QPlainTextEditpaintEventBase, e: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QPlainTextEdit(h: self), e)
  let slotval1 = gen_qevent.QPaintEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mousePressEvent(self: QPlainTextEdit, e: gen_qevent.QMouseEvent): void =


  fQPlainTextEdit_virtualbase_mousePressEvent(self.h, e.h)

type QPlainTextEditmousePressEventBase* = proc(e: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QPlainTextEdit, slot: proc(super: QPlainTextEditmousePressEventBase, e: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextEditmousePressEventBase, e: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_mousePressEvent(self: ptr cQPlainTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_mousePressEvent ".} =
  type Cb = proc(super: QPlainTextEditmousePressEventBase, e: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QPlainTextEdit(h: self), e)
  let slotval1 = gen_qevent.QMouseEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QPlainTextEdit, e: gen_qevent.QMouseEvent): void =


  fQPlainTextEdit_virtualbase_mouseMoveEvent(self.h, e.h)

type QPlainTextEditmouseMoveEventBase* = proc(e: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QPlainTextEdit, slot: proc(super: QPlainTextEditmouseMoveEventBase, e: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextEditmouseMoveEventBase, e: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_mouseMoveEvent(self: ptr cQPlainTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_mouseMoveEvent ".} =
  type Cb = proc(super: QPlainTextEditmouseMoveEventBase, e: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QPlainTextEdit(h: self), e)
  let slotval1 = gen_qevent.QMouseEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QPlainTextEdit, e: gen_qevent.QMouseEvent): void =


  fQPlainTextEdit_virtualbase_mouseReleaseEvent(self.h, e.h)

type QPlainTextEditmouseReleaseEventBase* = proc(e: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QPlainTextEdit, slot: proc(super: QPlainTextEditmouseReleaseEventBase, e: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextEditmouseReleaseEventBase, e: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_mouseReleaseEvent(self: ptr cQPlainTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_mouseReleaseEvent ".} =
  type Cb = proc(super: QPlainTextEditmouseReleaseEventBase, e: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QPlainTextEdit(h: self), e)
  let slotval1 = gen_qevent.QMouseEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QPlainTextEdit, e: gen_qevent.QMouseEvent): void =


  fQPlainTextEdit_virtualbase_mouseDoubleClickEvent(self.h, e.h)

type QPlainTextEditmouseDoubleClickEventBase* = proc(e: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QPlainTextEdit, slot: proc(super: QPlainTextEditmouseDoubleClickEventBase, e: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextEditmouseDoubleClickEventBase, e: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_mouseDoubleClickEvent(self: ptr cQPlainTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QPlainTextEditmouseDoubleClickEventBase, e: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QPlainTextEdit(h: self), e)
  let slotval1 = gen_qevent.QMouseEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusNextPrevChild(self: QPlainTextEdit, next: bool): bool =


  fQPlainTextEdit_virtualbase_focusNextPrevChild(self.h, next)

type QPlainTextEditfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QPlainTextEdit, slot: proc(super: QPlainTextEditfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextEditfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_focusNextPrevChild(self: ptr cQPlainTextEdit, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QPlainTextEdit_focusNextPrevChild ".} =
  type Cb = proc(super: QPlainTextEditfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QPlainTextEdit(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_contextMenuEvent(self: QPlainTextEdit, e: gen_qevent.QContextMenuEvent): void =


  fQPlainTextEdit_virtualbase_contextMenuEvent(self.h, e.h)

type QPlainTextEditcontextMenuEventBase* = proc(e: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QPlainTextEdit, slot: proc(super: QPlainTextEditcontextMenuEventBase, e: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextEditcontextMenuEventBase, e: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_contextMenuEvent(self: ptr cQPlainTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_contextMenuEvent ".} =
  type Cb = proc(super: QPlainTextEditcontextMenuEventBase, e: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QPlainTextEdit(h: self), e)
  let slotval1 = gen_qevent.QContextMenuEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QPlainTextEdit, e: gen_qevent.QDragEnterEvent): void =


  fQPlainTextEdit_virtualbase_dragEnterEvent(self.h, e.h)

type QPlainTextEditdragEnterEventBase* = proc(e: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QPlainTextEdit, slot: proc(super: QPlainTextEditdragEnterEventBase, e: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextEditdragEnterEventBase, e: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_dragEnterEvent(self: ptr cQPlainTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_dragEnterEvent ".} =
  type Cb = proc(super: QPlainTextEditdragEnterEventBase, e: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QPlainTextEdit(h: self), e)
  let slotval1 = gen_qevent.QDragEnterEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QPlainTextEdit, e: gen_qevent.QDragLeaveEvent): void =


  fQPlainTextEdit_virtualbase_dragLeaveEvent(self.h, e.h)

type QPlainTextEditdragLeaveEventBase* = proc(e: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QPlainTextEdit, slot: proc(super: QPlainTextEditdragLeaveEventBase, e: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextEditdragLeaveEventBase, e: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_dragLeaveEvent(self: ptr cQPlainTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_dragLeaveEvent ".} =
  type Cb = proc(super: QPlainTextEditdragLeaveEventBase, e: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QPlainTextEdit(h: self), e)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QPlainTextEdit, e: gen_qevent.QDragMoveEvent): void =


  fQPlainTextEdit_virtualbase_dragMoveEvent(self.h, e.h)

type QPlainTextEditdragMoveEventBase* = proc(e: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QPlainTextEdit, slot: proc(super: QPlainTextEditdragMoveEventBase, e: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextEditdragMoveEventBase, e: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_dragMoveEvent(self: ptr cQPlainTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_dragMoveEvent ".} =
  type Cb = proc(super: QPlainTextEditdragMoveEventBase, e: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QPlainTextEdit(h: self), e)
  let slotval1 = gen_qevent.QDragMoveEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QPlainTextEdit, e: gen_qevent.QDropEvent): void =


  fQPlainTextEdit_virtualbase_dropEvent(self.h, e.h)

type QPlainTextEditdropEventBase* = proc(e: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QPlainTextEdit, slot: proc(super: QPlainTextEditdropEventBase, e: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextEditdropEventBase, e: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_dropEvent(self: ptr cQPlainTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_dropEvent ".} =
  type Cb = proc(super: QPlainTextEditdropEventBase, e: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QPlainTextEdit(h: self), e)
  let slotval1 = gen_qevent.QDropEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QPlainTextEdit, e: gen_qevent.QFocusEvent): void =


  fQPlainTextEdit_virtualbase_focusInEvent(self.h, e.h)

type QPlainTextEditfocusInEventBase* = proc(e: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QPlainTextEdit, slot: proc(super: QPlainTextEditfocusInEventBase, e: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextEditfocusInEventBase, e: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_focusInEvent(self: ptr cQPlainTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_focusInEvent ".} =
  type Cb = proc(super: QPlainTextEditfocusInEventBase, e: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QPlainTextEdit(h: self), e)
  let slotval1 = gen_qevent.QFocusEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QPlainTextEdit, e: gen_qevent.QFocusEvent): void =


  fQPlainTextEdit_virtualbase_focusOutEvent(self.h, e.h)

type QPlainTextEditfocusOutEventBase* = proc(e: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QPlainTextEdit, slot: proc(super: QPlainTextEditfocusOutEventBase, e: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextEditfocusOutEventBase, e: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_focusOutEvent(self: ptr cQPlainTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_focusOutEvent ".} =
  type Cb = proc(super: QPlainTextEditfocusOutEventBase, e: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QPlainTextEdit(h: self), e)
  let slotval1 = gen_qevent.QFocusEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QPlainTextEdit, param1: gen_qevent.QShowEvent): void =


  fQPlainTextEdit_virtualbase_showEvent(self.h, param1.h)

type QPlainTextEditshowEventBase* = proc(param1: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QPlainTextEdit, slot: proc(super: QPlainTextEditshowEventBase, param1: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextEditshowEventBase, param1: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_showEvent(self: ptr cQPlainTextEdit, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_showEvent ".} =
  type Cb = proc(super: QPlainTextEditshowEventBase, param1: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QPlainTextEdit(h: self), param1)
  let slotval1 = gen_qevent.QShowEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_changeEvent(self: QPlainTextEdit, e: gen_qcoreevent.QEvent): void =


  fQPlainTextEdit_virtualbase_changeEvent(self.h, e.h)

type QPlainTextEditchangeEventBase* = proc(e: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QPlainTextEdit, slot: proc(super: QPlainTextEditchangeEventBase, e: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextEditchangeEventBase, e: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_changeEvent(self: ptr cQPlainTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_changeEvent ".} =
  type Cb = proc(super: QPlainTextEditchangeEventBase, e: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QPlainTextEdit(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QPlainTextEdit, e: gen_qevent.QWheelEvent): void =


  fQPlainTextEdit_virtualbase_wheelEvent(self.h, e.h)

type QPlainTextEditwheelEventBase* = proc(e: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QPlainTextEdit, slot: proc(super: QPlainTextEditwheelEventBase, e: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextEditwheelEventBase, e: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_wheelEvent(self: ptr cQPlainTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_wheelEvent ".} =
  type Cb = proc(super: QPlainTextEditwheelEventBase, e: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QPlainTextEdit(h: self), e)
  let slotval1 = gen_qevent.QWheelEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_createMimeDataFromSelection(self: QPlainTextEdit, ): gen_qmimedata.QMimeData =


  gen_qmimedata.QMimeData(h: fQPlainTextEdit_virtualbase_createMimeDataFromSelection(self.h))

type QPlainTextEditcreateMimeDataFromSelectionBase* = proc(): gen_qmimedata.QMimeData
proc oncreateMimeDataFromSelection*(self: QPlainTextEdit, slot: proc(super: QPlainTextEditcreateMimeDataFromSelectionBase): gen_qmimedata.QMimeData) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextEditcreateMimeDataFromSelectionBase): gen_qmimedata.QMimeData
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_createMimeDataFromSelection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_createMimeDataFromSelection(self: ptr cQPlainTextEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QPlainTextEdit_createMimeDataFromSelection ".} =
  type Cb = proc(super: QPlainTextEditcreateMimeDataFromSelectionBase): gen_qmimedata.QMimeData
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_createMimeDataFromSelection(QPlainTextEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_canInsertFromMimeData(self: QPlainTextEdit, source: gen_qmimedata.QMimeData): bool =


  fQPlainTextEdit_virtualbase_canInsertFromMimeData(self.h, source.h)

type QPlainTextEditcanInsertFromMimeDataBase* = proc(source: gen_qmimedata.QMimeData): bool
proc oncanInsertFromMimeData*(self: QPlainTextEdit, slot: proc(super: QPlainTextEditcanInsertFromMimeDataBase, source: gen_qmimedata.QMimeData): bool) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextEditcanInsertFromMimeDataBase, source: gen_qmimedata.QMimeData): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_canInsertFromMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_canInsertFromMimeData(self: ptr cQPlainTextEdit, slot: int, source: pointer): bool {.exportc: "miqt_exec_callback_QPlainTextEdit_canInsertFromMimeData ".} =
  type Cb = proc(super: QPlainTextEditcanInsertFromMimeDataBase, source: gen_qmimedata.QMimeData): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(source: gen_qmimedata.QMimeData): auto =
    callVirtualBase_canInsertFromMimeData(QPlainTextEdit(h: self), source)
  let slotval1 = gen_qmimedata.QMimeData(h: source)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_insertFromMimeData(self: QPlainTextEdit, source: gen_qmimedata.QMimeData): void =


  fQPlainTextEdit_virtualbase_insertFromMimeData(self.h, source.h)

type QPlainTextEditinsertFromMimeDataBase* = proc(source: gen_qmimedata.QMimeData): void
proc oninsertFromMimeData*(self: QPlainTextEdit, slot: proc(super: QPlainTextEditinsertFromMimeDataBase, source: gen_qmimedata.QMimeData): void) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextEditinsertFromMimeDataBase, source: gen_qmimedata.QMimeData): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_insertFromMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_insertFromMimeData(self: ptr cQPlainTextEdit, slot: int, source: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_insertFromMimeData ".} =
  type Cb = proc(super: QPlainTextEditinsertFromMimeDataBase, source: gen_qmimedata.QMimeData): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(source: gen_qmimedata.QMimeData): auto =
    callVirtualBase_insertFromMimeData(QPlainTextEdit(h: self), source)
  let slotval1 = gen_qmimedata.QMimeData(h: source)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodEvent(self: QPlainTextEdit, param1: gen_qevent.QInputMethodEvent): void =


  fQPlainTextEdit_virtualbase_inputMethodEvent(self.h, param1.h)

type QPlainTextEditinputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QPlainTextEdit, slot: proc(super: QPlainTextEditinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextEditinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_inputMethodEvent(self: ptr cQPlainTextEdit, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_inputMethodEvent ".} =
  type Cb = proc(super: QPlainTextEditinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QPlainTextEdit(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_scrollContentsBy(self: QPlainTextEdit, dx: cint, dy: cint): void =


  fQPlainTextEdit_virtualbase_scrollContentsBy(self.h, dx, dy)

type QPlainTextEditscrollContentsByBase* = proc(dx: cint, dy: cint): void
proc onscrollContentsBy*(self: QPlainTextEdit, slot: proc(super: QPlainTextEditscrollContentsByBase, dx: cint, dy: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextEditscrollContentsByBase, dx: cint, dy: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_scrollContentsBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_scrollContentsBy(self: ptr cQPlainTextEdit, slot: int, dx: cint, dy: cint): void {.exportc: "miqt_exec_callback_QPlainTextEdit_scrollContentsBy ".} =
  type Cb = proc(super: QPlainTextEditscrollContentsByBase, dx: cint, dy: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(dx: cint, dy: cint): auto =
    callVirtualBase_scrollContentsBy(QPlainTextEdit(h: self), dx, dy)
  let slotval1 = dx

  let slotval2 = dy


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_doSetTextCursor(self: QPlainTextEdit, cursor: gen_qtextcursor.QTextCursor): void =


  fQPlainTextEdit_virtualbase_doSetTextCursor(self.h, cursor.h)

type QPlainTextEditdoSetTextCursorBase* = proc(cursor: gen_qtextcursor.QTextCursor): void
proc ondoSetTextCursor*(self: QPlainTextEdit, slot: proc(super: QPlainTextEditdoSetTextCursorBase, cursor: gen_qtextcursor.QTextCursor): void) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextEditdoSetTextCursorBase, cursor: gen_qtextcursor.QTextCursor): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_doSetTextCursor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_doSetTextCursor(self: ptr cQPlainTextEdit, slot: int, cursor: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_doSetTextCursor ".} =
  type Cb = proc(super: QPlainTextEditdoSetTextCursorBase, cursor: gen_qtextcursor.QTextCursor): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(cursor: gen_qtextcursor.QTextCursor): auto =
    callVirtualBase_doSetTextCursor(QPlainTextEdit(h: self), cursor)
  let slotval1 = gen_qtextcursor.QTextCursor(h: cursor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_minimumSizeHint(self: QPlainTextEdit, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQPlainTextEdit_virtualbase_minimumSizeHint(self.h))

type QPlainTextEditminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QPlainTextEdit, slot: proc(super: QPlainTextEditminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextEditminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_minimumSizeHint(self: ptr cQPlainTextEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QPlainTextEdit_minimumSizeHint ".} =
  type Cb = proc(super: QPlainTextEditminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QPlainTextEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_sizeHint(self: QPlainTextEdit, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQPlainTextEdit_virtualbase_sizeHint(self.h))

type QPlainTextEditsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QPlainTextEdit, slot: proc(super: QPlainTextEditsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextEditsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_sizeHint(self: ptr cQPlainTextEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QPlainTextEdit_sizeHint ".} =
  type Cb = proc(super: QPlainTextEditsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QPlainTextEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setupViewport(self: QPlainTextEdit, viewport: gen_qwidget.QWidget): void =


  fQPlainTextEdit_virtualbase_setupViewport(self.h, viewport.h)

type QPlainTextEditsetupViewportBase* = proc(viewport: gen_qwidget.QWidget): void
proc onsetupViewport*(self: QPlainTextEdit, slot: proc(super: QPlainTextEditsetupViewportBase, viewport: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextEditsetupViewportBase, viewport: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_setupViewport(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_setupViewport(self: ptr cQPlainTextEdit, slot: int, viewport: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_setupViewport ".} =
  type Cb = proc(super: QPlainTextEditsetupViewportBase, viewport: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(viewport: gen_qwidget.QWidget): auto =
    callVirtualBase_setupViewport(QPlainTextEdit(h: self), viewport)
  let slotval1 = gen_qwidget.QWidget(h: viewport)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_eventFilter(self: QPlainTextEdit, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool =


  fQPlainTextEdit_virtualbase_eventFilter(self.h, param1.h, param2.h)

type QPlainTextEditeventFilterBase* = proc(param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QPlainTextEdit, slot: proc(super: QPlainTextEditeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextEditeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_eventFilter(self: ptr cQPlainTextEdit, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_QPlainTextEdit_eventFilter ".} =
  type Cb = proc(super: QPlainTextEditeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QPlainTextEdit(h: self), param1, param2)
  let slotval1 = gen_qobject.QObject(h: param1)

  let slotval2 = gen_qcoreevent.QEvent(h: param2)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_viewportEvent(self: QPlainTextEdit, param1: gen_qcoreevent.QEvent): bool =


  fQPlainTextEdit_virtualbase_viewportEvent(self.h, param1.h)

type QPlainTextEditviewportEventBase* = proc(param1: gen_qcoreevent.QEvent): bool
proc onviewportEvent*(self: QPlainTextEdit, slot: proc(super: QPlainTextEditviewportEventBase, param1: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextEditviewportEventBase, param1: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_viewportEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_viewportEvent(self: ptr cQPlainTextEdit, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QPlainTextEdit_viewportEvent ".} =
  type Cb = proc(super: QPlainTextEditviewportEventBase, param1: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_viewportEvent(QPlainTextEdit(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_viewportSizeHint(self: QPlainTextEdit, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQPlainTextEdit_virtualbase_viewportSizeHint(self.h))

type QPlainTextEditviewportSizeHintBase* = proc(): gen_qsize.QSize
proc onviewportSizeHint*(self: QPlainTextEdit, slot: proc(super: QPlainTextEditviewportSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextEditviewportSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_viewportSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_viewportSizeHint(self: ptr cQPlainTextEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QPlainTextEdit_viewportSizeHint ".} =
  type Cb = proc(super: QPlainTextEditviewportSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_viewportSizeHint(QPlainTextEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_devType(self: QPlainTextEdit, ): cint =


  fQPlainTextEdit_virtualbase_devType(self.h)

type QPlainTextEditdevTypeBase* = proc(): cint
proc ondevType*(self: QPlainTextEdit, slot: proc(super: QPlainTextEditdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextEditdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_devType(self: ptr cQPlainTextEdit, slot: int): cint {.exportc: "miqt_exec_callback_QPlainTextEdit_devType ".} =
  type Cb = proc(super: QPlainTextEditdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QPlainTextEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QPlainTextEdit, visible: bool): void =


  fQPlainTextEdit_virtualbase_setVisible(self.h, visible)

type QPlainTextEditsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QPlainTextEdit, slot: proc(super: QPlainTextEditsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextEditsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_setVisible(self: ptr cQPlainTextEdit, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QPlainTextEdit_setVisible ".} =
  type Cb = proc(super: QPlainTextEditsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QPlainTextEdit(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_heightForWidth(self: QPlainTextEdit, param1: cint): cint =


  fQPlainTextEdit_virtualbase_heightForWidth(self.h, param1)

type QPlainTextEditheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QPlainTextEdit, slot: proc(super: QPlainTextEditheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextEditheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_heightForWidth(self: ptr cQPlainTextEdit, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QPlainTextEdit_heightForWidth ".} =
  type Cb = proc(super: QPlainTextEditheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QPlainTextEdit(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QPlainTextEdit, ): bool =


  fQPlainTextEdit_virtualbase_hasHeightForWidth(self.h)

type QPlainTextEdithasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QPlainTextEdit, slot: proc(super: QPlainTextEdithasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextEdithasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_hasHeightForWidth(self: ptr cQPlainTextEdit, slot: int): bool {.exportc: "miqt_exec_callback_QPlainTextEdit_hasHeightForWidth ".} =
  type Cb = proc(super: QPlainTextEdithasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QPlainTextEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QPlainTextEdit, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQPlainTextEdit_virtualbase_paintEngine(self.h))

type QPlainTextEditpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QPlainTextEdit, slot: proc(super: QPlainTextEditpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextEditpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_paintEngine(self: ptr cQPlainTextEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QPlainTextEdit_paintEngine ".} =
  type Cb = proc(super: QPlainTextEditpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QPlainTextEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_enterEvent(self: QPlainTextEdit, event: gen_qcoreevent.QEvent): void =


  fQPlainTextEdit_virtualbase_enterEvent(self.h, event.h)

type QPlainTextEditenterEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onenterEvent*(self: QPlainTextEdit, slot: proc(super: QPlainTextEditenterEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextEditenterEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_enterEvent(self: ptr cQPlainTextEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_enterEvent ".} =
  type Cb = proc(super: QPlainTextEditenterEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_enterEvent(QPlainTextEdit(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QPlainTextEdit, event: gen_qcoreevent.QEvent): void =


  fQPlainTextEdit_virtualbase_leaveEvent(self.h, event.h)

type QPlainTextEditleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QPlainTextEdit, slot: proc(super: QPlainTextEditleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextEditleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_leaveEvent(self: ptr cQPlainTextEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_leaveEvent ".} =
  type Cb = proc(super: QPlainTextEditleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QPlainTextEdit(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QPlainTextEdit, event: gen_qevent.QMoveEvent): void =


  fQPlainTextEdit_virtualbase_moveEvent(self.h, event.h)

type QPlainTextEditmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QPlainTextEdit, slot: proc(super: QPlainTextEditmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextEditmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_moveEvent(self: ptr cQPlainTextEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_moveEvent ".} =
  type Cb = proc(super: QPlainTextEditmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QPlainTextEdit(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QPlainTextEdit, event: gen_qevent.QCloseEvent): void =


  fQPlainTextEdit_virtualbase_closeEvent(self.h, event.h)

type QPlainTextEditcloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QPlainTextEdit, slot: proc(super: QPlainTextEditcloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextEditcloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_closeEvent(self: ptr cQPlainTextEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_closeEvent ".} =
  type Cb = proc(super: QPlainTextEditcloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QPlainTextEdit(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QPlainTextEdit, event: gen_qevent.QTabletEvent): void =


  fQPlainTextEdit_virtualbase_tabletEvent(self.h, event.h)

type QPlainTextEdittabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QPlainTextEdit, slot: proc(super: QPlainTextEdittabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextEdittabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_tabletEvent(self: ptr cQPlainTextEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_tabletEvent ".} =
  type Cb = proc(super: QPlainTextEdittabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QPlainTextEdit(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QPlainTextEdit, event: gen_qevent.QActionEvent): void =


  fQPlainTextEdit_virtualbase_actionEvent(self.h, event.h)

type QPlainTextEditactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QPlainTextEdit, slot: proc(super: QPlainTextEditactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextEditactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_actionEvent(self: ptr cQPlainTextEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_actionEvent ".} =
  type Cb = proc(super: QPlainTextEditactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QPlainTextEdit(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QPlainTextEdit, event: gen_qevent.QHideEvent): void =


  fQPlainTextEdit_virtualbase_hideEvent(self.h, event.h)

type QPlainTextEdithideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QPlainTextEdit, slot: proc(super: QPlainTextEdithideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextEdithideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_hideEvent(self: ptr cQPlainTextEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_hideEvent ".} =
  type Cb = proc(super: QPlainTextEdithideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QPlainTextEdit(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QPlainTextEdit, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =


  fQPlainTextEdit_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QPlainTextEditnativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: QPlainTextEdit, slot: proc(super: QPlainTextEditnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextEditnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_nativeEvent(self: ptr cQPlainTextEdit, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QPlainTextEdit_nativeEvent ".} =
  type Cb = proc(super: QPlainTextEditnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr clong): auto =
    callVirtualBase_nativeEvent(QPlainTextEdit(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QPlainTextEdit, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQPlainTextEdit_virtualbase_metric(self.h, cint(param1))

type QPlainTextEditmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QPlainTextEdit, slot: proc(super: QPlainTextEditmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextEditmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_metric(self: ptr cQPlainTextEdit, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QPlainTextEdit_metric ".} =
  type Cb = proc(super: QPlainTextEditmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QPlainTextEdit(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QPlainTextEdit, painter: gen_qpainter.QPainter): void =


  fQPlainTextEdit_virtualbase_initPainter(self.h, painter.h)

type QPlainTextEditinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QPlainTextEdit, slot: proc(super: QPlainTextEditinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextEditinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_initPainter(self: ptr cQPlainTextEdit, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_initPainter ".} =
  type Cb = proc(super: QPlainTextEditinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QPlainTextEdit(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QPlainTextEdit, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQPlainTextEdit_virtualbase_redirected(self.h, offset.h))

type QPlainTextEditredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QPlainTextEdit, slot: proc(super: QPlainTextEditredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextEditredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_redirected(self: ptr cQPlainTextEdit, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QPlainTextEdit_redirected ".} =
  type Cb = proc(super: QPlainTextEditredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QPlainTextEdit(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QPlainTextEdit, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQPlainTextEdit_virtualbase_sharedPainter(self.h))

type QPlainTextEditsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QPlainTextEdit, slot: proc(super: QPlainTextEditsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextEditsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_sharedPainter(self: ptr cQPlainTextEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QPlainTextEdit_sharedPainter ".} =
  type Cb = proc(super: QPlainTextEditsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QPlainTextEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_childEvent(self: QPlainTextEdit, event: gen_qcoreevent.QChildEvent): void =


  fQPlainTextEdit_virtualbase_childEvent(self.h, event.h)

type QPlainTextEditchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QPlainTextEdit, slot: proc(super: QPlainTextEditchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextEditchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_childEvent(self: ptr cQPlainTextEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_childEvent ".} =
  type Cb = proc(super: QPlainTextEditchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QPlainTextEdit(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QPlainTextEdit, event: gen_qcoreevent.QEvent): void =


  fQPlainTextEdit_virtualbase_customEvent(self.h, event.h)

type QPlainTextEditcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QPlainTextEdit, slot: proc(super: QPlainTextEditcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextEditcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_customEvent(self: ptr cQPlainTextEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_customEvent ".} =
  type Cb = proc(super: QPlainTextEditcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QPlainTextEdit(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QPlainTextEdit, signal: gen_qmetaobject.QMetaMethod): void =


  fQPlainTextEdit_virtualbase_connectNotify(self.h, signal.h)

type QPlainTextEditconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QPlainTextEdit, slot: proc(super: QPlainTextEditconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextEditconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_connectNotify(self: ptr cQPlainTextEdit, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_connectNotify ".} =
  type Cb = proc(super: QPlainTextEditconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QPlainTextEdit(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QPlainTextEdit, signal: gen_qmetaobject.QMetaMethod): void =


  fQPlainTextEdit_virtualbase_disconnectNotify(self.h, signal.h)

type QPlainTextEditdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QPlainTextEdit, slot: proc(super: QPlainTextEditdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextEditdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextEdit_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextEdit_disconnectNotify(self: ptr cQPlainTextEdit, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QPlainTextEdit_disconnectNotify ".} =
  type Cb = proc(super: QPlainTextEditdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QPlainTextEdit(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QPlainTextEdit) =
  fcQPlainTextEdit_delete(self.h)

func init*(T: type QPlainTextDocumentLayout, h: ptr cQPlainTextDocumentLayout): QPlainTextDocumentLayout =
  T(h: h)
proc create*(T: type QPlainTextDocumentLayout, document: gen_qtextdocument.QTextDocument): QPlainTextDocumentLayout =

  QPlainTextDocumentLayout.init(fcQPlainTextDocumentLayout_new(document.h))
proc metaObject*(self: QPlainTextDocumentLayout, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQPlainTextDocumentLayout_metaObject(self.h))

proc metacast*(self: QPlainTextDocumentLayout, param1: cstring): pointer =

  fcQPlainTextDocumentLayout_metacast(self.h, param1)

proc metacall*(self: QPlainTextDocumentLayout, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQPlainTextDocumentLayout_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QPlainTextDocumentLayout, s: cstring): string =

  let v_ms = fcQPlainTextDocumentLayout_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QPlainTextDocumentLayout, s: cstring): string =

  let v_ms = fcQPlainTextDocumentLayout_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc draw*(self: QPlainTextDocumentLayout, param1: gen_qpainter.QPainter, param2: gen_qabstracttextdocumentlayout.QAbstractTextDocumentLayoutPaintContext): void =

  fcQPlainTextDocumentLayout_draw(self.h, param1.h, param2.h)

proc hitTest*(self: QPlainTextDocumentLayout, param1: gen_qpoint.QPointF, param2: gen_qnamespace.HitTestAccuracy): cint =

  fcQPlainTextDocumentLayout_hitTest(self.h, param1.h, cint(param2))

proc pageCount*(self: QPlainTextDocumentLayout, ): cint =

  fcQPlainTextDocumentLayout_pageCount(self.h)

proc documentSize*(self: QPlainTextDocumentLayout, ): gen_qsize.QSizeF =

  gen_qsize.QSizeF(h: fcQPlainTextDocumentLayout_documentSize(self.h))

proc frameBoundingRect*(self: QPlainTextDocumentLayout, param1: gen_qtextobject.QTextFrame): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQPlainTextDocumentLayout_frameBoundingRect(self.h, param1.h))

proc blockBoundingRect*(self: QPlainTextDocumentLayout, blockVal: gen_qtextobject.QTextBlock): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQPlainTextDocumentLayout_blockBoundingRect(self.h, blockVal.h))

proc ensureBlockLayout*(self: QPlainTextDocumentLayout, blockVal: gen_qtextobject.QTextBlock): void =

  fcQPlainTextDocumentLayout_ensureBlockLayout(self.h, blockVal.h)

proc setCursorWidth*(self: QPlainTextDocumentLayout, width: cint): void =

  fcQPlainTextDocumentLayout_setCursorWidth(self.h, width)

proc cursorWidth*(self: QPlainTextDocumentLayout, ): cint =

  fcQPlainTextDocumentLayout_cursorWidth(self.h)

proc requestUpdate*(self: QPlainTextDocumentLayout, ): void =

  fcQPlainTextDocumentLayout_requestUpdate(self.h)

proc tr2*(_: type QPlainTextDocumentLayout, s: cstring, c: cstring): string =

  let v_ms = fcQPlainTextDocumentLayout_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QPlainTextDocumentLayout, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQPlainTextDocumentLayout_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QPlainTextDocumentLayout, s: cstring, c: cstring): string =

  let v_ms = fcQPlainTextDocumentLayout_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QPlainTextDocumentLayout, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQPlainTextDocumentLayout_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QPlainTextDocumentLayout, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQPlainTextDocumentLayout_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QPlainTextDocumentLayoutmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QPlainTextDocumentLayout, slot: proc(super: QPlainTextDocumentLayoutmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextDocumentLayoutmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextDocumentLayout_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextDocumentLayout_metacall(self: ptr cQPlainTextDocumentLayout, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QPlainTextDocumentLayout_metacall ".} =
  type Cb = proc(super: QPlainTextDocumentLayoutmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QPlainTextDocumentLayout(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_draw(self: QPlainTextDocumentLayout, param1: gen_qpainter.QPainter, param2: gen_qabstracttextdocumentlayout.QAbstractTextDocumentLayoutPaintContext): void =


  fQPlainTextDocumentLayout_virtualbase_draw(self.h, param1.h, param2.h)

type QPlainTextDocumentLayoutdrawBase* = proc(param1: gen_qpainter.QPainter, param2: gen_qabstracttextdocumentlayout.QAbstractTextDocumentLayoutPaintContext): void
proc ondraw*(self: QPlainTextDocumentLayout, slot: proc(super: QPlainTextDocumentLayoutdrawBase, param1: gen_qpainter.QPainter, param2: gen_qabstracttextdocumentlayout.QAbstractTextDocumentLayoutPaintContext): void) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextDocumentLayoutdrawBase, param1: gen_qpainter.QPainter, param2: gen_qabstracttextdocumentlayout.QAbstractTextDocumentLayoutPaintContext): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextDocumentLayout_override_virtual_draw(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextDocumentLayout_draw(self: ptr cQPlainTextDocumentLayout, slot: int, param1: pointer, param2: pointer): void {.exportc: "miqt_exec_callback_QPlainTextDocumentLayout_draw ".} =
  type Cb = proc(super: QPlainTextDocumentLayoutdrawBase, param1: gen_qpainter.QPainter, param2: gen_qabstracttextdocumentlayout.QAbstractTextDocumentLayoutPaintContext): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpainter.QPainter, param2: gen_qabstracttextdocumentlayout.QAbstractTextDocumentLayoutPaintContext): auto =
    callVirtualBase_draw(QPlainTextDocumentLayout(h: self), param1, param2)
  let slotval1 = gen_qpainter.QPainter(h: param1)

  let slotval2 = gen_qabstracttextdocumentlayout.QAbstractTextDocumentLayoutPaintContext(h: param2)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_hitTest(self: QPlainTextDocumentLayout, param1: gen_qpoint.QPointF, param2: gen_qnamespace.HitTestAccuracy): cint =


  fQPlainTextDocumentLayout_virtualbase_hitTest(self.h, param1.h, cint(param2))

type QPlainTextDocumentLayouthitTestBase* = proc(param1: gen_qpoint.QPointF, param2: gen_qnamespace.HitTestAccuracy): cint
proc onhitTest*(self: QPlainTextDocumentLayout, slot: proc(super: QPlainTextDocumentLayouthitTestBase, param1: gen_qpoint.QPointF, param2: gen_qnamespace.HitTestAccuracy): cint) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextDocumentLayouthitTestBase, param1: gen_qpoint.QPointF, param2: gen_qnamespace.HitTestAccuracy): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextDocumentLayout_override_virtual_hitTest(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextDocumentLayout_hitTest(self: ptr cQPlainTextDocumentLayout, slot: int, param1: pointer, param2: cint): cint {.exportc: "miqt_exec_callback_QPlainTextDocumentLayout_hitTest ".} =
  type Cb = proc(super: QPlainTextDocumentLayouthitTestBase, param1: gen_qpoint.QPointF, param2: gen_qnamespace.HitTestAccuracy): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpoint.QPointF, param2: gen_qnamespace.HitTestAccuracy): auto =
    callVirtualBase_hitTest(QPlainTextDocumentLayout(h: self), param1, param2)
  let slotval1 = gen_qpoint.QPointF(h: param1)

  let slotval2 = gen_qnamespace.HitTestAccuracy(param2)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_pageCount(self: QPlainTextDocumentLayout, ): cint =


  fQPlainTextDocumentLayout_virtualbase_pageCount(self.h)

type QPlainTextDocumentLayoutpageCountBase* = proc(): cint
proc onpageCount*(self: QPlainTextDocumentLayout, slot: proc(super: QPlainTextDocumentLayoutpageCountBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextDocumentLayoutpageCountBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextDocumentLayout_override_virtual_pageCount(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextDocumentLayout_pageCount(self: ptr cQPlainTextDocumentLayout, slot: int): cint {.exportc: "miqt_exec_callback_QPlainTextDocumentLayout_pageCount ".} =
  type Cb = proc(super: QPlainTextDocumentLayoutpageCountBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_pageCount(QPlainTextDocumentLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_documentSize(self: QPlainTextDocumentLayout, ): gen_qsize.QSizeF =


  gen_qsize.QSizeF(h: fQPlainTextDocumentLayout_virtualbase_documentSize(self.h))

type QPlainTextDocumentLayoutdocumentSizeBase* = proc(): gen_qsize.QSizeF
proc ondocumentSize*(self: QPlainTextDocumentLayout, slot: proc(super: QPlainTextDocumentLayoutdocumentSizeBase): gen_qsize.QSizeF) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextDocumentLayoutdocumentSizeBase): gen_qsize.QSizeF
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextDocumentLayout_override_virtual_documentSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextDocumentLayout_documentSize(self: ptr cQPlainTextDocumentLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QPlainTextDocumentLayout_documentSize ".} =
  type Cb = proc(super: QPlainTextDocumentLayoutdocumentSizeBase): gen_qsize.QSizeF
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_documentSize(QPlainTextDocumentLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_frameBoundingRect(self: QPlainTextDocumentLayout, param1: gen_qtextobject.QTextFrame): gen_qrect.QRectF =


  gen_qrect.QRectF(h: fQPlainTextDocumentLayout_virtualbase_frameBoundingRect(self.h, param1.h))

type QPlainTextDocumentLayoutframeBoundingRectBase* = proc(param1: gen_qtextobject.QTextFrame): gen_qrect.QRectF
proc onframeBoundingRect*(self: QPlainTextDocumentLayout, slot: proc(super: QPlainTextDocumentLayoutframeBoundingRectBase, param1: gen_qtextobject.QTextFrame): gen_qrect.QRectF) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextDocumentLayoutframeBoundingRectBase, param1: gen_qtextobject.QTextFrame): gen_qrect.QRectF
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextDocumentLayout_override_virtual_frameBoundingRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextDocumentLayout_frameBoundingRect(self: ptr cQPlainTextDocumentLayout, slot: int, param1: pointer): pointer {.exportc: "miqt_exec_callback_QPlainTextDocumentLayout_frameBoundingRect ".} =
  type Cb = proc(super: QPlainTextDocumentLayoutframeBoundingRectBase, param1: gen_qtextobject.QTextFrame): gen_qrect.QRectF
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qtextobject.QTextFrame): auto =
    callVirtualBase_frameBoundingRect(QPlainTextDocumentLayout(h: self), param1)
  let slotval1 = gen_qtextobject.QTextFrame(h: param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_blockBoundingRect(self: QPlainTextDocumentLayout, blockVal: gen_qtextobject.QTextBlock): gen_qrect.QRectF =


  gen_qrect.QRectF(h: fQPlainTextDocumentLayout_virtualbase_blockBoundingRect(self.h, blockVal.h))

type QPlainTextDocumentLayoutblockBoundingRectBase* = proc(blockVal: gen_qtextobject.QTextBlock): gen_qrect.QRectF
proc onblockBoundingRect*(self: QPlainTextDocumentLayout, slot: proc(super: QPlainTextDocumentLayoutblockBoundingRectBase, blockVal: gen_qtextobject.QTextBlock): gen_qrect.QRectF) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextDocumentLayoutblockBoundingRectBase, blockVal: gen_qtextobject.QTextBlock): gen_qrect.QRectF
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextDocumentLayout_override_virtual_blockBoundingRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextDocumentLayout_blockBoundingRect(self: ptr cQPlainTextDocumentLayout, slot: int, blockVal: pointer): pointer {.exportc: "miqt_exec_callback_QPlainTextDocumentLayout_blockBoundingRect ".} =
  type Cb = proc(super: QPlainTextDocumentLayoutblockBoundingRectBase, blockVal: gen_qtextobject.QTextBlock): gen_qrect.QRectF
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(blockVal: gen_qtextobject.QTextBlock): auto =
    callVirtualBase_blockBoundingRect(QPlainTextDocumentLayout(h: self), blockVal)
  let slotval1 = gen_qtextobject.QTextBlock(h: blockVal)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_documentChanged(self: QPlainTextDocumentLayout, fromVal: cint, param2: cint, charsAdded: cint): void =


  fQPlainTextDocumentLayout_virtualbase_documentChanged(self.h, fromVal, param2, charsAdded)

type QPlainTextDocumentLayoutdocumentChangedBase* = proc(fromVal: cint, param2: cint, charsAdded: cint): void
proc ondocumentChanged*(self: QPlainTextDocumentLayout, slot: proc(super: QPlainTextDocumentLayoutdocumentChangedBase, fromVal: cint, param2: cint, charsAdded: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextDocumentLayoutdocumentChangedBase, fromVal: cint, param2: cint, charsAdded: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextDocumentLayout_override_virtual_documentChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextDocumentLayout_documentChanged(self: ptr cQPlainTextDocumentLayout, slot: int, fromVal: cint, param2: cint, charsAdded: cint): void {.exportc: "miqt_exec_callback_QPlainTextDocumentLayout_documentChanged ".} =
  type Cb = proc(super: QPlainTextDocumentLayoutdocumentChangedBase, fromVal: cint, param2: cint, charsAdded: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fromVal: cint, param2: cint, charsAdded: cint): auto =
    callVirtualBase_documentChanged(QPlainTextDocumentLayout(h: self), fromVal, param2, charsAdded)
  let slotval1 = fromVal

  let slotval2 = param2

  let slotval3 = charsAdded


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_resizeInlineObject(self: QPlainTextDocumentLayout, item: gen_qtextlayout.QTextInlineObject, posInDocument: cint, format: gen_qtextformat.QTextFormat): void =


  fQPlainTextDocumentLayout_virtualbase_resizeInlineObject(self.h, item.h, posInDocument, format.h)

type QPlainTextDocumentLayoutresizeInlineObjectBase* = proc(item: gen_qtextlayout.QTextInlineObject, posInDocument: cint, format: gen_qtextformat.QTextFormat): void
proc onresizeInlineObject*(self: QPlainTextDocumentLayout, slot: proc(super: QPlainTextDocumentLayoutresizeInlineObjectBase, item: gen_qtextlayout.QTextInlineObject, posInDocument: cint, format: gen_qtextformat.QTextFormat): void) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextDocumentLayoutresizeInlineObjectBase, item: gen_qtextlayout.QTextInlineObject, posInDocument: cint, format: gen_qtextformat.QTextFormat): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextDocumentLayout_override_virtual_resizeInlineObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextDocumentLayout_resizeInlineObject(self: ptr cQPlainTextDocumentLayout, slot: int, item: pointer, posInDocument: cint, format: pointer): void {.exportc: "miqt_exec_callback_QPlainTextDocumentLayout_resizeInlineObject ".} =
  type Cb = proc(super: QPlainTextDocumentLayoutresizeInlineObjectBase, item: gen_qtextlayout.QTextInlineObject, posInDocument: cint, format: gen_qtextformat.QTextFormat): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(item: gen_qtextlayout.QTextInlineObject, posInDocument: cint, format: gen_qtextformat.QTextFormat): auto =
    callVirtualBase_resizeInlineObject(QPlainTextDocumentLayout(h: self), item, posInDocument, format)
  let slotval1 = gen_qtextlayout.QTextInlineObject(h: item)

  let slotval2 = posInDocument

  let slotval3 = gen_qtextformat.QTextFormat(h: format)


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_positionInlineObject(self: QPlainTextDocumentLayout, item: gen_qtextlayout.QTextInlineObject, posInDocument: cint, format: gen_qtextformat.QTextFormat): void =


  fQPlainTextDocumentLayout_virtualbase_positionInlineObject(self.h, item.h, posInDocument, format.h)

type QPlainTextDocumentLayoutpositionInlineObjectBase* = proc(item: gen_qtextlayout.QTextInlineObject, posInDocument: cint, format: gen_qtextformat.QTextFormat): void
proc onpositionInlineObject*(self: QPlainTextDocumentLayout, slot: proc(super: QPlainTextDocumentLayoutpositionInlineObjectBase, item: gen_qtextlayout.QTextInlineObject, posInDocument: cint, format: gen_qtextformat.QTextFormat): void) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextDocumentLayoutpositionInlineObjectBase, item: gen_qtextlayout.QTextInlineObject, posInDocument: cint, format: gen_qtextformat.QTextFormat): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextDocumentLayout_override_virtual_positionInlineObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextDocumentLayout_positionInlineObject(self: ptr cQPlainTextDocumentLayout, slot: int, item: pointer, posInDocument: cint, format: pointer): void {.exportc: "miqt_exec_callback_QPlainTextDocumentLayout_positionInlineObject ".} =
  type Cb = proc(super: QPlainTextDocumentLayoutpositionInlineObjectBase, item: gen_qtextlayout.QTextInlineObject, posInDocument: cint, format: gen_qtextformat.QTextFormat): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(item: gen_qtextlayout.QTextInlineObject, posInDocument: cint, format: gen_qtextformat.QTextFormat): auto =
    callVirtualBase_positionInlineObject(QPlainTextDocumentLayout(h: self), item, posInDocument, format)
  let slotval1 = gen_qtextlayout.QTextInlineObject(h: item)

  let slotval2 = posInDocument

  let slotval3 = gen_qtextformat.QTextFormat(h: format)


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_drawInlineObject(self: QPlainTextDocumentLayout, painter: gen_qpainter.QPainter, rect: gen_qrect.QRectF, objectVal: gen_qtextlayout.QTextInlineObject, posInDocument: cint, format: gen_qtextformat.QTextFormat): void =


  fQPlainTextDocumentLayout_virtualbase_drawInlineObject(self.h, painter.h, rect.h, objectVal.h, posInDocument, format.h)

type QPlainTextDocumentLayoutdrawInlineObjectBase* = proc(painter: gen_qpainter.QPainter, rect: gen_qrect.QRectF, objectVal: gen_qtextlayout.QTextInlineObject, posInDocument: cint, format: gen_qtextformat.QTextFormat): void
proc ondrawInlineObject*(self: QPlainTextDocumentLayout, slot: proc(super: QPlainTextDocumentLayoutdrawInlineObjectBase, painter: gen_qpainter.QPainter, rect: gen_qrect.QRectF, objectVal: gen_qtextlayout.QTextInlineObject, posInDocument: cint, format: gen_qtextformat.QTextFormat): void) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextDocumentLayoutdrawInlineObjectBase, painter: gen_qpainter.QPainter, rect: gen_qrect.QRectF, objectVal: gen_qtextlayout.QTextInlineObject, posInDocument: cint, format: gen_qtextformat.QTextFormat): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextDocumentLayout_override_virtual_drawInlineObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextDocumentLayout_drawInlineObject(self: ptr cQPlainTextDocumentLayout, slot: int, painter: pointer, rect: pointer, objectVal: pointer, posInDocument: cint, format: pointer): void {.exportc: "miqt_exec_callback_QPlainTextDocumentLayout_drawInlineObject ".} =
  type Cb = proc(super: QPlainTextDocumentLayoutdrawInlineObjectBase, painter: gen_qpainter.QPainter, rect: gen_qrect.QRectF, objectVal: gen_qtextlayout.QTextInlineObject, posInDocument: cint, format: gen_qtextformat.QTextFormat): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter, rect: gen_qrect.QRectF, objectVal: gen_qtextlayout.QTextInlineObject, posInDocument: cint, format: gen_qtextformat.QTextFormat): auto =
    callVirtualBase_drawInlineObject(QPlainTextDocumentLayout(h: self), painter, rect, objectVal, posInDocument, format)
  let slotval1 = gen_qpainter.QPainter(h: painter)

  let slotval2 = gen_qrect.QRectF(h: rect)

  let slotval3 = gen_qtextlayout.QTextInlineObject(h: objectVal)

  let slotval4 = posInDocument

  let slotval5 = gen_qtextformat.QTextFormat(h: format)


  nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5)
proc callVirtualBase_event(self: QPlainTextDocumentLayout, event: gen_qcoreevent.QEvent): bool =


  fQPlainTextDocumentLayout_virtualbase_event(self.h, event.h)

type QPlainTextDocumentLayouteventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QPlainTextDocumentLayout, slot: proc(super: QPlainTextDocumentLayouteventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextDocumentLayouteventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextDocumentLayout_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextDocumentLayout_event(self: ptr cQPlainTextDocumentLayout, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QPlainTextDocumentLayout_event ".} =
  type Cb = proc(super: QPlainTextDocumentLayouteventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QPlainTextDocumentLayout(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QPlainTextDocumentLayout, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQPlainTextDocumentLayout_virtualbase_eventFilter(self.h, watched.h, event.h)

type QPlainTextDocumentLayouteventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QPlainTextDocumentLayout, slot: proc(super: QPlainTextDocumentLayouteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextDocumentLayouteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextDocumentLayout_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextDocumentLayout_eventFilter(self: ptr cQPlainTextDocumentLayout, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QPlainTextDocumentLayout_eventFilter ".} =
  type Cb = proc(super: QPlainTextDocumentLayouteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QPlainTextDocumentLayout(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QPlainTextDocumentLayout, event: gen_qcoreevent.QTimerEvent): void =


  fQPlainTextDocumentLayout_virtualbase_timerEvent(self.h, event.h)

type QPlainTextDocumentLayouttimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QPlainTextDocumentLayout, slot: proc(super: QPlainTextDocumentLayouttimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextDocumentLayouttimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextDocumentLayout_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextDocumentLayout_timerEvent(self: ptr cQPlainTextDocumentLayout, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPlainTextDocumentLayout_timerEvent ".} =
  type Cb = proc(super: QPlainTextDocumentLayouttimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QPlainTextDocumentLayout(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QPlainTextDocumentLayout, event: gen_qcoreevent.QChildEvent): void =


  fQPlainTextDocumentLayout_virtualbase_childEvent(self.h, event.h)

type QPlainTextDocumentLayoutchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QPlainTextDocumentLayout, slot: proc(super: QPlainTextDocumentLayoutchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextDocumentLayoutchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextDocumentLayout_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextDocumentLayout_childEvent(self: ptr cQPlainTextDocumentLayout, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPlainTextDocumentLayout_childEvent ".} =
  type Cb = proc(super: QPlainTextDocumentLayoutchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QPlainTextDocumentLayout(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QPlainTextDocumentLayout, event: gen_qcoreevent.QEvent): void =


  fQPlainTextDocumentLayout_virtualbase_customEvent(self.h, event.h)

type QPlainTextDocumentLayoutcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QPlainTextDocumentLayout, slot: proc(super: QPlainTextDocumentLayoutcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextDocumentLayoutcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextDocumentLayout_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextDocumentLayout_customEvent(self: ptr cQPlainTextDocumentLayout, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPlainTextDocumentLayout_customEvent ".} =
  type Cb = proc(super: QPlainTextDocumentLayoutcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QPlainTextDocumentLayout(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QPlainTextDocumentLayout, signal: gen_qmetaobject.QMetaMethod): void =


  fQPlainTextDocumentLayout_virtualbase_connectNotify(self.h, signal.h)

type QPlainTextDocumentLayoutconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QPlainTextDocumentLayout, slot: proc(super: QPlainTextDocumentLayoutconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextDocumentLayoutconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextDocumentLayout_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextDocumentLayout_connectNotify(self: ptr cQPlainTextDocumentLayout, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QPlainTextDocumentLayout_connectNotify ".} =
  type Cb = proc(super: QPlainTextDocumentLayoutconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QPlainTextDocumentLayout(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QPlainTextDocumentLayout, signal: gen_qmetaobject.QMetaMethod): void =


  fQPlainTextDocumentLayout_virtualbase_disconnectNotify(self.h, signal.h)

type QPlainTextDocumentLayoutdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QPlainTextDocumentLayout, slot: proc(super: QPlainTextDocumentLayoutdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QPlainTextDocumentLayoutdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlainTextDocumentLayout_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlainTextDocumentLayout_disconnectNotify(self: ptr cQPlainTextDocumentLayout, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QPlainTextDocumentLayout_disconnectNotify ".} =
  type Cb = proc(super: QPlainTextDocumentLayoutdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QPlainTextDocumentLayout(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QPlainTextDocumentLayout) =
  fcQPlainTextDocumentLayout_delete(self.h)
