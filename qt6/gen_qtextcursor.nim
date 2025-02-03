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
{.compile("gen_qtextcursor.cpp", cflags).}


type QTextCursorMoveMode* = cint
const
  QTextCursorMoveAnchor* = 0
  QTextCursorKeepAnchor* = 1



type QTextCursorMoveOperation* = cint
const
  QTextCursorNoMove* = 0
  QTextCursorStart* = 1
  QTextCursorUp* = 2
  QTextCursorStartOfLine* = 3
  QTextCursorStartOfBlock* = 4
  QTextCursorStartOfWord* = 5
  QTextCursorPreviousBlock* = 6
  QTextCursorPreviousCharacter* = 7
  QTextCursorPreviousWord* = 8
  QTextCursorLeft* = 9
  QTextCursorWordLeft* = 10
  QTextCursorEnd* = 11
  QTextCursorDown* = 12
  QTextCursorEndOfLine* = 13
  QTextCursorEndOfWord* = 14
  QTextCursorEndOfBlock* = 15
  QTextCursorNextBlock* = 16
  QTextCursorNextCharacter* = 17
  QTextCursorNextWord* = 18
  QTextCursorRight* = 19
  QTextCursorWordRight* = 20
  QTextCursorNextCell* = 21
  QTextCursorPreviousCell* = 22
  QTextCursorNextRow* = 23
  QTextCursorPreviousRow* = 24



type QTextCursorSelectionType* = cint
const
  QTextCursorWordUnderCursor* = 0
  QTextCursorLineUnderCursor* = 1
  QTextCursorBlockUnderCursor* = 2
  QTextCursorDocument* = 3



import gen_qtextcursor_types
export gen_qtextcursor_types

import
  gen_qimage,
  gen_qtextdocument,
  gen_qtextdocumentfragment,
  gen_qtextformat,
  gen_qtextlist,
  gen_qtextobject,
  gen_qtexttable
export
  gen_qimage,
  gen_qtextdocument,
  gen_qtextdocumentfragment,
  gen_qtextformat,
  gen_qtextlist,
  gen_qtextobject,
  gen_qtexttable

type cQTextCursor*{.exportc: "QTextCursor", incompleteStruct.} = object

