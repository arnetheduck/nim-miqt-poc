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
{.compile("gen_qtextedit.cpp", cflags).}


type QTextEditLineWrapMode* = cint
const
  QTextEditNoWrap* = 0
  QTextEditWidgetWidth* = 1
  QTextEditFixedPixelWidth* = 2
  QTextEditFixedColumnWidth* = 3



type QTextEditAutoFormattingFlag* = cint
const
  QTextEditAutoNone* = 0
  QTextEditAutoBulletList* = 1
  QTextEditAutoAll* = 4294967295



import gen_qtextedit_types
export gen_qtextedit_types

import
  gen_qabstractscrollarea,
  gen_qcolor,
  gen_qcoreevent,
  gen_qevent,
  gen_qfont,
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
  gen_qtextformat,
  gen_qtextoption,
  gen_qurl,
  gen_qvariant,
  gen_qwidget
export
  gen_qabstractscrollarea,
  gen_qcolor,
  gen_qcoreevent,
  gen_qevent,
  gen_qfont,
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
  gen_qtextformat,
  gen_qtextoption,
  gen_qurl,
  gen_qvariant,
  gen_qwidget

type cQTextEdit*{.exportc: "QTextEdit", incompleteStruct.} = object
type cQTextEditExtraSelection*{.exportc: "QTextEdit__ExtraSelection", incompleteStruct.} = object