proc fcQTextCursor_new(): ptr cQTextCursor {.importc: "QTextCursor_new".}
proc fcQTextCursor_new2(document: pointer): ptr cQTextCursor {.importc: "QTextCursor_new2".}
proc fcQTextCursor_new3(frame: pointer): ptr cQTextCursor {.importc: "QTextCursor_new3".}
proc fcQTextCursor_new4(blockVal: pointer): ptr cQTextCursor {.importc: "QTextCursor_new4".}
proc fcQTextCursor_new5(cursor: pointer): ptr cQTextCursor {.importc: "QTextCursor_new5".}
proc fcQTextCursor_operatorAssign(self: pointer, other: pointer): void {.importc: "QTextCursor_operatorAssign".}
proc fcQTextCursor_swap(self: pointer, other: pointer): void {.importc: "QTextCursor_swap".}
proc fcQTextCursor_isNull(self: pointer, ): bool {.importc: "QTextCursor_isNull".}
proc fcQTextCursor_setPosition(self: pointer, pos: cint): void {.importc: "QTextCursor_setPosition".}
proc fcQTextCursor_position(self: pointer, ): cint {.importc: "QTextCursor_position".}
proc fcQTextCursor_positionInBlock(self: pointer, ): cint {.importc: "QTextCursor_positionInBlock".}
proc fcQTextCursor_anchor(self: pointer, ): cint {.importc: "QTextCursor_anchor".}
proc fcQTextCursor_insertText(self: pointer, text: struct_miqt_string): void {.importc: "QTextCursor_insertText".}
proc fcQTextCursor_insertText2(self: pointer, text: struct_miqt_string, format: pointer): void {.importc: "QTextCursor_insertText2".}
proc fcQTextCursor_movePosition(self: pointer, op: cint): bool {.importc: "QTextCursor_movePosition".}
proc fcQTextCursor_visualNavigation(self: pointer, ): bool {.importc: "QTextCursor_visualNavigation".}
proc fcQTextCursor_setVisualNavigation(self: pointer, b: bool): void {.importc: "QTextCursor_setVisualNavigation".}
proc fcQTextCursor_setVerticalMovementX(self: pointer, x: cint): void {.importc: "QTextCursor_setVerticalMovementX".}
proc fcQTextCursor_verticalMovementX(self: pointer, ): cint {.importc: "QTextCursor_verticalMovementX".}
proc fcQTextCursor_setKeepPositionOnInsert(self: pointer, b: bool): void {.importc: "QTextCursor_setKeepPositionOnInsert".}
proc fcQTextCursor_keepPositionOnInsert(self: pointer, ): bool {.importc: "QTextCursor_keepPositionOnInsert".}
proc fcQTextCursor_deleteChar(self: pointer, ): void {.importc: "QTextCursor_deleteChar".}
proc fcQTextCursor_deletePreviousChar(self: pointer, ): void {.importc: "QTextCursor_deletePreviousChar".}
proc fcQTextCursor_select(self: pointer, selection: cint): void {.importc: "QTextCursor_select".}
proc fcQTextCursor_hasSelection(self: pointer, ): bool {.importc: "QTextCursor_hasSelection".}
proc fcQTextCursor_hasComplexSelection(self: pointer, ): bool {.importc: "QTextCursor_hasComplexSelection".}
proc fcQTextCursor_removeSelectedText(self: pointer, ): void {.importc: "QTextCursor_removeSelectedText".}
proc fcQTextCursor_clearSelection(self: pointer, ): void {.importc: "QTextCursor_clearSelection".}
proc fcQTextCursor_selectionStart(self: pointer, ): cint {.importc: "QTextCursor_selectionStart".}
proc fcQTextCursor_selectionEnd(self: pointer, ): cint {.importc: "QTextCursor_selectionEnd".}
proc fcQTextCursor_selectedText(self: pointer, ): struct_miqt_string {.importc: "QTextCursor_selectedText".}
proc fcQTextCursor_selection(self: pointer, ): pointer {.importc: "QTextCursor_selection".}
proc fcQTextCursor_selectedTableCells(self: pointer, firstRow: ptr cint, numRows: ptr cint, firstColumn: ptr cint, numColumns: ptr cint): void {.importc: "QTextCursor_selectedTableCells".}
proc fcQTextCursor_blockX(self: pointer, ): pointer {.importc: "QTextCursor_block".}
proc fcQTextCursor_charFormat(self: pointer, ): pointer {.importc: "QTextCursor_charFormat".}
proc fcQTextCursor_setCharFormat(self: pointer, format: pointer): void {.importc: "QTextCursor_setCharFormat".}
proc fcQTextCursor_mergeCharFormat(self: pointer, modifier: pointer): void {.importc: "QTextCursor_mergeCharFormat".}
proc fcQTextCursor_blockFormat(self: pointer, ): pointer {.importc: "QTextCursor_blockFormat".}
proc fcQTextCursor_setBlockFormat(self: pointer, format: pointer): void {.importc: "QTextCursor_setBlockFormat".}
proc fcQTextCursor_mergeBlockFormat(self: pointer, modifier: pointer): void {.importc: "QTextCursor_mergeBlockFormat".}
proc fcQTextCursor_blockCharFormat(self: pointer, ): pointer {.importc: "QTextCursor_blockCharFormat".}
proc fcQTextCursor_setBlockCharFormat(self: pointer, format: pointer): void {.importc: "QTextCursor_setBlockCharFormat".}
proc fcQTextCursor_mergeBlockCharFormat(self: pointer, modifier: pointer): void {.importc: "QTextCursor_mergeBlockCharFormat".}
proc fcQTextCursor_atBlockStart(self: pointer, ): bool {.importc: "QTextCursor_atBlockStart".}
proc fcQTextCursor_atBlockEnd(self: pointer, ): bool {.importc: "QTextCursor_atBlockEnd".}
proc fcQTextCursor_atStart(self: pointer, ): bool {.importc: "QTextCursor_atStart".}
proc fcQTextCursor_atEnd(self: pointer, ): bool {.importc: "QTextCursor_atEnd".}
proc fcQTextCursor_insertBlock(self: pointer, ): void {.importc: "QTextCursor_insertBlock".}
proc fcQTextCursor_insertBlockWithFormat(self: pointer, format: pointer): void {.importc: "QTextCursor_insertBlockWithFormat".}
proc fcQTextCursor_insertBlock2(self: pointer, format: pointer, charFormat: pointer): void {.importc: "QTextCursor_insertBlock2".}
proc fcQTextCursor_insertList(self: pointer, format: pointer): pointer {.importc: "QTextCursor_insertList".}
proc fcQTextCursor_insertListWithStyle(self: pointer, style: cint): pointer {.importc: "QTextCursor_insertListWithStyle".}
proc fcQTextCursor_createList(self: pointer, format: pointer): pointer {.importc: "QTextCursor_createList".}
proc fcQTextCursor_createListWithStyle(self: pointer, style: cint): pointer {.importc: "QTextCursor_createListWithStyle".}
proc fcQTextCursor_currentList(self: pointer, ): pointer {.importc: "QTextCursor_currentList".}
proc fcQTextCursor_insertTable(self: pointer, rows: cint, cols: cint, format: pointer): pointer {.importc: "QTextCursor_insertTable".}
proc fcQTextCursor_insertTable2(self: pointer, rows: cint, cols: cint): pointer {.importc: "QTextCursor_insertTable2".}
proc fcQTextCursor_currentTable(self: pointer, ): pointer {.importc: "QTextCursor_currentTable".}
proc fcQTextCursor_insertFrame(self: pointer, format: pointer): pointer {.importc: "QTextCursor_insertFrame".}
proc fcQTextCursor_currentFrame(self: pointer, ): pointer {.importc: "QTextCursor_currentFrame".}
proc fcQTextCursor_insertFragment(self: pointer, fragment: pointer): void {.importc: "QTextCursor_insertFragment".}
proc fcQTextCursor_insertHtml(self: pointer, html: struct_miqt_string): void {.importc: "QTextCursor_insertHtml".}
proc fcQTextCursor_insertMarkdown(self: pointer, markdown: struct_miqt_string): void {.importc: "QTextCursor_insertMarkdown".}
proc fcQTextCursor_insertImage(self: pointer, format: pointer, alignment: cint): void {.importc: "QTextCursor_insertImage".}
proc fcQTextCursor_insertImageWithFormat(self: pointer, format: pointer): void {.importc: "QTextCursor_insertImageWithFormat".}
proc fcQTextCursor_insertImageWithName(self: pointer, name: struct_miqt_string): void {.importc: "QTextCursor_insertImageWithName".}
proc fcQTextCursor_insertImageWithImage(self: pointer, image: pointer): void {.importc: "QTextCursor_insertImageWithImage".}
proc fcQTextCursor_beginEditBlock(self: pointer, ): void {.importc: "QTextCursor_beginEditBlock".}
proc fcQTextCursor_joinPreviousEditBlock(self: pointer, ): void {.importc: "QTextCursor_joinPreviousEditBlock".}
proc fcQTextCursor_endEditBlock(self: pointer, ): void {.importc: "QTextCursor_endEditBlock".}
proc fcQTextCursor_operatorNotEqual(self: pointer, rhs: pointer): bool {.importc: "QTextCursor_operatorNotEqual".}
proc fcQTextCursor_operatorLesser(self: pointer, rhs: pointer): bool {.importc: "QTextCursor_operatorLesser".}
proc fcQTextCursor_operatorLesserOrEqual(self: pointer, rhs: pointer): bool {.importc: "QTextCursor_operatorLesserOrEqual".}
proc fcQTextCursor_operatorEqual(self: pointer, rhs: pointer): bool {.importc: "QTextCursor_operatorEqual".}
proc fcQTextCursor_operatorGreaterOrEqual(self: pointer, rhs: pointer): bool {.importc: "QTextCursor_operatorGreaterOrEqual".}
proc fcQTextCursor_operatorGreater(self: pointer, rhs: pointer): bool {.importc: "QTextCursor_operatorGreater".}
proc fcQTextCursor_isCopyOf(self: pointer, other: pointer): bool {.importc: "QTextCursor_isCopyOf".}
proc fcQTextCursor_blockNumber(self: pointer, ): cint {.importc: "QTextCursor_blockNumber".}
proc fcQTextCursor_columnNumber(self: pointer, ): cint {.importc: "QTextCursor_columnNumber".}
proc fcQTextCursor_document(self: pointer, ): pointer {.importc: "QTextCursor_document".}
proc fcQTextCursor_setPosition2(self: pointer, pos: cint, mode: cint): void {.importc: "QTextCursor_setPosition2".}
proc fcQTextCursor_movePosition2(self: pointer, op: cint, param2: cint): bool {.importc: "QTextCursor_movePosition2".}
proc fcQTextCursor_movePosition3(self: pointer, op: cint, param2: cint, n: cint): bool {.importc: "QTextCursor_movePosition3".}
proc fcQTextCursor_insertMarkdown2(self: pointer, markdown: struct_miqt_string, features: cint): void {.importc: "QTextCursor_insertMarkdown2".}
proc fcQTextCursor_insertImage2(self: pointer, image: pointer, name: struct_miqt_string): void {.importc: "QTextCursor_insertImage2".}
proc fcQTextCursor_delete(self: pointer) {.importc: "QTextCursor_delete".}


func init*(T: type QTextCursor, h: ptr cQTextCursor): QTextCursor =
  T(h: h)
proc create*(T: type QTextCursor, ): QTextCursor =

  QTextCursor.init(fcQTextCursor_new())
proc create*(T: type QTextCursor, document: gen_qtextdocument.QTextDocument): QTextCursor =

  QTextCursor.init(fcQTextCursor_new2(document.h))
proc create2*(T: type QTextCursor, frame: gen_qtextobject.QTextFrame): QTextCursor =

  QTextCursor.init(fcQTextCursor_new3(frame.h))
proc create2*(T: type QTextCursor, blockVal: gen_qtextobject.QTextBlock): QTextCursor =

  QTextCursor.init(fcQTextCursor_new4(blockVal.h))
proc create2*(T: type QTextCursor, cursor: QTextCursor): QTextCursor =

  QTextCursor.init(fcQTextCursor_new5(cursor.h))
proc operatorAssign*(self: QTextCursor, other: QTextCursor): void =

  fcQTextCursor_operatorAssign(self.h, other.h)

proc swap*(self: QTextCursor, other: QTextCursor): void =

  fcQTextCursor_swap(self.h, other.h)

proc isNull*(self: QTextCursor, ): bool =

  fcQTextCursor_isNull(self.h)