proc fcQTextEdit_new(parent: pointer): ptr cQTextEdit {.importc: "QTextEdit_new".}
proc fcQTextEdit_new2(): ptr cQTextEdit {.importc: "QTextEdit_new2".}
proc fcQTextEdit_new3(text: struct_miqt_string): ptr cQTextEdit {.importc: "QTextEdit_new3".}
proc fcQTextEdit_new4(text: struct_miqt_string, parent: pointer): ptr cQTextEdit {.importc: "QTextEdit_new4".}
proc fcQTextEdit_metaObject(self: pointer, ): pointer {.importc: "QTextEdit_metaObject".}
proc fcQTextEdit_metacast(self: pointer, param1: cstring): pointer {.importc: "QTextEdit_metacast".}
proc fcQTextEdit_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTextEdit_metacall".}
proc fcQTextEdit_tr(s: cstring): struct_miqt_string {.importc: "QTextEdit_tr".}
proc fcQTextEdit_trUtf8(s: cstring): struct_miqt_string {.importc: "QTextEdit_trUtf8".}
proc fcQTextEdit_setDocument(self: pointer, document: pointer): void {.importc: "QTextEdit_setDocument".}
proc fcQTextEdit_document(self: pointer, ): pointer {.importc: "QTextEdit_document".}
proc fcQTextEdit_setPlaceholderText(self: pointer, placeholderText: struct_miqt_string): void {.importc: "QTextEdit_setPlaceholderText".}
proc fcQTextEdit_placeholderText(self: pointer, ): struct_miqt_string {.importc: "QTextEdit_placeholderText".}
proc fcQTextEdit_setTextCursor(self: pointer, cursor: pointer): void {.importc: "QTextEdit_setTextCursor".}
proc fcQTextEdit_textCursor(self: pointer, ): pointer {.importc: "QTextEdit_textCursor".}
proc fcQTextEdit_isReadOnly(self: pointer, ): bool {.importc: "QTextEdit_isReadOnly".}
proc fcQTextEdit_setReadOnly(self: pointer, ro: bool): void {.importc: "QTextEdit_setReadOnly".}
proc fcQTextEdit_setTextInteractionFlags(self: pointer, flags: cint): void {.importc: "QTextEdit_setTextInteractionFlags".}
proc fcQTextEdit_textInteractionFlags(self: pointer, ): cint {.importc: "QTextEdit_textInteractionFlags".}
proc fcQTextEdit_fontPointSize(self: pointer, ): float64 {.importc: "QTextEdit_fontPointSize".}
proc fcQTextEdit_fontFamily(self: pointer, ): struct_miqt_string {.importc: "QTextEdit_fontFamily".}
proc fcQTextEdit_fontWeight(self: pointer, ): cint {.importc: "QTextEdit_fontWeight".}
proc fcQTextEdit_fontUnderline(self: pointer, ): bool {.importc: "QTextEdit_fontUnderline".}
proc fcQTextEdit_fontItalic(self: pointer, ): bool {.importc: "QTextEdit_fontItalic".}
proc fcQTextEdit_textColor(self: pointer, ): pointer {.importc: "QTextEdit_textColor".}
proc fcQTextEdit_textBackgroundColor(self: pointer, ): pointer {.importc: "QTextEdit_textBackgroundColor".}
proc fcQTextEdit_currentFont(self: pointer, ): pointer {.importc: "QTextEdit_currentFont".}
proc fcQTextEdit_alignment(self: pointer, ): cint {.importc: "QTextEdit_alignment".}
proc fcQTextEdit_mergeCurrentCharFormat(self: pointer, modifier: pointer): void {.importc: "QTextEdit_mergeCurrentCharFormat".}
proc fcQTextEdit_setCurrentCharFormat(self: pointer, format: pointer): void {.importc: "QTextEdit_setCurrentCharFormat".}
proc fcQTextEdit_currentCharFormat(self: pointer, ): pointer {.importc: "QTextEdit_currentCharFormat".}
proc fcQTextEdit_autoFormatting(self: pointer, ): cint {.importc: "QTextEdit_autoFormatting".}
proc fcQTextEdit_setAutoFormatting(self: pointer, features: cint): void {.importc: "QTextEdit_setAutoFormatting".}
proc fcQTextEdit_tabChangesFocus(self: pointer, ): bool {.importc: "QTextEdit_tabChangesFocus".}
proc fcQTextEdit_setTabChangesFocus(self: pointer, b: bool): void {.importc: "QTextEdit_setTabChangesFocus".}
proc fcQTextEdit_setDocumentTitle(self: pointer, title: struct_miqt_string): void {.importc: "QTextEdit_setDocumentTitle".}
proc fcQTextEdit_documentTitle(self: pointer, ): struct_miqt_string {.importc: "QTextEdit_documentTitle".}
proc fcQTextEdit_isUndoRedoEnabled(self: pointer, ): bool {.importc: "QTextEdit_isUndoRedoEnabled".}
proc fcQTextEdit_setUndoRedoEnabled(self: pointer, enable: bool): void {.importc: "QTextEdit_setUndoRedoEnabled".}
proc fcQTextEdit_lineWrapMode(self: pointer, ): cint {.importc: "QTextEdit_lineWrapMode".}
proc fcQTextEdit_setLineWrapMode(self: pointer, mode: cint): void {.importc: "QTextEdit_setLineWrapMode".}
proc fcQTextEdit_lineWrapColumnOrWidth(self: pointer, ): cint {.importc: "QTextEdit_lineWrapColumnOrWidth".}
proc fcQTextEdit_setLineWrapColumnOrWidth(self: pointer, w: cint): void {.importc: "QTextEdit_setLineWrapColumnOrWidth".}
proc fcQTextEdit_wordWrapMode(self: pointer, ): cint {.importc: "QTextEdit_wordWrapMode".}
proc fcQTextEdit_setWordWrapMode(self: pointer, policy: cint): void {.importc: "QTextEdit_setWordWrapMode".}
proc fcQTextEdit_find(self: pointer, exp: struct_miqt_string): bool {.importc: "QTextEdit_find".}
proc fcQTextEdit_findWithExp(self: pointer, exp: pointer): bool {.importc: "QTextEdit_findWithExp".}
proc fcQTextEdit_find2(self: pointer, exp: pointer): bool {.importc: "QTextEdit_find2".}
proc fcQTextEdit_toPlainText(self: pointer, ): struct_miqt_string {.importc: "QTextEdit_toPlainText".}
proc fcQTextEdit_toHtml(self: pointer, ): struct_miqt_string {.importc: "QTextEdit_toHtml".}
proc fcQTextEdit_toMarkdown(self: pointer, ): struct_miqt_string {.importc: "QTextEdit_toMarkdown".}
proc fcQTextEdit_ensureCursorVisible(self: pointer, ): void {.importc: "QTextEdit_ensureCursorVisible".}
proc fcQTextEdit_loadResource(self: pointer, typeVal: cint, name: pointer): pointer {.importc: "QTextEdit_loadResource".}
proc fcQTextEdit_createStandardContextMenu(self: pointer, ): pointer {.importc: "QTextEdit_createStandardContextMenu".}
proc fcQTextEdit_createStandardContextMenuWithPosition(self: pointer, position: pointer): pointer {.importc: "QTextEdit_createStandardContextMenuWithPosition".}
proc fcQTextEdit_cursorForPosition(self: pointer, pos: pointer): pointer {.importc: "QTextEdit_cursorForPosition".}
proc fcQTextEdit_cursorRect(self: pointer, cursor: pointer): pointer {.importc: "QTextEdit_cursorRect".}
proc fcQTextEdit_cursorRect2(self: pointer, ): pointer {.importc: "QTextEdit_cursorRect2".}
proc fcQTextEdit_anchorAt(self: pointer, pos: pointer): struct_miqt_string {.importc: "QTextEdit_anchorAt".}
proc fcQTextEdit_overwriteMode(self: pointer, ): bool {.importc: "QTextEdit_overwriteMode".}
proc fcQTextEdit_setOverwriteMode(self: pointer, overwrite: bool): void {.importc: "QTextEdit_setOverwriteMode".}
proc fcQTextEdit_tabStopWidth(self: pointer, ): cint {.importc: "QTextEdit_tabStopWidth".}
proc fcQTextEdit_setTabStopWidth(self: pointer, width: cint): void {.importc: "QTextEdit_setTabStopWidth".}
proc fcQTextEdit_tabStopDistance(self: pointer, ): float64 {.importc: "QTextEdit_tabStopDistance".}
proc fcQTextEdit_setTabStopDistance(self: pointer, distance: float64): void {.importc: "QTextEdit_setTabStopDistance".}
proc fcQTextEdit_cursorWidth(self: pointer, ): cint {.importc: "QTextEdit_cursorWidth".}
proc fcQTextEdit_setCursorWidth(self: pointer, width: cint): void {.importc: "QTextEdit_setCursorWidth".}
proc fcQTextEdit_acceptRichText(self: pointer, ): bool {.importc: "QTextEdit_acceptRichText".}
proc fcQTextEdit_setAcceptRichText(self: pointer, accept: bool): void {.importc: "QTextEdit_setAcceptRichText".}
proc fcQTextEdit_setExtraSelections(self: pointer, selections: struct_miqt_array): void {.importc: "QTextEdit_setExtraSelections".}
proc fcQTextEdit_extraSelections(self: pointer, ): struct_miqt_array {.importc: "QTextEdit_extraSelections".}
proc fcQTextEdit_moveCursor(self: pointer, operation: cint): void {.importc: "QTextEdit_moveCursor".}
proc fcQTextEdit_canPaste(self: pointer, ): bool {.importc: "QTextEdit_canPaste".}
proc fcQTextEdit_print(self: pointer, printer: pointer): void {.importc: "QTextEdit_print".}
proc fcQTextEdit_inputMethodQuery(self: pointer, property: cint): pointer {.importc: "QTextEdit_inputMethodQuery".}
proc fcQTextEdit_inputMethodQuery2(self: pointer, query: cint, argument: pointer): pointer {.importc: "QTextEdit_inputMethodQuery2".}
proc fcQTextEdit_setFontPointSize(self: pointer, s: float64): void {.importc: "QTextEdit_setFontPointSize".}
proc fcQTextEdit_setFontFamily(self: pointer, fontFamily: struct_miqt_string): void {.importc: "QTextEdit_setFontFamily".}
proc fcQTextEdit_setFontWeight(self: pointer, w: cint): void {.importc: "QTextEdit_setFontWeight".}
proc fcQTextEdit_setFontUnderline(self: pointer, b: bool): void {.importc: "QTextEdit_setFontUnderline".}
proc fcQTextEdit_setFontItalic(self: pointer, b: bool): void {.importc: "QTextEdit_setFontItalic".}
proc fcQTextEdit_setTextColor(self: pointer, c: pointer): void {.importc: "QTextEdit_setTextColor".}
proc fcQTextEdit_setTextBackgroundColor(self: pointer, c: pointer): void {.importc: "QTextEdit_setTextBackgroundColor".}
proc fcQTextEdit_setCurrentFont(self: pointer, f: pointer): void {.importc: "QTextEdit_setCurrentFont".}
proc fcQTextEdit_setAlignment(self: pointer, a: cint): void {.importc: "QTextEdit_setAlignment".}
proc fcQTextEdit_setPlainText(self: pointer, text: struct_miqt_string): void {.importc: "QTextEdit_setPlainText".}
proc fcQTextEdit_setHtml(self: pointer, text: struct_miqt_string): void {.importc: "QTextEdit_setHtml".}
proc fcQTextEdit_setMarkdown(self: pointer, markdown: struct_miqt_string): void {.importc: "QTextEdit_setMarkdown".}
proc fcQTextEdit_setText(self: pointer, text: struct_miqt_string): void {.importc: "QTextEdit_setText".}
proc fcQTextEdit_cut(self: pointer, ): void {.importc: "QTextEdit_cut".}
proc fcQTextEdit_copy(self: pointer, ): void {.importc: "QTextEdit_copy".}
proc fcQTextEdit_paste(self: pointer, ): void {.importc: "QTextEdit_paste".}
proc fcQTextEdit_undo(self: pointer, ): void {.importc: "QTextEdit_undo".}
proc fcQTextEdit_redo(self: pointer, ): void {.importc: "QTextEdit_redo".}
proc fcQTextEdit_clear(self: pointer, ): void {.importc: "QTextEdit_clear".}
proc fcQTextEdit_selectAll(self: pointer, ): void {.importc: "QTextEdit_selectAll".}
proc fcQTextEdit_insertPlainText(self: pointer, text: struct_miqt_string): void {.importc: "QTextEdit_insertPlainText".}
proc fcQTextEdit_insertHtml(self: pointer, text: struct_miqt_string): void {.importc: "QTextEdit_insertHtml".}
proc fcQTextEdit_append(self: pointer, text: struct_miqt_string): void {.importc: "QTextEdit_append".}
proc fcQTextEdit_scrollToAnchor(self: pointer, name: struct_miqt_string): void {.importc: "QTextEdit_scrollToAnchor".}
proc fcQTextEdit_zoomIn(self: pointer, ): void {.importc: "QTextEdit_zoomIn".}
proc fcQTextEdit_zoomOut(self: pointer, ): void {.importc: "QTextEdit_zoomOut".}
proc fcQTextEdit_textChanged(self: pointer, ): void {.importc: "QTextEdit_textChanged".}
proc fQTextEdit_connect_textChanged(self: pointer, slot: int) {.importc: "QTextEdit_connect_textChanged".}
proc fcQTextEdit_undoAvailable(self: pointer, b: bool): void {.importc: "QTextEdit_undoAvailable".}
proc fQTextEdit_connect_undoAvailable(self: pointer, slot: int) {.importc: "QTextEdit_connect_undoAvailable".}
proc fcQTextEdit_redoAvailable(self: pointer, b: bool): void {.importc: "QTextEdit_redoAvailable".}
proc fQTextEdit_connect_redoAvailable(self: pointer, slot: int) {.importc: "QTextEdit_connect_redoAvailable".}
proc fcQTextEdit_currentCharFormatChanged(self: pointer, format: pointer): void {.importc: "QTextEdit_currentCharFormatChanged".}
proc fQTextEdit_connect_currentCharFormatChanged(self: pointer, slot: int) {.importc: "QTextEdit_connect_currentCharFormatChanged".}
proc fcQTextEdit_copyAvailable(self: pointer, b: bool): void {.importc: "QTextEdit_copyAvailable".}
proc fQTextEdit_connect_copyAvailable(self: pointer, slot: int) {.importc: "QTextEdit_connect_copyAvailable".}
proc fcQTextEdit_selectionChanged(self: pointer, ): void {.importc: "QTextEdit_selectionChanged".}
proc fQTextEdit_connect_selectionChanged(self: pointer, slot: int) {.importc: "QTextEdit_connect_selectionChanged".}
proc fcQTextEdit_cursorPositionChanged(self: pointer, ): void {.importc: "QTextEdit_cursorPositionChanged".}
proc fQTextEdit_connect_cursorPositionChanged(self: pointer, slot: int) {.importc: "QTextEdit_connect_cursorPositionChanged".}
proc fcQTextEdit_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTextEdit_tr2".}
proc fcQTextEdit_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTextEdit_tr3".}
proc fcQTextEdit_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QTextEdit_trUtf82".}
proc fcQTextEdit_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTextEdit_trUtf83".}
proc fcQTextEdit_find22(self: pointer, exp: struct_miqt_string, options: cint): bool {.importc: "QTextEdit_find22".}
proc fcQTextEdit_find23(self: pointer, exp: pointer, options: cint): bool {.importc: "QTextEdit_find23".}
proc fcQTextEdit_find24(self: pointer, exp: pointer, options: cint): bool {.importc: "QTextEdit_find24".}
proc fcQTextEdit_toMarkdown1(self: pointer, features: cint): struct_miqt_string {.importc: "QTextEdit_toMarkdown1".}
proc fcQTextEdit_moveCursor2(self: pointer, operation: cint, mode: cint): void {.importc: "QTextEdit_moveCursor2".}
proc fcQTextEdit_zoomIn1(self: pointer, range: cint): void {.importc: "QTextEdit_zoomIn1".}
proc fcQTextEdit_zoomOut1(self: pointer, range: cint): void {.importc: "QTextEdit_zoomOut1".}
proc fQTextEdit_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QTextEdit_virtualbase_metaObject".}
proc fcQTextEdit_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_metaObject".}
proc fQTextEdit_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QTextEdit_virtualbase_metacast".}
proc fcQTextEdit_override_virtual_metacast(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_metacast".}
proc fQTextEdit_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QTextEdit_virtualbase_metacall".}
proc fcQTextEdit_override_virtual_metacall(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_metacall".}
proc fQTextEdit_virtualbase_loadResource(self: pointer, typeVal: cint, name: pointer): pointer{.importc: "QTextEdit_virtualbase_loadResource".}
proc fcQTextEdit_override_virtual_loadResource(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_loadResource".}
proc fQTextEdit_virtualbase_inputMethodQuery(self: pointer, property: cint): pointer{.importc: "QTextEdit_virtualbase_inputMethodQuery".}
proc fcQTextEdit_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_inputMethodQuery".}
proc fQTextEdit_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QTextEdit_virtualbase_event".}
proc fcQTextEdit_override_virtual_event(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_event".}
proc fQTextEdit_virtualbase_timerEvent(self: pointer, e: pointer): void{.importc: "QTextEdit_virtualbase_timerEvent".}
proc fcQTextEdit_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_timerEvent".}
proc fQTextEdit_virtualbase_keyPressEvent(self: pointer, e: pointer): void{.importc: "QTextEdit_virtualbase_keyPressEvent".}
proc fcQTextEdit_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_keyPressEvent".}
proc fQTextEdit_virtualbase_keyReleaseEvent(self: pointer, e: pointer): void{.importc: "QTextEdit_virtualbase_keyReleaseEvent".}
proc fcQTextEdit_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_keyReleaseEvent".}
proc fQTextEdit_virtualbase_resizeEvent(self: pointer, e: pointer): void{.importc: "QTextEdit_virtualbase_resizeEvent".}
proc fcQTextEdit_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_resizeEvent".}
proc fQTextEdit_virtualbase_paintEvent(self: pointer, e: pointer): void{.importc: "QTextEdit_virtualbase_paintEvent".}
proc fcQTextEdit_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_paintEvent".}
proc fQTextEdit_virtualbase_mousePressEvent(self: pointer, e: pointer): void{.importc: "QTextEdit_virtualbase_mousePressEvent".}
proc fcQTextEdit_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_mousePressEvent".}
proc fQTextEdit_virtualbase_mouseMoveEvent(self: pointer, e: pointer): void{.importc: "QTextEdit_virtualbase_mouseMoveEvent".}
proc fcQTextEdit_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_mouseMoveEvent".}
proc fQTextEdit_virtualbase_mouseReleaseEvent(self: pointer, e: pointer): void{.importc: "QTextEdit_virtualbase_mouseReleaseEvent".}
proc fcQTextEdit_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_mouseReleaseEvent".}
proc fQTextEdit_virtualbase_mouseDoubleClickEvent(self: pointer, e: pointer): void{.importc: "QTextEdit_virtualbase_mouseDoubleClickEvent".}
proc fcQTextEdit_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_mouseDoubleClickEvent".}
proc fQTextEdit_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QTextEdit_virtualbase_focusNextPrevChild".}
proc fcQTextEdit_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_focusNextPrevChild".}
proc fQTextEdit_virtualbase_contextMenuEvent(self: pointer, e: pointer): void{.importc: "QTextEdit_virtualbase_contextMenuEvent".}
proc fcQTextEdit_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_contextMenuEvent".}
proc fQTextEdit_virtualbase_dragEnterEvent(self: pointer, e: pointer): void{.importc: "QTextEdit_virtualbase_dragEnterEvent".}
proc fcQTextEdit_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_dragEnterEvent".}
proc fQTextEdit_virtualbase_dragLeaveEvent(self: pointer, e: pointer): void{.importc: "QTextEdit_virtualbase_dragLeaveEvent".}
proc fcQTextEdit_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_dragLeaveEvent".}
proc fQTextEdit_virtualbase_dragMoveEvent(self: pointer, e: pointer): void{.importc: "QTextEdit_virtualbase_dragMoveEvent".}
proc fcQTextEdit_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_dragMoveEvent".}
proc fQTextEdit_virtualbase_dropEvent(self: pointer, e: pointer): void{.importc: "QTextEdit_virtualbase_dropEvent".}
proc fcQTextEdit_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_dropEvent".}
proc fQTextEdit_virtualbase_focusInEvent(self: pointer, e: pointer): void{.importc: "QTextEdit_virtualbase_focusInEvent".}
proc fcQTextEdit_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_focusInEvent".}
proc fQTextEdit_virtualbase_focusOutEvent(self: pointer, e: pointer): void{.importc: "QTextEdit_virtualbase_focusOutEvent".}
proc fcQTextEdit_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_focusOutEvent".}
proc fQTextEdit_virtualbase_showEvent(self: pointer, param1: pointer): void{.importc: "QTextEdit_virtualbase_showEvent".}
proc fcQTextEdit_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_showEvent".}
proc fQTextEdit_virtualbase_changeEvent(self: pointer, e: pointer): void{.importc: "QTextEdit_virtualbase_changeEvent".}
proc fcQTextEdit_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_changeEvent".}
proc fQTextEdit_virtualbase_wheelEvent(self: pointer, e: pointer): void{.importc: "QTextEdit_virtualbase_wheelEvent".}
proc fcQTextEdit_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_wheelEvent".}
proc fQTextEdit_virtualbase_createMimeDataFromSelection(self: pointer, ): pointer{.importc: "QTextEdit_virtualbase_createMimeDataFromSelection".}
proc fcQTextEdit_override_virtual_createMimeDataFromSelection(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_createMimeDataFromSelection".}
proc fQTextEdit_virtualbase_canInsertFromMimeData(self: pointer, source: pointer): bool{.importc: "QTextEdit_virtualbase_canInsertFromMimeData".}
proc fcQTextEdit_override_virtual_canInsertFromMimeData(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_canInsertFromMimeData".}
proc fQTextEdit_virtualbase_insertFromMimeData(self: pointer, source: pointer): void{.importc: "QTextEdit_virtualbase_insertFromMimeData".}
proc fcQTextEdit_override_virtual_insertFromMimeData(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_insertFromMimeData".}
proc fQTextEdit_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QTextEdit_virtualbase_inputMethodEvent".}
proc fcQTextEdit_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_inputMethodEvent".}
proc fQTextEdit_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void{.importc: "QTextEdit_virtualbase_scrollContentsBy".}
proc fcQTextEdit_override_virtual_scrollContentsBy(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_scrollContentsBy".}
proc fQTextEdit_virtualbase_doSetTextCursor(self: pointer, cursor: pointer): void{.importc: "QTextEdit_virtualbase_doSetTextCursor".}
proc fcQTextEdit_override_virtual_doSetTextCursor(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_doSetTextCursor".}
proc fQTextEdit_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QTextEdit_virtualbase_minimumSizeHint".}
proc fcQTextEdit_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_minimumSizeHint".}
proc fQTextEdit_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QTextEdit_virtualbase_sizeHint".}
proc fcQTextEdit_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_sizeHint".}
proc fQTextEdit_virtualbase_setupViewport(self: pointer, viewport: pointer): void{.importc: "QTextEdit_virtualbase_setupViewport".}
proc fcQTextEdit_override_virtual_setupViewport(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_setupViewport".}
proc fQTextEdit_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool{.importc: "QTextEdit_virtualbase_eventFilter".}
proc fcQTextEdit_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_eventFilter".}
proc fQTextEdit_virtualbase_viewportEvent(self: pointer, param1: pointer): bool{.importc: "QTextEdit_virtualbase_viewportEvent".}
proc fcQTextEdit_override_virtual_viewportEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_viewportEvent".}
proc fQTextEdit_virtualbase_viewportSizeHint(self: pointer, ): pointer{.importc: "QTextEdit_virtualbase_viewportSizeHint".}
proc fcQTextEdit_override_virtual_viewportSizeHint(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_viewportSizeHint".}
proc fQTextEdit_virtualbase_devType(self: pointer, ): cint{.importc: "QTextEdit_virtualbase_devType".}
proc fcQTextEdit_override_virtual_devType(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_devType".}
proc fQTextEdit_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QTextEdit_virtualbase_setVisible".}
proc fcQTextEdit_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_setVisible".}
proc fQTextEdit_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QTextEdit_virtualbase_heightForWidth".}
proc fcQTextEdit_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_heightForWidth".}
proc fQTextEdit_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QTextEdit_virtualbase_hasHeightForWidth".}
proc fcQTextEdit_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_hasHeightForWidth".}
proc fQTextEdit_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QTextEdit_virtualbase_paintEngine".}
proc fcQTextEdit_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_paintEngine".}
proc fQTextEdit_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QTextEdit_virtualbase_enterEvent".}
proc fcQTextEdit_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_enterEvent".}
proc fQTextEdit_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QTextEdit_virtualbase_leaveEvent".}
proc fcQTextEdit_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_leaveEvent".}
proc fQTextEdit_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QTextEdit_virtualbase_moveEvent".}
proc fcQTextEdit_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_moveEvent".}
proc fQTextEdit_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QTextEdit_virtualbase_closeEvent".}
proc fcQTextEdit_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_closeEvent".}
proc fQTextEdit_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QTextEdit_virtualbase_tabletEvent".}
proc fcQTextEdit_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_tabletEvent".}
proc fQTextEdit_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QTextEdit_virtualbase_actionEvent".}
proc fcQTextEdit_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_actionEvent".}
proc fQTextEdit_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QTextEdit_virtualbase_hideEvent".}
proc fcQTextEdit_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_hideEvent".}
proc fQTextEdit_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QTextEdit_virtualbase_nativeEvent".}
proc fcQTextEdit_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_nativeEvent".}
proc fQTextEdit_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QTextEdit_virtualbase_metric".}
proc fcQTextEdit_override_virtual_metric(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_metric".}
proc fQTextEdit_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QTextEdit_virtualbase_initPainter".}
proc fcQTextEdit_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_initPainter".}
proc fQTextEdit_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QTextEdit_virtualbase_redirected".}
proc fcQTextEdit_override_virtual_redirected(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_redirected".}
proc fQTextEdit_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QTextEdit_virtualbase_sharedPainter".}
proc fcQTextEdit_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_sharedPainter".}
proc fQTextEdit_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QTextEdit_virtualbase_childEvent".}
proc fcQTextEdit_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_childEvent".}
proc fQTextEdit_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QTextEdit_virtualbase_customEvent".}
proc fcQTextEdit_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_customEvent".}
proc fQTextEdit_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QTextEdit_virtualbase_connectNotify".}
proc fcQTextEdit_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_connectNotify".}
proc fQTextEdit_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QTextEdit_virtualbase_disconnectNotify".}
proc fcQTextEdit_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QTextEdit_override_virtual_disconnectNotify".}
proc fcQTextEdit_staticMetaObject(): pointer {.importc: "QTextEdit_staticMetaObject".}
proc fcQTextEdit_delete(self: pointer) {.importc: "QTextEdit_delete".}
proc fcQTextEditExtraSelection_new(param1: pointer): ptr cQTextEditExtraSelection {.importc: "QTextEdit__ExtraSelection_new".}
proc fcQTextEditExtraSelection_operatorAssign(self: pointer, param1: pointer): void {.importc: "QTextEdit__ExtraSelection_operatorAssign".}
proc fcQTextEditExtraSelection_delete(self: pointer) {.importc: "QTextEdit__ExtraSelection_delete".}


func init*(T: type QTextEdit, h: ptr cQTextEdit): QTextEdit =
  T(h: h)
proc create*(T: type QTextEdit, parent: gen_qwidget.QWidget): QTextEdit =

  QTextEdit.init(fcQTextEdit_new(parent.h))
proc create*(T: type QTextEdit, ): QTextEdit =

  QTextEdit.init(fcQTextEdit_new2())
proc create*(T: type QTextEdit, text: string): QTextEdit =

  QTextEdit.init(fcQTextEdit_new3(struct_miqt_string(data: text, len: csize_t(len(text)))))
proc create*(T: type QTextEdit, text: string, parent: gen_qwidget.QWidget): QTextEdit =

  QTextEdit.init(fcQTextEdit_new4(struct_miqt_string(data: text, len: csize_t(len(text))), parent.h))
proc metaObject*(self: QTextEdit, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQTextEdit_metaObject(self.h))

proc metacast*(self: QTextEdit, param1: cstring): pointer =

  fcQTextEdit_metacast(self.h, param1)

proc metacall*(self: QTextEdit, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQTextEdit_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QTextEdit, s: cstring): string =

  let v_ms = fcQTextEdit_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QTextEdit, s: cstring): string =

  let v_ms = fcQTextEdit_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setDocument*(self: QTextEdit, document: gen_qtextdocument.QTextDocument): void =

  fcQTextEdit_setDocument(self.h, document.h)

proc document*(self: QTextEdit, ): gen_qtextdocument.QTextDocument =

  gen_qtextdocument.QTextDocument(h: fcQTextEdit_document(self.h))

proc setPlaceholderText*(self: QTextEdit, placeholderText: string): void =

  fcQTextEdit_setPlaceholderText(self.h, struct_miqt_string(data: placeholderText, len: csize_t(len(placeholderText))))

proc placeholderText*(self: QTextEdit, ): string =

  let v_ms = fcQTextEdit_placeholderText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setTextCursor*(self: QTextEdit, cursor: gen_qtextcursor.QTextCursor): void =

  fcQTextEdit_setTextCursor(self.h, cursor.h)

proc textCursor*(self: QTextEdit, ): gen_qtextcursor.QTextCursor =

  gen_qtextcursor.QTextCursor(h: fcQTextEdit_textCursor(self.h))

proc isReadOnly*(self: QTextEdit, ): bool =

  fcQTextEdit_isReadOnly(self.h)

proc setReadOnly*(self: QTextEdit, ro: bool): void =

  fcQTextEdit_setReadOnly(self.h, ro)

proc setTextInteractionFlags*(self: QTextEdit, flags: gen_qnamespace.TextInteractionFlag): void =

  fcQTextEdit_setTextInteractionFlags(self.h, cint(flags))

proc textInteractionFlags*(self: QTextEdit, ): gen_qnamespace.TextInteractionFlag =

  gen_qnamespace.TextInteractionFlag(fcQTextEdit_textInteractionFlags(self.h))

proc fontPointSize*(self: QTextEdit, ): float64 =

  fcQTextEdit_fontPointSize(self.h)

proc fontFamily*(self: QTextEdit, ): string =

  let v_ms = fcQTextEdit_fontFamily(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc fontWeight*(self: QTextEdit, ): cint =

  fcQTextEdit_fontWeight(self.h)

proc fontUnderline*(self: QTextEdit, ): bool =

  fcQTextEdit_fontUnderline(self.h)

proc fontItalic*(self: QTextEdit, ): bool =

  fcQTextEdit_fontItalic(self.h)

proc textColor*(self: QTextEdit, ): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQTextEdit_textColor(self.h))

proc textBackgroundColor*(self: QTextEdit, ): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQTextEdit_textBackgroundColor(self.h))

proc currentFont*(self: QTextEdit, ): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQTextEdit_currentFont(self.h))

proc alignment*(self: QTextEdit, ): gen_qnamespace.AlignmentFlag =

  gen_qnamespace.AlignmentFlag(fcQTextEdit_alignment(self.h))

proc mergeCurrentCharFormat*(self: QTextEdit, modifier: gen_qtextformat.QTextCharFormat): void =

  fcQTextEdit_mergeCurrentCharFormat(self.h, modifier.h)

proc setCurrentCharFormat*(self: QTextEdit, format: gen_qtextformat.QTextCharFormat): void =

  fcQTextEdit_setCurrentCharFormat(self.h, format.h)

proc currentCharFormat*(self: QTextEdit, ): gen_qtextformat.QTextCharFormat =

  gen_qtextformat.QTextCharFormat(h: fcQTextEdit_currentCharFormat(self.h))

proc autoFormatting*(self: QTextEdit, ): QTextEditAutoFormattingFlag =

  QTextEditAutoFormattingFlag(fcQTextEdit_autoFormatting(self.h))

proc setAutoFormatting*(self: QTextEdit, features: QTextEditAutoFormattingFlag): void =

  fcQTextEdit_setAutoFormatting(self.h, cint(features))

proc tabChangesFocus*(self: QTextEdit, ): bool =

  fcQTextEdit_tabChangesFocus(self.h)

proc setTabChangesFocus*(self: QTextEdit, b: bool): void =

  fcQTextEdit_setTabChangesFocus(self.h, b)

proc setDocumentTitle*(self: QTextEdit, title: string): void =

  fcQTextEdit_setDocumentTitle(self.h, struct_miqt_string(data: title, len: csize_t(len(title))))

proc documentTitle*(self: QTextEdit, ): string =

  let v_ms = fcQTextEdit_documentTitle(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isUndoRedoEnabled*(self: QTextEdit, ): bool =

  fcQTextEdit_isUndoRedoEnabled(self.h)

proc setUndoRedoEnabled*(self: QTextEdit, enable: bool): void =

  fcQTextEdit_setUndoRedoEnabled(self.h, enable)

proc lineWrapMode*(self: QTextEdit, ): QTextEditLineWrapMode =

  QTextEditLineWrapMode(fcQTextEdit_lineWrapMode(self.h))

proc setLineWrapMode*(self: QTextEdit, mode: QTextEditLineWrapMode): void =

  fcQTextEdit_setLineWrapMode(self.h, cint(mode))

proc lineWrapColumnOrWidth*(self: QTextEdit, ): cint =

  fcQTextEdit_lineWrapColumnOrWidth(self.h)

proc setLineWrapColumnOrWidth*(self: QTextEdit, w: cint): void =

  fcQTextEdit_setLineWrapColumnOrWidth(self.h, w)

proc wordWrapMode*(self: QTextEdit, ): gen_qtextoption.QTextOptionWrapMode =

  gen_qtextoption.QTextOptionWrapMode(fcQTextEdit_wordWrapMode(self.h))

proc setWordWrapMode*(self: QTextEdit, policy: gen_qtextoption.QTextOptionWrapMode): void =

  fcQTextEdit_setWordWrapMode(self.h, cint(policy))

proc find*(self: QTextEdit, exp: string): bool =

  fcQTextEdit_find(self.h, struct_miqt_string(data: exp, len: csize_t(len(exp))))

proc findWithExp*(self: QTextEdit, exp: gen_qregexp.QRegExp): bool =

  fcQTextEdit_findWithExp(self.h, exp.h)

proc find2*(self: QTextEdit, exp: gen_qregularexpression.QRegularExpression): bool =

  fcQTextEdit_find2(self.h, exp.h)

proc toPlainText*(self: QTextEdit, ): string =

  let v_ms = fcQTextEdit_toPlainText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toHtml*(self: QTextEdit, ): string =

  let v_ms = fcQTextEdit_toHtml(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toMarkdown*(self: QTextEdit, ): string =

  let v_ms = fcQTextEdit_toMarkdown(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc ensureCursorVisible*(self: QTextEdit, ): void =

  fcQTextEdit_ensureCursorVisible(self.h)

proc loadResource*(self: QTextEdit, typeVal: cint, name: gen_qurl.QUrl): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQTextEdit_loadResource(self.h, typeVal, name.h))

proc createStandardContextMenu*(self: QTextEdit, ): gen_qmenu.QMenu =

  gen_qmenu.QMenu(h: fcQTextEdit_createStandardContextMenu(self.h))

proc createStandardContextMenuWithPosition*(self: QTextEdit, position: gen_qpoint.QPoint): gen_qmenu.QMenu =

  gen_qmenu.QMenu(h: fcQTextEdit_createStandardContextMenuWithPosition(self.h, position.h))

proc cursorForPosition*(self: QTextEdit, pos: gen_qpoint.QPoint): gen_qtextcursor.QTextCursor =

  gen_qtextcursor.QTextCursor(h: fcQTextEdit_cursorForPosition(self.h, pos.h))

proc cursorRect*(self: QTextEdit, cursor: gen_qtextcursor.QTextCursor): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQTextEdit_cursorRect(self.h, cursor.h))

proc cursorRect2*(self: QTextEdit, ): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQTextEdit_cursorRect2(self.h))

proc anchorAt*(self: QTextEdit, pos: gen_qpoint.QPoint): string =

  let v_ms = fcQTextEdit_anchorAt(self.h, pos.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc overwriteMode*(self: QTextEdit, ): bool =

  fcQTextEdit_overwriteMode(self.h)

proc setOverwriteMode*(self: QTextEdit, overwrite: bool): void =

  fcQTextEdit_setOverwriteMode(self.h, overwrite)

proc tabStopWidth*(self: QTextEdit, ): cint =

  fcQTextEdit_tabStopWidth(self.h)

proc setTabStopWidth*(self: QTextEdit, width: cint): void =

  fcQTextEdit_setTabStopWidth(self.h, width)

proc tabStopDistance*(self: QTextEdit, ): float64 =

  fcQTextEdit_tabStopDistance(self.h)

proc setTabStopDistance*(self: QTextEdit, distance: float64): void =

  fcQTextEdit_setTabStopDistance(self.h, distance)

proc cursorWidth*(self: QTextEdit, ): cint =

  fcQTextEdit_cursorWidth(self.h)

proc setCursorWidth*(self: QTextEdit, width: cint): void =

  fcQTextEdit_setCursorWidth(self.h, width)

proc acceptRichText*(self: QTextEdit, ): bool =

  fcQTextEdit_acceptRichText(self.h)

proc setAcceptRichText*(self: QTextEdit, accept: bool): void =

  fcQTextEdit_setAcceptRichText(self.h, accept)

proc setExtraSelections*(self: QTextEdit, selections: seq[QTextEditExtraSelection]): void =

  var selections_CArray = newSeq[pointer](len(selections))
  for i in 0..<len(selections):
    selections_CArray[i] = selections[i].h

  fcQTextEdit_setExtraSelections(self.h, struct_miqt_array(len: csize_t(len(selections)), data: if len(selections) == 0: nil else: addr(selections_CArray[0])))

proc extraSelections*(self: QTextEdit, ): seq[QTextEditExtraSelection] =

  var v_ma = fcQTextEdit_extraSelections(self.h)
  var vx_ret = newSeq[QTextEditExtraSelection](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QTextEditExtraSelection(h: v_outCast[i])
  vx_ret

proc moveCursor*(self: QTextEdit, operation: gen_qtextcursor.QTextCursorMoveOperation): void =

  fcQTextEdit_moveCursor(self.h, cint(operation))

proc canPaste*(self: QTextEdit, ): bool =

  fcQTextEdit_canPaste(self.h)

proc print*(self: QTextEdit, printer: gen_qpagedpaintdevice.QPagedPaintDevice): void =

  fcQTextEdit_print(self.h, printer.h)

proc inputMethodQuery*(self: QTextEdit, property: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQTextEdit_inputMethodQuery(self.h, cint(property)))

proc inputMethodQuery2*(self: QTextEdit, query: gen_qnamespace.InputMethodQuery, argument: gen_qvariant.QVariant): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQTextEdit_inputMethodQuery2(self.h, cint(query), argument.h))

proc setFontPointSize*(self: QTextEdit, s: float64): void =

  fcQTextEdit_setFontPointSize(self.h, s)

proc setFontFamily*(self: QTextEdit, fontFamily: string): void =

  fcQTextEdit_setFontFamily(self.h, struct_miqt_string(data: fontFamily, len: csize_t(len(fontFamily))))

proc setFontWeight*(self: QTextEdit, w: cint): void =

  fcQTextEdit_setFontWeight(self.h, w)

proc setFontUnderline*(self: QTextEdit, b: bool): void =

  fcQTextEdit_setFontUnderline(self.h, b)

proc setFontItalic*(self: QTextEdit, b: bool): void =

  fcQTextEdit_setFontItalic(self.h, b)

proc setTextColor*(self: QTextEdit, c: gen_qcolor.QColor): void =

  fcQTextEdit_setTextColor(self.h, c.h)

proc setTextBackgroundColor*(self: QTextEdit, c: gen_qcolor.QColor): void =

  fcQTextEdit_setTextBackgroundColor(self.h, c.h)

proc setCurrentFont*(self: QTextEdit, f: gen_qfont.QFont): void =

  fcQTextEdit_setCurrentFont(self.h, f.h)

proc setAlignment*(self: QTextEdit, a: gen_qnamespace.AlignmentFlag): void =

  fcQTextEdit_setAlignment(self.h, cint(a))

proc setPlainText*(self: QTextEdit, text: string): void =

  fcQTextEdit_setPlainText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc setHtml*(self: QTextEdit, text: string): void =

  fcQTextEdit_setHtml(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc setMarkdown*(self: QTextEdit, markdown: string): void =

  fcQTextEdit_setMarkdown(self.h, struct_miqt_string(data: markdown, len: csize_t(len(markdown))))

proc setText*(self: QTextEdit, text: string): void =

  fcQTextEdit_setText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc cut*(self: QTextEdit, ): void =

  fcQTextEdit_cut(self.h)

proc copy*(self: QTextEdit, ): void =

  fcQTextEdit_copy(self.h)

proc paste*(self: QTextEdit, ): void =

  fcQTextEdit_paste(self.h)

proc undo*(self: QTextEdit, ): void =

  fcQTextEdit_undo(self.h)

proc redo*(self: QTextEdit, ): void =

  fcQTextEdit_redo(self.h)

proc clear*(self: QTextEdit, ): void =

  fcQTextEdit_clear(self.h)

proc selectAll*(self: QTextEdit, ): void =

  fcQTextEdit_selectAll(self.h)

proc insertPlainText*(self: QTextEdit, text: string): void =

  fcQTextEdit_insertPlainText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc insertHtml*(self: QTextEdit, text: string): void =

  fcQTextEdit_insertHtml(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc append*(self: QTextEdit, text: string): void =

  fcQTextEdit_append(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc scrollToAnchor*(self: QTextEdit, name: string): void =

  fcQTextEdit_scrollToAnchor(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc zoomIn*(self: QTextEdit, ): void =

  fcQTextEdit_zoomIn(self.h)

proc zoomOut*(self: QTextEdit, ): void =

  fcQTextEdit_zoomOut(self.h)

proc textChanged*(self: QTextEdit, ): void =

  fcQTextEdit_textChanged(self.h)

proc miqt_exec_callback_QTextEdit_textChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc ontextChanged*(self: QTextEdit, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTextEdit_connect_textChanged(self.h, cast[int](addr tmp[]))
proc undoAvailable*(self: QTextEdit, b: bool): void =

  fcQTextEdit_undoAvailable(self.h, b)

proc miqt_exec_callback_QTextEdit_undoAvailable(slot: int, b: bool) {.exportc.} =
  type Cb = proc(b: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = b


  nimfunc[](slotval1)

proc onundoAvailable*(self: QTextEdit, slot: proc(b: bool)) =
  type Cb = proc(b: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTextEdit_connect_undoAvailable(self.h, cast[int](addr tmp[]))
proc redoAvailable*(self: QTextEdit, b: bool): void =

  fcQTextEdit_redoAvailable(self.h, b)

proc miqt_exec_callback_QTextEdit_redoAvailable(slot: int, b: bool) {.exportc.} =
  type Cb = proc(b: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = b


  nimfunc[](slotval1)

proc onredoAvailable*(self: QTextEdit, slot: proc(b: bool)) =
  type Cb = proc(b: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTextEdit_connect_redoAvailable(self.h, cast[int](addr tmp[]))
proc currentCharFormatChanged*(self: QTextEdit, format: gen_qtextformat.QTextCharFormat): void =

  fcQTextEdit_currentCharFormatChanged(self.h, format.h)

proc miqt_exec_callback_QTextEdit_currentCharFormatChanged(slot: int, format: pointer) {.exportc.} =
  type Cb = proc(format: gen_qtextformat.QTextCharFormat)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qtextformat.QTextCharFormat(h: format)


  nimfunc[](slotval1)

proc oncurrentCharFormatChanged*(self: QTextEdit, slot: proc(format: gen_qtextformat.QTextCharFormat)) =
  type Cb = proc(format: gen_qtextformat.QTextCharFormat)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTextEdit_connect_currentCharFormatChanged(self.h, cast[int](addr tmp[]))
proc copyAvailable*(self: QTextEdit, b: bool): void =

  fcQTextEdit_copyAvailable(self.h, b)

proc miqt_exec_callback_QTextEdit_copyAvailable(slot: int, b: bool) {.exportc.} =
  type Cb = proc(b: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = b


  nimfunc[](slotval1)

proc oncopyAvailable*(self: QTextEdit, slot: proc(b: bool)) =
  type Cb = proc(b: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTextEdit_connect_copyAvailable(self.h, cast[int](addr tmp[]))
proc selectionChanged*(self: QTextEdit, ): void =

  fcQTextEdit_selectionChanged(self.h)

proc miqt_exec_callback_QTextEdit_selectionChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onselectionChanged*(self: QTextEdit, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTextEdit_connect_selectionChanged(self.h, cast[int](addr tmp[]))
proc cursorPositionChanged*(self: QTextEdit, ): void =

  fcQTextEdit_cursorPositionChanged(self.h)

proc miqt_exec_callback_QTextEdit_cursorPositionChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc oncursorPositionChanged*(self: QTextEdit, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTextEdit_connect_cursorPositionChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QTextEdit, s: cstring, c: cstring): string =

  let v_ms = fcQTextEdit_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QTextEdit, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQTextEdit_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QTextEdit, s: cstring, c: cstring): string =

  let v_ms = fcQTextEdit_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QTextEdit, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQTextEdit_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc find22*(self: QTextEdit, exp: string, options: gen_qtextdocument.QTextDocumentFindFlag): bool =

  fcQTextEdit_find22(self.h, struct_miqt_string(data: exp, len: csize_t(len(exp))), cint(options))

proc find23*(self: QTextEdit, exp: gen_qregexp.QRegExp, options: gen_qtextdocument.QTextDocumentFindFlag): bool =

  fcQTextEdit_find23(self.h, exp.h, cint(options))

proc find24*(self: QTextEdit, exp: gen_qregularexpression.QRegularExpression, options: gen_qtextdocument.QTextDocumentFindFlag): bool =

  fcQTextEdit_find24(self.h, exp.h, cint(options))

proc toMarkdown1*(self: QTextEdit, features: gen_qtextdocument.QTextDocumentMarkdownFeature): string =

  let v_ms = fcQTextEdit_toMarkdown1(self.h, cint(features))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc moveCursor2*(self: QTextEdit, operation: gen_qtextcursor.QTextCursorMoveOperation, mode: gen_qtextcursor.QTextCursorMoveMode): void =

  fcQTextEdit_moveCursor2(self.h, cint(operation), cint(mode))

proc zoomIn1*(self: QTextEdit, range: cint): void =

  fcQTextEdit_zoomIn1(self.h, range)

proc zoomOut1*(self: QTextEdit, range: cint): void =

  fcQTextEdit_zoomOut1(self.h, range)

proc callVirtualBase_metaObject(self: QTextEdit, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQTextEdit_virtualbase_metaObject(self.h))

type QTextEditmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QTextEdit, slot: proc(super: QTextEditmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QTextEditmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_metaObject(self: ptr cQTextEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QTextEdit_metaObject ".} =
  type Cb = proc(super: QTextEditmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QTextEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QTextEdit, param1: cstring): pointer =


  fQTextEdit_virtualbase_metacast(self.h, param1)

type QTextEditmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QTextEdit, slot: proc(super: QTextEditmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QTextEditmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_metacast(self: ptr cQTextEdit, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QTextEdit_metacast ".} =
  type Cb = proc(super: QTextEditmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QTextEdit(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QTextEdit, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQTextEdit_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QTextEditmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QTextEdit, slot: proc(super: QTextEditmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QTextEditmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_metacall(self: ptr cQTextEdit, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QTextEdit_metacall ".} =
  type Cb = proc(super: QTextEditmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QTextEdit(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_loadResource(self: QTextEdit, typeVal: cint, name: gen_qurl.QUrl): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQTextEdit_virtualbase_loadResource(self.h, typeVal, name.h))

type QTextEditloadResourceBase* = proc(typeVal: cint, name: gen_qurl.QUrl): gen_qvariant.QVariant
proc onloadResource*(self: QTextEdit, slot: proc(super: QTextEditloadResourceBase, typeVal: cint, name: gen_qurl.QUrl): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QTextEditloadResourceBase, typeVal: cint, name: gen_qurl.QUrl): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_loadResource(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_loadResource(self: ptr cQTextEdit, slot: int, typeVal: cint, name: pointer): pointer {.exportc: "miqt_exec_callback_QTextEdit_loadResource ".} =
  type Cb = proc(super: QTextEditloadResourceBase, typeVal: cint, name: gen_qurl.QUrl): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(typeVal: cint, name: gen_qurl.QUrl): auto =
    callVirtualBase_loadResource(QTextEdit(h: self), typeVal, name)
  let slotval1 = typeVal

  let slotval2 = gen_qurl.QUrl(h: name)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn.h
proc callVirtualBase_inputMethodQuery(self: QTextEdit, property: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQTextEdit_virtualbase_inputMethodQuery(self.h, cint(property)))

type QTextEditinputMethodQueryBase* = proc(property: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QTextEdit, slot: proc(super: QTextEditinputMethodQueryBase, property: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QTextEditinputMethodQueryBase, property: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_inputMethodQuery(self: ptr cQTextEdit, slot: int, property: cint): pointer {.exportc: "miqt_exec_callback_QTextEdit_inputMethodQuery ".} =
  type Cb = proc(super: QTextEditinputMethodQueryBase, property: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(property: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QTextEdit(h: self), property)
  let slotval1 = gen_qnamespace.InputMethodQuery(property)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_event(self: QTextEdit, e: gen_qcoreevent.QEvent): bool =


  fQTextEdit_virtualbase_event(self.h, e.h)

type QTextEditeventBase* = proc(e: gen_qcoreevent.QEvent): bool
proc onevent*(self: QTextEdit, slot: proc(super: QTextEditeventBase, e: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QTextEditeventBase, e: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_event(self: ptr cQTextEdit, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QTextEdit_event ".} =
  type Cb = proc(super: QTextEditeventBase, e: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QTextEdit(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QTextEdit, e: gen_qcoreevent.QTimerEvent): void =


  fQTextEdit_virtualbase_timerEvent(self.h, e.h)

type QTextEdittimerEventBase* = proc(e: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QTextEdit, slot: proc(super: QTextEdittimerEventBase, e: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextEdittimerEventBase, e: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_timerEvent(self: ptr cQTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_timerEvent ".} =
  type Cb = proc(super: QTextEdittimerEventBase, e: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QTextEdit(h: self), e)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QTextEdit, e: gen_qevent.QKeyEvent): void =


  fQTextEdit_virtualbase_keyPressEvent(self.h, e.h)

type QTextEditkeyPressEventBase* = proc(e: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QTextEdit, slot: proc(super: QTextEditkeyPressEventBase, e: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextEditkeyPressEventBase, e: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_keyPressEvent(self: ptr cQTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_keyPressEvent ".} =
  type Cb = proc(super: QTextEditkeyPressEventBase, e: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QTextEdit(h: self), e)
  let slotval1 = gen_qevent.QKeyEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QTextEdit, e: gen_qevent.QKeyEvent): void =


  fQTextEdit_virtualbase_keyReleaseEvent(self.h, e.h)

type QTextEditkeyReleaseEventBase* = proc(e: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QTextEdit, slot: proc(super: QTextEditkeyReleaseEventBase, e: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextEditkeyReleaseEventBase, e: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_keyReleaseEvent(self: ptr cQTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_keyReleaseEvent ".} =
  type Cb = proc(super: QTextEditkeyReleaseEventBase, e: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QTextEdit(h: self), e)
  let slotval1 = gen_qevent.QKeyEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QTextEdit, e: gen_qevent.QResizeEvent): void =


  fQTextEdit_virtualbase_resizeEvent(self.h, e.h)

type QTextEditresizeEventBase* = proc(e: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QTextEdit, slot: proc(super: QTextEditresizeEventBase, e: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextEditresizeEventBase, e: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_resizeEvent(self: ptr cQTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_resizeEvent ".} =
  type Cb = proc(super: QTextEditresizeEventBase, e: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QTextEdit(h: self), e)
  let slotval1 = gen_qevent.QResizeEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QTextEdit, e: gen_qevent.QPaintEvent): void =


  fQTextEdit_virtualbase_paintEvent(self.h, e.h)

type QTextEditpaintEventBase* = proc(e: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QTextEdit, slot: proc(super: QTextEditpaintEventBase, e: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextEditpaintEventBase, e: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_paintEvent(self: ptr cQTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_paintEvent ".} =
  type Cb = proc(super: QTextEditpaintEventBase, e: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QTextEdit(h: self), e)
  let slotval1 = gen_qevent.QPaintEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mousePressEvent(self: QTextEdit, e: gen_qevent.QMouseEvent): void =


  fQTextEdit_virtualbase_mousePressEvent(self.h, e.h)

type QTextEditmousePressEventBase* = proc(e: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QTextEdit, slot: proc(super: QTextEditmousePressEventBase, e: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextEditmousePressEventBase, e: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_mousePressEvent(self: ptr cQTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_mousePressEvent ".} =
  type Cb = proc(super: QTextEditmousePressEventBase, e: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QTextEdit(h: self), e)
  let slotval1 = gen_qevent.QMouseEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QTextEdit, e: gen_qevent.QMouseEvent): void =


  fQTextEdit_virtualbase_mouseMoveEvent(self.h, e.h)

type QTextEditmouseMoveEventBase* = proc(e: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QTextEdit, slot: proc(super: QTextEditmouseMoveEventBase, e: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextEditmouseMoveEventBase, e: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_mouseMoveEvent(self: ptr cQTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_mouseMoveEvent ".} =
  type Cb = proc(super: QTextEditmouseMoveEventBase, e: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QTextEdit(h: self), e)
  let slotval1 = gen_qevent.QMouseEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QTextEdit, e: gen_qevent.QMouseEvent): void =


  fQTextEdit_virtualbase_mouseReleaseEvent(self.h, e.h)

type QTextEditmouseReleaseEventBase* = proc(e: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QTextEdit, slot: proc(super: QTextEditmouseReleaseEventBase, e: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextEditmouseReleaseEventBase, e: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_mouseReleaseEvent(self: ptr cQTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_mouseReleaseEvent ".} =
  type Cb = proc(super: QTextEditmouseReleaseEventBase, e: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QTextEdit(h: self), e)
  let slotval1 = gen_qevent.QMouseEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QTextEdit, e: gen_qevent.QMouseEvent): void =


  fQTextEdit_virtualbase_mouseDoubleClickEvent(self.h, e.h)

type QTextEditmouseDoubleClickEventBase* = proc(e: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QTextEdit, slot: proc(super: QTextEditmouseDoubleClickEventBase, e: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextEditmouseDoubleClickEventBase, e: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_mouseDoubleClickEvent(self: ptr cQTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QTextEditmouseDoubleClickEventBase, e: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QTextEdit(h: self), e)
  let slotval1 = gen_qevent.QMouseEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusNextPrevChild(self: QTextEdit, next: bool): bool =


  fQTextEdit_virtualbase_focusNextPrevChild(self.h, next)

type QTextEditfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QTextEdit, slot: proc(super: QTextEditfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QTextEditfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_focusNextPrevChild(self: ptr cQTextEdit, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QTextEdit_focusNextPrevChild ".} =
  type Cb = proc(super: QTextEditfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QTextEdit(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_contextMenuEvent(self: QTextEdit, e: gen_qevent.QContextMenuEvent): void =


  fQTextEdit_virtualbase_contextMenuEvent(self.h, e.h)

type QTextEditcontextMenuEventBase* = proc(e: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QTextEdit, slot: proc(super: QTextEditcontextMenuEventBase, e: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextEditcontextMenuEventBase, e: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_contextMenuEvent(self: ptr cQTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_contextMenuEvent ".} =
  type Cb = proc(super: QTextEditcontextMenuEventBase, e: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QTextEdit(h: self), e)
  let slotval1 = gen_qevent.QContextMenuEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QTextEdit, e: gen_qevent.QDragEnterEvent): void =


  fQTextEdit_virtualbase_dragEnterEvent(self.h, e.h)

type QTextEditdragEnterEventBase* = proc(e: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QTextEdit, slot: proc(super: QTextEditdragEnterEventBase, e: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextEditdragEnterEventBase, e: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_dragEnterEvent(self: ptr cQTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_dragEnterEvent ".} =
  type Cb = proc(super: QTextEditdragEnterEventBase, e: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QTextEdit(h: self), e)
  let slotval1 = gen_qevent.QDragEnterEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QTextEdit, e: gen_qevent.QDragLeaveEvent): void =


  fQTextEdit_virtualbase_dragLeaveEvent(self.h, e.h)

type QTextEditdragLeaveEventBase* = proc(e: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QTextEdit, slot: proc(super: QTextEditdragLeaveEventBase, e: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextEditdragLeaveEventBase, e: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_dragLeaveEvent(self: ptr cQTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_dragLeaveEvent ".} =
  type Cb = proc(super: QTextEditdragLeaveEventBase, e: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QTextEdit(h: self), e)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QTextEdit, e: gen_qevent.QDragMoveEvent): void =


  fQTextEdit_virtualbase_dragMoveEvent(self.h, e.h)

type QTextEditdragMoveEventBase* = proc(e: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QTextEdit, slot: proc(super: QTextEditdragMoveEventBase, e: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextEditdragMoveEventBase, e: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_dragMoveEvent(self: ptr cQTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_dragMoveEvent ".} =
  type Cb = proc(super: QTextEditdragMoveEventBase, e: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QTextEdit(h: self), e)
  let slotval1 = gen_qevent.QDragMoveEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QTextEdit, e: gen_qevent.QDropEvent): void =


  fQTextEdit_virtualbase_dropEvent(self.h, e.h)

type QTextEditdropEventBase* = proc(e: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QTextEdit, slot: proc(super: QTextEditdropEventBase, e: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextEditdropEventBase, e: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_dropEvent(self: ptr cQTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_dropEvent ".} =
  type Cb = proc(super: QTextEditdropEventBase, e: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QTextEdit(h: self), e)
  let slotval1 = gen_qevent.QDropEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QTextEdit, e: gen_qevent.QFocusEvent): void =


  fQTextEdit_virtualbase_focusInEvent(self.h, e.h)

type QTextEditfocusInEventBase* = proc(e: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QTextEdit, slot: proc(super: QTextEditfocusInEventBase, e: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextEditfocusInEventBase, e: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_focusInEvent(self: ptr cQTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_focusInEvent ".} =
  type Cb = proc(super: QTextEditfocusInEventBase, e: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QTextEdit(h: self), e)
  let slotval1 = gen_qevent.QFocusEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QTextEdit, e: gen_qevent.QFocusEvent): void =


  fQTextEdit_virtualbase_focusOutEvent(self.h, e.h)

type QTextEditfocusOutEventBase* = proc(e: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QTextEdit, slot: proc(super: QTextEditfocusOutEventBase, e: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextEditfocusOutEventBase, e: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_focusOutEvent(self: ptr cQTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_focusOutEvent ".} =
  type Cb = proc(super: QTextEditfocusOutEventBase, e: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QTextEdit(h: self), e)
  let slotval1 = gen_qevent.QFocusEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QTextEdit, param1: gen_qevent.QShowEvent): void =


  fQTextEdit_virtualbase_showEvent(self.h, param1.h)

type QTextEditshowEventBase* = proc(param1: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QTextEdit, slot: proc(super: QTextEditshowEventBase, param1: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextEditshowEventBase, param1: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_showEvent(self: ptr cQTextEdit, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_showEvent ".} =
  type Cb = proc(super: QTextEditshowEventBase, param1: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QTextEdit(h: self), param1)
  let slotval1 = gen_qevent.QShowEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_changeEvent(self: QTextEdit, e: gen_qcoreevent.QEvent): void =


  fQTextEdit_virtualbase_changeEvent(self.h, e.h)

type QTextEditchangeEventBase* = proc(e: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QTextEdit, slot: proc(super: QTextEditchangeEventBase, e: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextEditchangeEventBase, e: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_changeEvent(self: ptr cQTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_changeEvent ".} =
  type Cb = proc(super: QTextEditchangeEventBase, e: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QTextEdit(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QTextEdit, e: gen_qevent.QWheelEvent): void =


  fQTextEdit_virtualbase_wheelEvent(self.h, e.h)

type QTextEditwheelEventBase* = proc(e: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QTextEdit, slot: proc(super: QTextEditwheelEventBase, e: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextEditwheelEventBase, e: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_wheelEvent(self: ptr cQTextEdit, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_wheelEvent ".} =
  type Cb = proc(super: QTextEditwheelEventBase, e: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QTextEdit(h: self), e)
  let slotval1 = gen_qevent.QWheelEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_createMimeDataFromSelection(self: QTextEdit, ): gen_qmimedata.QMimeData =


  gen_qmimedata.QMimeData(h: fQTextEdit_virtualbase_createMimeDataFromSelection(self.h))

type QTextEditcreateMimeDataFromSelectionBase* = proc(): gen_qmimedata.QMimeData
proc oncreateMimeDataFromSelection*(self: QTextEdit, slot: proc(super: QTextEditcreateMimeDataFromSelectionBase): gen_qmimedata.QMimeData) =
  # TODO check subclass
  type Cb = proc(super: QTextEditcreateMimeDataFromSelectionBase): gen_qmimedata.QMimeData
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_createMimeDataFromSelection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_createMimeDataFromSelection(self: ptr cQTextEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QTextEdit_createMimeDataFromSelection ".} =
  type Cb = proc(super: QTextEditcreateMimeDataFromSelectionBase): gen_qmimedata.QMimeData
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_createMimeDataFromSelection(QTextEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_canInsertFromMimeData(self: QTextEdit, source: gen_qmimedata.QMimeData): bool =


  fQTextEdit_virtualbase_canInsertFromMimeData(self.h, source.h)

type QTextEditcanInsertFromMimeDataBase* = proc(source: gen_qmimedata.QMimeData): bool
proc oncanInsertFromMimeData*(self: QTextEdit, slot: proc(super: QTextEditcanInsertFromMimeDataBase, source: gen_qmimedata.QMimeData): bool) =
  # TODO check subclass
  type Cb = proc(super: QTextEditcanInsertFromMimeDataBase, source: gen_qmimedata.QMimeData): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_canInsertFromMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_canInsertFromMimeData(self: ptr cQTextEdit, slot: int, source: pointer): bool {.exportc: "miqt_exec_callback_QTextEdit_canInsertFromMimeData ".} =
  type Cb = proc(super: QTextEditcanInsertFromMimeDataBase, source: gen_qmimedata.QMimeData): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(source: gen_qmimedata.QMimeData): auto =
    callVirtualBase_canInsertFromMimeData(QTextEdit(h: self), source)
  let slotval1 = gen_qmimedata.QMimeData(h: source)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_insertFromMimeData(self: QTextEdit, source: gen_qmimedata.QMimeData): void =


  fQTextEdit_virtualbase_insertFromMimeData(self.h, source.h)

type QTextEditinsertFromMimeDataBase* = proc(source: gen_qmimedata.QMimeData): void
proc oninsertFromMimeData*(self: QTextEdit, slot: proc(super: QTextEditinsertFromMimeDataBase, source: gen_qmimedata.QMimeData): void) =
  # TODO check subclass
  type Cb = proc(super: QTextEditinsertFromMimeDataBase, source: gen_qmimedata.QMimeData): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_insertFromMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_insertFromMimeData(self: ptr cQTextEdit, slot: int, source: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_insertFromMimeData ".} =
  type Cb = proc(super: QTextEditinsertFromMimeDataBase, source: gen_qmimedata.QMimeData): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(source: gen_qmimedata.QMimeData): auto =
    callVirtualBase_insertFromMimeData(QTextEdit(h: self), source)
  let slotval1 = gen_qmimedata.QMimeData(h: source)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodEvent(self: QTextEdit, param1: gen_qevent.QInputMethodEvent): void =


  fQTextEdit_virtualbase_inputMethodEvent(self.h, param1.h)

type QTextEditinputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QTextEdit, slot: proc(super: QTextEditinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextEditinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_inputMethodEvent(self: ptr cQTextEdit, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_inputMethodEvent ".} =
  type Cb = proc(super: QTextEditinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QTextEdit(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_scrollContentsBy(self: QTextEdit, dx: cint, dy: cint): void =


  fQTextEdit_virtualbase_scrollContentsBy(self.h, dx, dy)

type QTextEditscrollContentsByBase* = proc(dx: cint, dy: cint): void
proc onscrollContentsBy*(self: QTextEdit, slot: proc(super: QTextEditscrollContentsByBase, dx: cint, dy: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QTextEditscrollContentsByBase, dx: cint, dy: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_scrollContentsBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_scrollContentsBy(self: ptr cQTextEdit, slot: int, dx: cint, dy: cint): void {.exportc: "miqt_exec_callback_QTextEdit_scrollContentsBy ".} =
  type Cb = proc(super: QTextEditscrollContentsByBase, dx: cint, dy: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(dx: cint, dy: cint): auto =
    callVirtualBase_scrollContentsBy(QTextEdit(h: self), dx, dy)
  let slotval1 = dx

  let slotval2 = dy


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_doSetTextCursor(self: QTextEdit, cursor: gen_qtextcursor.QTextCursor): void =


  fQTextEdit_virtualbase_doSetTextCursor(self.h, cursor.h)

type QTextEditdoSetTextCursorBase* = proc(cursor: gen_qtextcursor.QTextCursor): void
proc ondoSetTextCursor*(self: QTextEdit, slot: proc(super: QTextEditdoSetTextCursorBase, cursor: gen_qtextcursor.QTextCursor): void) =
  # TODO check subclass
  type Cb = proc(super: QTextEditdoSetTextCursorBase, cursor: gen_qtextcursor.QTextCursor): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_doSetTextCursor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_doSetTextCursor(self: ptr cQTextEdit, slot: int, cursor: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_doSetTextCursor ".} =
  type Cb = proc(super: QTextEditdoSetTextCursorBase, cursor: gen_qtextcursor.QTextCursor): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(cursor: gen_qtextcursor.QTextCursor): auto =
    callVirtualBase_doSetTextCursor(QTextEdit(h: self), cursor)
  let slotval1 = gen_qtextcursor.QTextCursor(h: cursor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_minimumSizeHint(self: QTextEdit, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQTextEdit_virtualbase_minimumSizeHint(self.h))

type QTextEditminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QTextEdit, slot: proc(super: QTextEditminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QTextEditminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_minimumSizeHint(self: ptr cQTextEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QTextEdit_minimumSizeHint ".} =
  type Cb = proc(super: QTextEditminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QTextEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_sizeHint(self: QTextEdit, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQTextEdit_virtualbase_sizeHint(self.h))

type QTextEditsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QTextEdit, slot: proc(super: QTextEditsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QTextEditsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_sizeHint(self: ptr cQTextEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QTextEdit_sizeHint ".} =
  type Cb = proc(super: QTextEditsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QTextEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setupViewport(self: QTextEdit, viewport: gen_qwidget.QWidget): void =


  fQTextEdit_virtualbase_setupViewport(self.h, viewport.h)

type QTextEditsetupViewportBase* = proc(viewport: gen_qwidget.QWidget): void
proc onsetupViewport*(self: QTextEdit, slot: proc(super: QTextEditsetupViewportBase, viewport: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(super: QTextEditsetupViewportBase, viewport: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_setupViewport(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_setupViewport(self: ptr cQTextEdit, slot: int, viewport: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_setupViewport ".} =
  type Cb = proc(super: QTextEditsetupViewportBase, viewport: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(viewport: gen_qwidget.QWidget): auto =
    callVirtualBase_setupViewport(QTextEdit(h: self), viewport)
  let slotval1 = gen_qwidget.QWidget(h: viewport)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_eventFilter(self: QTextEdit, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool =


  fQTextEdit_virtualbase_eventFilter(self.h, param1.h, param2.h)

type QTextEditeventFilterBase* = proc(param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QTextEdit, slot: proc(super: QTextEditeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QTextEditeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_eventFilter(self: ptr cQTextEdit, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_QTextEdit_eventFilter ".} =
  type Cb = proc(super: QTextEditeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QTextEdit(h: self), param1, param2)
  let slotval1 = gen_qobject.QObject(h: param1)

  let slotval2 = gen_qcoreevent.QEvent(h: param2)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_viewportEvent(self: QTextEdit, param1: gen_qcoreevent.QEvent): bool =


  fQTextEdit_virtualbase_viewportEvent(self.h, param1.h)

type QTextEditviewportEventBase* = proc(param1: gen_qcoreevent.QEvent): bool
proc onviewportEvent*(self: QTextEdit, slot: proc(super: QTextEditviewportEventBase, param1: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QTextEditviewportEventBase, param1: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_viewportEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_viewportEvent(self: ptr cQTextEdit, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QTextEdit_viewportEvent ".} =
  type Cb = proc(super: QTextEditviewportEventBase, param1: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_viewportEvent(QTextEdit(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_viewportSizeHint(self: QTextEdit, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQTextEdit_virtualbase_viewportSizeHint(self.h))

type QTextEditviewportSizeHintBase* = proc(): gen_qsize.QSize
proc onviewportSizeHint*(self: QTextEdit, slot: proc(super: QTextEditviewportSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QTextEditviewportSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_viewportSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_viewportSizeHint(self: ptr cQTextEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QTextEdit_viewportSizeHint ".} =
  type Cb = proc(super: QTextEditviewportSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_viewportSizeHint(QTextEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_devType(self: QTextEdit, ): cint =


  fQTextEdit_virtualbase_devType(self.h)

type QTextEditdevTypeBase* = proc(): cint
proc ondevType*(self: QTextEdit, slot: proc(super: QTextEditdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QTextEditdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_devType(self: ptr cQTextEdit, slot: int): cint {.exportc: "miqt_exec_callback_QTextEdit_devType ".} =
  type Cb = proc(super: QTextEditdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QTextEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QTextEdit, visible: bool): void =


  fQTextEdit_virtualbase_setVisible(self.h, visible)

type QTextEditsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QTextEdit, slot: proc(super: QTextEditsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QTextEditsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_setVisible(self: ptr cQTextEdit, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QTextEdit_setVisible ".} =
  type Cb = proc(super: QTextEditsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QTextEdit(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_heightForWidth(self: QTextEdit, param1: cint): cint =


  fQTextEdit_virtualbase_heightForWidth(self.h, param1)

type QTextEditheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QTextEdit, slot: proc(super: QTextEditheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QTextEditheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_heightForWidth(self: ptr cQTextEdit, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QTextEdit_heightForWidth ".} =
  type Cb = proc(super: QTextEditheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QTextEdit(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QTextEdit, ): bool =


  fQTextEdit_virtualbase_hasHeightForWidth(self.h)

type QTextEdithasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QTextEdit, slot: proc(super: QTextEdithasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QTextEdithasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_hasHeightForWidth(self: ptr cQTextEdit, slot: int): bool {.exportc: "miqt_exec_callback_QTextEdit_hasHeightForWidth ".} =
  type Cb = proc(super: QTextEdithasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QTextEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QTextEdit, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQTextEdit_virtualbase_paintEngine(self.h))

type QTextEditpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QTextEdit, slot: proc(super: QTextEditpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QTextEditpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_paintEngine(self: ptr cQTextEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QTextEdit_paintEngine ".} =
  type Cb = proc(super: QTextEditpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QTextEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_enterEvent(self: QTextEdit, event: gen_qcoreevent.QEvent): void =


  fQTextEdit_virtualbase_enterEvent(self.h, event.h)

type QTextEditenterEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onenterEvent*(self: QTextEdit, slot: proc(super: QTextEditenterEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextEditenterEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_enterEvent(self: ptr cQTextEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_enterEvent ".} =
  type Cb = proc(super: QTextEditenterEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_enterEvent(QTextEdit(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QTextEdit, event: gen_qcoreevent.QEvent): void =


  fQTextEdit_virtualbase_leaveEvent(self.h, event.h)

type QTextEditleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QTextEdit, slot: proc(super: QTextEditleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextEditleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_leaveEvent(self: ptr cQTextEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_leaveEvent ".} =
  type Cb = proc(super: QTextEditleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QTextEdit(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QTextEdit, event: gen_qevent.QMoveEvent): void =


  fQTextEdit_virtualbase_moveEvent(self.h, event.h)

type QTextEditmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QTextEdit, slot: proc(super: QTextEditmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextEditmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_moveEvent(self: ptr cQTextEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_moveEvent ".} =
  type Cb = proc(super: QTextEditmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QTextEdit(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QTextEdit, event: gen_qevent.QCloseEvent): void =


  fQTextEdit_virtualbase_closeEvent(self.h, event.h)

type QTextEditcloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QTextEdit, slot: proc(super: QTextEditcloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextEditcloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_closeEvent(self: ptr cQTextEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_closeEvent ".} =
  type Cb = proc(super: QTextEditcloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QTextEdit(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QTextEdit, event: gen_qevent.QTabletEvent): void =


  fQTextEdit_virtualbase_tabletEvent(self.h, event.h)

type QTextEdittabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QTextEdit, slot: proc(super: QTextEdittabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextEdittabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_tabletEvent(self: ptr cQTextEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_tabletEvent ".} =
  type Cb = proc(super: QTextEdittabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QTextEdit(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QTextEdit, event: gen_qevent.QActionEvent): void =


  fQTextEdit_virtualbase_actionEvent(self.h, event.h)

type QTextEditactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QTextEdit, slot: proc(super: QTextEditactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextEditactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_actionEvent(self: ptr cQTextEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_actionEvent ".} =
  type Cb = proc(super: QTextEditactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QTextEdit(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QTextEdit, event: gen_qevent.QHideEvent): void =


  fQTextEdit_virtualbase_hideEvent(self.h, event.h)

type QTextEdithideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QTextEdit, slot: proc(super: QTextEdithideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextEdithideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_hideEvent(self: ptr cQTextEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_hideEvent ".} =
  type Cb = proc(super: QTextEdithideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QTextEdit(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QTextEdit, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =


  fQTextEdit_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QTextEditnativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: QTextEdit, slot: proc(super: QTextEditnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool) =
  # TODO check subclass
  type Cb = proc(super: QTextEditnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_nativeEvent(self: ptr cQTextEdit, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QTextEdit_nativeEvent ".} =
  type Cb = proc(super: QTextEditnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr clong): auto =
    callVirtualBase_nativeEvent(QTextEdit(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QTextEdit, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQTextEdit_virtualbase_metric(self.h, cint(param1))

type QTextEditmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QTextEdit, slot: proc(super: QTextEditmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QTextEditmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_metric(self: ptr cQTextEdit, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QTextEdit_metric ".} =
  type Cb = proc(super: QTextEditmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QTextEdit(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QTextEdit, painter: gen_qpainter.QPainter): void =


  fQTextEdit_virtualbase_initPainter(self.h, painter.h)

type QTextEditinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QTextEdit, slot: proc(super: QTextEditinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QTextEditinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_initPainter(self: ptr cQTextEdit, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_initPainter ".} =
  type Cb = proc(super: QTextEditinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QTextEdit(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QTextEdit, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQTextEdit_virtualbase_redirected(self.h, offset.h))

type QTextEditredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QTextEdit, slot: proc(super: QTextEditredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QTextEditredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_redirected(self: ptr cQTextEdit, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QTextEdit_redirected ".} =
  type Cb = proc(super: QTextEditredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QTextEdit(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QTextEdit, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQTextEdit_virtualbase_sharedPainter(self.h))

type QTextEditsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QTextEdit, slot: proc(super: QTextEditsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QTextEditsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_sharedPainter(self: ptr cQTextEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QTextEdit_sharedPainter ".} =
  type Cb = proc(super: QTextEditsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QTextEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_childEvent(self: QTextEdit, event: gen_qcoreevent.QChildEvent): void =


  fQTextEdit_virtualbase_childEvent(self.h, event.h)

type QTextEditchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QTextEdit, slot: proc(super: QTextEditchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextEditchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_childEvent(self: ptr cQTextEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_childEvent ".} =
  type Cb = proc(super: QTextEditchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QTextEdit(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QTextEdit, event: gen_qcoreevent.QEvent): void =


  fQTextEdit_virtualbase_customEvent(self.h, event.h)

type QTextEditcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QTextEdit, slot: proc(super: QTextEditcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextEditcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_customEvent(self: ptr cQTextEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_customEvent ".} =
  type Cb = proc(super: QTextEditcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QTextEdit(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QTextEdit, signal: gen_qmetaobject.QMetaMethod): void =


  fQTextEdit_virtualbase_connectNotify(self.h, signal.h)

type QTextEditconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QTextEdit, slot: proc(super: QTextEditconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QTextEditconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_connectNotify(self: ptr cQTextEdit, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_connectNotify ".} =
  type Cb = proc(super: QTextEditconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QTextEdit(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QTextEdit, signal: gen_qmetaobject.QMetaMethod): void =


  fQTextEdit_virtualbase_disconnectNotify(self.h, signal.h)

type QTextEditdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QTextEdit, slot: proc(super: QTextEditdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QTextEditdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextEdit_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextEdit_disconnectNotify(self: ptr cQTextEdit, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTextEdit_disconnectNotify ".} =
  type Cb = proc(super: QTextEditdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QTextEdit(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QTextEdit): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQTextEdit_staticMetaObject())
proc delete*(self: QTextEdit) =
  fcQTextEdit_delete(self.h)

func init*(T: type QTextEditExtraSelection, h: ptr cQTextEditExtraSelection): QTextEditExtraSelection =
  T(h: h)
proc create*(T: type QTextEditExtraSelection, param1: QTextEditExtraSelection): QTextEditExtraSelection =

  QTextEditExtraSelection.init(fcQTextEditExtraSelection_new(param1.h))
proc operatorAssign*(self: QTextEditExtraSelection, param1: QTextEditExtraSelection): void =

  fcQTextEditExtraSelection_operatorAssign(self.h, param1.h)

proc delete*(self: QTextEditExtraSelection) =
  fcQTextEditExtraSelection_delete(self.h)