proc setPosition*(self: QTextCursor, pos: cint): void =

  fcQTextCursor_setPosition(self.h, pos)

proc position*(self: QTextCursor, ): cint =

  fcQTextCursor_position(self.h)

proc positionInBlock*(self: QTextCursor, ): cint =

  fcQTextCursor_positionInBlock(self.h)

proc anchor*(self: QTextCursor, ): cint =

  fcQTextCursor_anchor(self.h)

proc insertText*(self: QTextCursor, text: string): void =

  fcQTextCursor_insertText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc insertText2*(self: QTextCursor, text: string, format: gen_qtextformat.QTextCharFormat): void =

  fcQTextCursor_insertText2(self.h, struct_miqt_string(data: text, len: csize_t(len(text))), format.h)

proc movePosition*(self: QTextCursor, op: QTextCursorMoveOperation): bool =

  fcQTextCursor_movePosition(self.h, cint(op))

proc visualNavigation*(self: QTextCursor, ): bool =

  fcQTextCursor_visualNavigation(self.h)

proc setVisualNavigation*(self: QTextCursor, b: bool): void =

  fcQTextCursor_setVisualNavigation(self.h, b)

proc setVerticalMovementX*(self: QTextCursor, x: cint): void =

  fcQTextCursor_setVerticalMovementX(self.h, x)

proc verticalMovementX*(self: QTextCursor, ): cint =

  fcQTextCursor_verticalMovementX(self.h)

proc setKeepPositionOnInsert*(self: QTextCursor, b: bool): void =

  fcQTextCursor_setKeepPositionOnInsert(self.h, b)

proc keepPositionOnInsert*(self: QTextCursor, ): bool =

  fcQTextCursor_keepPositionOnInsert(self.h)

proc deleteChar*(self: QTextCursor, ): void =

  fcQTextCursor_deleteChar(self.h)

proc deletePreviousChar*(self: QTextCursor, ): void =

  fcQTextCursor_deletePreviousChar(self.h)

proc select*(self: QTextCursor, selection: QTextCursorSelectionType): void =

  fcQTextCursor_select(self.h, cint(selection))

proc hasSelection*(self: QTextCursor, ): bool =

  fcQTextCursor_hasSelection(self.h)

proc hasComplexSelection*(self: QTextCursor, ): bool =

  fcQTextCursor_hasComplexSelection(self.h)

proc removeSelectedText*(self: QTextCursor, ): void =

  fcQTextCursor_removeSelectedText(self.h)

proc clearSelection*(self: QTextCursor, ): void =

  fcQTextCursor_clearSelection(self.h)

proc selectionStart*(self: QTextCursor, ): cint =

  fcQTextCursor_selectionStart(self.h)

proc selectionEnd*(self: QTextCursor, ): cint =

  fcQTextCursor_selectionEnd(self.h)

proc selectedText*(self: QTextCursor, ): string =

  let v_ms = fcQTextCursor_selectedText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc selection*(self: QTextCursor, ): gen_qtextdocumentfragment.QTextDocumentFragment =

  gen_qtextdocumentfragment.QTextDocumentFragment(h: fcQTextCursor_selection(self.h))

proc selectedTableCells*(self: QTextCursor, firstRow: ptr cint, numRows: ptr cint, firstColumn: ptr cint, numColumns: ptr cint): void =

  fcQTextCursor_selectedTableCells(self.h, firstRow, numRows, firstColumn, numColumns)

proc blockX*(self: QTextCursor, ): gen_qtextobject.QTextBlock =

  gen_qtextobject.QTextBlock(h: fcQTextCursor_blockX(self.h))

proc charFormat*(self: QTextCursor, ): gen_qtextformat.QTextCharFormat =

  gen_qtextformat.QTextCharFormat(h: fcQTextCursor_charFormat(self.h))

proc setCharFormat*(self: QTextCursor, format: gen_qtextformat.QTextCharFormat): void =

  fcQTextCursor_setCharFormat(self.h, format.h)

proc mergeCharFormat*(self: QTextCursor, modifier: gen_qtextformat.QTextCharFormat): void =

  fcQTextCursor_mergeCharFormat(self.h, modifier.h)

proc blockFormat*(self: QTextCursor, ): gen_qtextformat.QTextBlockFormat =

  gen_qtextformat.QTextBlockFormat(h: fcQTextCursor_blockFormat(self.h))

proc setBlockFormat*(self: QTextCursor, format: gen_qtextformat.QTextBlockFormat): void =

  fcQTextCursor_setBlockFormat(self.h, format.h)

proc mergeBlockFormat*(self: QTextCursor, modifier: gen_qtextformat.QTextBlockFormat): void =

  fcQTextCursor_mergeBlockFormat(self.h, modifier.h)

proc blockCharFormat*(self: QTextCursor, ): gen_qtextformat.QTextCharFormat =

  gen_qtextformat.QTextCharFormat(h: fcQTextCursor_blockCharFormat(self.h))

proc setBlockCharFormat*(self: QTextCursor, format: gen_qtextformat.QTextCharFormat): void =

  fcQTextCursor_setBlockCharFormat(self.h, format.h)

proc mergeBlockCharFormat*(self: QTextCursor, modifier: gen_qtextformat.QTextCharFormat): void =

  fcQTextCursor_mergeBlockCharFormat(self.h, modifier.h)

proc atBlockStart*(self: QTextCursor, ): bool =

  fcQTextCursor_atBlockStart(self.h)

proc atBlockEnd*(self: QTextCursor, ): bool =

  fcQTextCursor_atBlockEnd(self.h)

proc atStart*(self: QTextCursor, ): bool =

  fcQTextCursor_atStart(self.h)

proc atEnd*(self: QTextCursor, ): bool =

  fcQTextCursor_atEnd(self.h)

proc insertBlock*(self: QTextCursor, ): void =

  fcQTextCursor_insertBlock(self.h)

proc insertBlockWithFormat*(self: QTextCursor, format: gen_qtextformat.QTextBlockFormat): void =

  fcQTextCursor_insertBlockWithFormat(self.h, format.h)

proc insertBlock2*(self: QTextCursor, format: gen_qtextformat.QTextBlockFormat, charFormat: gen_qtextformat.QTextCharFormat): void =

  fcQTextCursor_insertBlock2(self.h, format.h, charFormat.h)

proc insertList*(self: QTextCursor, format: gen_qtextformat.QTextListFormat): gen_qtextlist.QTextList =

  gen_qtextlist.QTextList(h: fcQTextCursor_insertList(self.h, format.h))

proc insertListWithStyle*(self: QTextCursor, style: gen_qtextformat.QTextListFormatStyle): gen_qtextlist.QTextList =

  gen_qtextlist.QTextList(h: fcQTextCursor_insertListWithStyle(self.h, cint(style)))

proc createList*(self: QTextCursor, format: gen_qtextformat.QTextListFormat): gen_qtextlist.QTextList =

  gen_qtextlist.QTextList(h: fcQTextCursor_createList(self.h, format.h))

proc createListWithStyle*(self: QTextCursor, style: gen_qtextformat.QTextListFormatStyle): gen_qtextlist.QTextList =

  gen_qtextlist.QTextList(h: fcQTextCursor_createListWithStyle(self.h, cint(style)))

proc currentList*(self: QTextCursor, ): gen_qtextlist.QTextList =

  gen_qtextlist.QTextList(h: fcQTextCursor_currentList(self.h))

proc insertTable*(self: QTextCursor, rows: cint, cols: cint, format: gen_qtextformat.QTextTableFormat): gen_qtexttable.QTextTable =

  gen_qtexttable.QTextTable(h: fcQTextCursor_insertTable(self.h, rows, cols, format.h))

proc insertTable2*(self: QTextCursor, rows: cint, cols: cint): gen_qtexttable.QTextTable =

  gen_qtexttable.QTextTable(h: fcQTextCursor_insertTable2(self.h, rows, cols))

proc currentTable*(self: QTextCursor, ): gen_qtexttable.QTextTable =

  gen_qtexttable.QTextTable(h: fcQTextCursor_currentTable(self.h))

proc insertFrame*(self: QTextCursor, format: gen_qtextformat.QTextFrameFormat): gen_qtextobject.QTextFrame =

  gen_qtextobject.QTextFrame(h: fcQTextCursor_insertFrame(self.h, format.h))

proc currentFrame*(self: QTextCursor, ): gen_qtextobject.QTextFrame =

  gen_qtextobject.QTextFrame(h: fcQTextCursor_currentFrame(self.h))

proc insertFragment*(self: QTextCursor, fragment: gen_qtextdocumentfragment.QTextDocumentFragment): void =

  fcQTextCursor_insertFragment(self.h, fragment.h)

proc insertHtml*(self: QTextCursor, html: string): void =

  fcQTextCursor_insertHtml(self.h, struct_miqt_string(data: html, len: csize_t(len(html))))

proc insertMarkdown*(self: QTextCursor, markdown: string): void =

  fcQTextCursor_insertMarkdown(self.h, struct_miqt_string(data: markdown, len: csize_t(len(markdown))))

proc insertImage*(self: QTextCursor, format: gen_qtextformat.QTextImageFormat, alignment: gen_qtextformat.QTextFrameFormatPosition): void =

  fcQTextCursor_insertImage(self.h, format.h, cint(alignment))

proc insertImageWithFormat*(self: QTextCursor, format: gen_qtextformat.QTextImageFormat): void =

  fcQTextCursor_insertImageWithFormat(self.h, format.h)

proc insertImageWithName*(self: QTextCursor, name: string): void =

  fcQTextCursor_insertImageWithName(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc insertImageWithImage*(self: QTextCursor, image: gen_qimage.QImage): void =

  fcQTextCursor_insertImageWithImage(self.h, image.h)

proc beginEditBlock*(self: QTextCursor, ): void =

  fcQTextCursor_beginEditBlock(self.h)

proc joinPreviousEditBlock*(self: QTextCursor, ): void =

  fcQTextCursor_joinPreviousEditBlock(self.h)

proc endEditBlock*(self: QTextCursor, ): void =

  fcQTextCursor_endEditBlock(self.h)

proc operatorNotEqual*(self: QTextCursor, rhs: QTextCursor): bool =

  fcQTextCursor_operatorNotEqual(self.h, rhs.h)

proc operatorLesser*(self: QTextCursor, rhs: QTextCursor): bool =

  fcQTextCursor_operatorLesser(self.h, rhs.h)

proc operatorLesserOrEqual*(self: QTextCursor, rhs: QTextCursor): bool =

  fcQTextCursor_operatorLesserOrEqual(self.h, rhs.h)

proc operatorEqual*(self: QTextCursor, rhs: QTextCursor): bool =

  fcQTextCursor_operatorEqual(self.h, rhs.h)

proc operatorGreaterOrEqual*(self: QTextCursor, rhs: QTextCursor): bool =

  fcQTextCursor_operatorGreaterOrEqual(self.h, rhs.h)

proc operatorGreater*(self: QTextCursor, rhs: QTextCursor): bool =

  fcQTextCursor_operatorGreater(self.h, rhs.h)

proc isCopyOf*(self: QTextCursor, other: QTextCursor): bool =

  fcQTextCursor_isCopyOf(self.h, other.h)

proc blockNumber*(self: QTextCursor, ): cint =

  fcQTextCursor_blockNumber(self.h)

proc columnNumber*(self: QTextCursor, ): cint =

  fcQTextCursor_columnNumber(self.h)

proc document*(self: QTextCursor, ): gen_qtextdocument.QTextDocument =

  gen_qtextdocument.QTextDocument(h: fcQTextCursor_document(self.h))

proc setPosition2*(self: QTextCursor, pos: cint, mode: QTextCursorMoveMode): void =

  fcQTextCursor_setPosition2(self.h, pos, cint(mode))

proc movePosition2*(self: QTextCursor, op: QTextCursorMoveOperation, param2: QTextCursorMoveMode): bool =

  fcQTextCursor_movePosition2(self.h, cint(op), cint(param2))

proc movePosition3*(self: QTextCursor, op: QTextCursorMoveOperation, param2: QTextCursorMoveMode, n: cint): bool =

  fcQTextCursor_movePosition3(self.h, cint(op), cint(param2), n)

proc insertMarkdown2*(self: QTextCursor, markdown: string, features: gen_qtextdocument.QTextDocumentMarkdownFeature): void =

  fcQTextCursor_insertMarkdown2(self.h, struct_miqt_string(data: markdown, len: csize_t(len(markdown))), cint(features))

proc insertImage2*(self: QTextCursor, image: gen_qimage.QImage, name: string): void =

  fcQTextCursor_insertImage2(self.h, image.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc delete*(self: QTextCursor) =
  fcQTextCursor_delete(self.h)
