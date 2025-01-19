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
{.compile("gen_qtextdocument.cpp", cflags).}


type QTextDocumentMetaInformation* = cint
const
  QTextDocumentDocumentTitle* = 0
  QTextDocumentDocumentUrl* = 1
  QTextDocumentCssMedia* = 2



type QTextDocumentMarkdownFeature* = cint
const
  QTextDocumentMarkdownNoHTML* = 96
  QTextDocumentMarkdownDialectCommonMark* = 0
  QTextDocumentMarkdownDialectGitHub* = 20236



type QTextDocumentFindFlag* = cint
const
  QTextDocumentFindBackward* = 1
  QTextDocumentFindCaseSensitively* = 2
  QTextDocumentFindWholeWords* = 4



type QTextDocumentResourceType* = cint
const
  QTextDocumentUnknownResource* = 0
  QTextDocumentHtmlResource* = 1
  QTextDocumentImageResource* = 2
  QTextDocumentStyleSheetResource* = 3
  QTextDocumentMarkdownResource* = 4
  QTextDocumentUserResource* = 100



type QTextDocumentStacks* = cint
const
  QTextDocumentUndoStack* = 1
  QTextDocumentRedoStack* = 2
  QTextDocumentUndoAndRedoStacks* = 3



import gen_qtextdocument_types
export gen_qtextdocument_types

import
  gen_qabstracttextdocumentlayout,
  gen_qchar,
  gen_qcoreevent,
  gen_qfont,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpagedpaintdevice,
  gen_qpainter,
  gen_qrect,
  gen_qregularexpression,
  gen_qsize,
  gen_qtextcursor,
  gen_qtextformat,
  gen_qtextobject,
  gen_qtextoption,
  gen_qurl,
  gen_qvariant
export
  gen_qabstracttextdocumentlayout,
  gen_qchar,
  gen_qcoreevent,
  gen_qfont,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpagedpaintdevice,
  gen_qpainter,
  gen_qrect,
  gen_qregularexpression,
  gen_qsize,
  gen_qtextcursor,
  gen_qtextformat,
  gen_qtextobject,
  gen_qtextoption,
  gen_qurl,
  gen_qvariant

type cQAbstractUndoItem*{.exportc: "QAbstractUndoItem", incompleteStruct.} = object
type cQTextDocument*{.exportc: "QTextDocument", incompleteStruct.} = object

proc fcQAbstractUndoItem_undo(self: pointer, ): void {.importc: "QAbstractUndoItem_undo".}
proc fcQAbstractUndoItem_redo(self: pointer, ): void {.importc: "QAbstractUndoItem_redo".}
proc fcQAbstractUndoItem_operatorAssign(self: pointer, param1: pointer): void {.importc: "QAbstractUndoItem_operatorAssign".}
proc fcQAbstractUndoItem_delete(self: pointer) {.importc: "QAbstractUndoItem_delete".}
proc fcQTextDocument_new(): ptr cQTextDocument {.importc: "QTextDocument_new".}
proc fcQTextDocument_new2(text: struct_miqt_string): ptr cQTextDocument {.importc: "QTextDocument_new2".}
proc fcQTextDocument_new3(parent: pointer): ptr cQTextDocument {.importc: "QTextDocument_new3".}
proc fcQTextDocument_new4(text: struct_miqt_string, parent: pointer): ptr cQTextDocument {.importc: "QTextDocument_new4".}
proc fcQTextDocument_metaObject(self: pointer, ): pointer {.importc: "QTextDocument_metaObject".}
proc fcQTextDocument_metacast(self: pointer, param1: cstring): pointer {.importc: "QTextDocument_metacast".}
proc fcQTextDocument_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTextDocument_metacall".}
proc fcQTextDocument_tr(s: cstring): struct_miqt_string {.importc: "QTextDocument_tr".}
proc fcQTextDocument_clone(self: pointer, ): pointer {.importc: "QTextDocument_clone".}
proc fcQTextDocument_isEmpty(self: pointer, ): bool {.importc: "QTextDocument_isEmpty".}
proc fcQTextDocument_clear(self: pointer, ): void {.importc: "QTextDocument_clear".}
proc fcQTextDocument_setUndoRedoEnabled(self: pointer, enable: bool): void {.importc: "QTextDocument_setUndoRedoEnabled".}
proc fcQTextDocument_isUndoRedoEnabled(self: pointer, ): bool {.importc: "QTextDocument_isUndoRedoEnabled".}
proc fcQTextDocument_isUndoAvailable(self: pointer, ): bool {.importc: "QTextDocument_isUndoAvailable".}
proc fcQTextDocument_isRedoAvailable(self: pointer, ): bool {.importc: "QTextDocument_isRedoAvailable".}
proc fcQTextDocument_availableUndoSteps(self: pointer, ): cint {.importc: "QTextDocument_availableUndoSteps".}
proc fcQTextDocument_availableRedoSteps(self: pointer, ): cint {.importc: "QTextDocument_availableRedoSteps".}
proc fcQTextDocument_revision(self: pointer, ): cint {.importc: "QTextDocument_revision".}
proc fcQTextDocument_setDocumentLayout(self: pointer, layout: pointer): void {.importc: "QTextDocument_setDocumentLayout".}
proc fcQTextDocument_documentLayout(self: pointer, ): pointer {.importc: "QTextDocument_documentLayout".}
proc fcQTextDocument_setMetaInformation(self: pointer, info: cint, param2: struct_miqt_string): void {.importc: "QTextDocument_setMetaInformation".}
proc fcQTextDocument_metaInformation(self: pointer, info: cint): struct_miqt_string {.importc: "QTextDocument_metaInformation".}
proc fcQTextDocument_toHtml(self: pointer, ): struct_miqt_string {.importc: "QTextDocument_toHtml".}
proc fcQTextDocument_setHtml(self: pointer, html: struct_miqt_string): void {.importc: "QTextDocument_setHtml".}
proc fcQTextDocument_toMarkdown(self: pointer, ): struct_miqt_string {.importc: "QTextDocument_toMarkdown".}
proc fcQTextDocument_setMarkdown(self: pointer, markdown: struct_miqt_string): void {.importc: "QTextDocument_setMarkdown".}
proc fcQTextDocument_toRawText(self: pointer, ): struct_miqt_string {.importc: "QTextDocument_toRawText".}
proc fcQTextDocument_toPlainText(self: pointer, ): struct_miqt_string {.importc: "QTextDocument_toPlainText".}
proc fcQTextDocument_setPlainText(self: pointer, text: struct_miqt_string): void {.importc: "QTextDocument_setPlainText".}
proc fcQTextDocument_characterAt(self: pointer, pos: cint): pointer {.importc: "QTextDocument_characterAt".}
proc fcQTextDocument_find(self: pointer, subString: struct_miqt_string): pointer {.importc: "QTextDocument_find".}
proc fcQTextDocument_find2(self: pointer, subString: struct_miqt_string, cursor: pointer): pointer {.importc: "QTextDocument_find2".}
proc fcQTextDocument_findWithExpr(self: pointer, expr: pointer): pointer {.importc: "QTextDocument_findWithExpr".}
proc fcQTextDocument_find3(self: pointer, expr: pointer, cursor: pointer): pointer {.importc: "QTextDocument_find3".}
proc fcQTextDocument_frameAt(self: pointer, pos: cint): pointer {.importc: "QTextDocument_frameAt".}
proc fcQTextDocument_rootFrame(self: pointer, ): pointer {.importc: "QTextDocument_rootFrame".}
proc fcQTextDocument_objectX(self: pointer, objectIndex: cint): pointer {.importc: "QTextDocument_object".}
proc fcQTextDocument_objectForFormat(self: pointer, param1: pointer): pointer {.importc: "QTextDocument_objectForFormat".}
proc fcQTextDocument_findBlock(self: pointer, pos: cint): pointer {.importc: "QTextDocument_findBlock".}
proc fcQTextDocument_findBlockByNumber(self: pointer, blockNumber: cint): pointer {.importc: "QTextDocument_findBlockByNumber".}
proc fcQTextDocument_findBlockByLineNumber(self: pointer, blockNumber: cint): pointer {.importc: "QTextDocument_findBlockByLineNumber".}
proc fcQTextDocument_begin(self: pointer, ): pointer {.importc: "QTextDocument_begin".}
proc fcQTextDocument_endX(self: pointer, ): pointer {.importc: "QTextDocument_end".}
proc fcQTextDocument_firstBlock(self: pointer, ): pointer {.importc: "QTextDocument_firstBlock".}
proc fcQTextDocument_lastBlock(self: pointer, ): pointer {.importc: "QTextDocument_lastBlock".}
proc fcQTextDocument_setPageSize(self: pointer, size: pointer): void {.importc: "QTextDocument_setPageSize".}
proc fcQTextDocument_pageSize(self: pointer, ): pointer {.importc: "QTextDocument_pageSize".}
proc fcQTextDocument_setDefaultFont(self: pointer, font: pointer): void {.importc: "QTextDocument_setDefaultFont".}
proc fcQTextDocument_defaultFont(self: pointer, ): pointer {.importc: "QTextDocument_defaultFont".}
proc fcQTextDocument_setSuperScriptBaseline(self: pointer, baseline: float64): void {.importc: "QTextDocument_setSuperScriptBaseline".}
proc fcQTextDocument_superScriptBaseline(self: pointer, ): float64 {.importc: "QTextDocument_superScriptBaseline".}
proc fcQTextDocument_setSubScriptBaseline(self: pointer, baseline: float64): void {.importc: "QTextDocument_setSubScriptBaseline".}
proc fcQTextDocument_subScriptBaseline(self: pointer, ): float64 {.importc: "QTextDocument_subScriptBaseline".}
proc fcQTextDocument_setBaselineOffset(self: pointer, baseline: float64): void {.importc: "QTextDocument_setBaselineOffset".}
proc fcQTextDocument_baselineOffset(self: pointer, ): float64 {.importc: "QTextDocument_baselineOffset".}
proc fcQTextDocument_pageCount(self: pointer, ): cint {.importc: "QTextDocument_pageCount".}
proc fcQTextDocument_isModified(self: pointer, ): bool {.importc: "QTextDocument_isModified".}
proc fcQTextDocument_print(self: pointer, printer: pointer): void {.importc: "QTextDocument_print".}
proc fcQTextDocument_resource(self: pointer, typeVal: cint, name: pointer): pointer {.importc: "QTextDocument_resource".}
proc fcQTextDocument_addResource(self: pointer, typeVal: cint, name: pointer, resource: pointer): void {.importc: "QTextDocument_addResource".}
proc fcQTextDocument_allFormats(self: pointer, ): struct_miqt_array {.importc: "QTextDocument_allFormats".}
proc fcQTextDocument_markContentsDirty(self: pointer, fromVal: cint, length: cint): void {.importc: "QTextDocument_markContentsDirty".}
proc fcQTextDocument_setUseDesignMetrics(self: pointer, b: bool): void {.importc: "QTextDocument_setUseDesignMetrics".}
proc fcQTextDocument_useDesignMetrics(self: pointer, ): bool {.importc: "QTextDocument_useDesignMetrics".}
proc fcQTextDocument_setLayoutEnabled(self: pointer, b: bool): void {.importc: "QTextDocument_setLayoutEnabled".}
proc fcQTextDocument_isLayoutEnabled(self: pointer, ): bool {.importc: "QTextDocument_isLayoutEnabled".}
proc fcQTextDocument_drawContents(self: pointer, painter: pointer): void {.importc: "QTextDocument_drawContents".}
proc fcQTextDocument_setTextWidth(self: pointer, width: float64): void {.importc: "QTextDocument_setTextWidth".}
proc fcQTextDocument_textWidth(self: pointer, ): float64 {.importc: "QTextDocument_textWidth".}
proc fcQTextDocument_idealWidth(self: pointer, ): float64 {.importc: "QTextDocument_idealWidth".}
proc fcQTextDocument_indentWidth(self: pointer, ): float64 {.importc: "QTextDocument_indentWidth".}
proc fcQTextDocument_setIndentWidth(self: pointer, width: float64): void {.importc: "QTextDocument_setIndentWidth".}
proc fcQTextDocument_documentMargin(self: pointer, ): float64 {.importc: "QTextDocument_documentMargin".}
proc fcQTextDocument_setDocumentMargin(self: pointer, margin: float64): void {.importc: "QTextDocument_setDocumentMargin".}
proc fcQTextDocument_adjustSize(self: pointer, ): void {.importc: "QTextDocument_adjustSize".}
proc fcQTextDocument_size(self: pointer, ): pointer {.importc: "QTextDocument_size".}
proc fcQTextDocument_blockCount(self: pointer, ): cint {.importc: "QTextDocument_blockCount".}
proc fcQTextDocument_lineCount(self: pointer, ): cint {.importc: "QTextDocument_lineCount".}
proc fcQTextDocument_characterCount(self: pointer, ): cint {.importc: "QTextDocument_characterCount".}
proc fcQTextDocument_setDefaultStyleSheet(self: pointer, sheet: struct_miqt_string): void {.importc: "QTextDocument_setDefaultStyleSheet".}
proc fcQTextDocument_defaultStyleSheet(self: pointer, ): struct_miqt_string {.importc: "QTextDocument_defaultStyleSheet".}
proc fcQTextDocument_undo(self: pointer, cursor: pointer): void {.importc: "QTextDocument_undo".}
proc fcQTextDocument_redo(self: pointer, cursor: pointer): void {.importc: "QTextDocument_redo".}
proc fcQTextDocument_clearUndoRedoStacks(self: pointer, ): void {.importc: "QTextDocument_clearUndoRedoStacks".}
proc fcQTextDocument_maximumBlockCount(self: pointer, ): cint {.importc: "QTextDocument_maximumBlockCount".}
proc fcQTextDocument_setMaximumBlockCount(self: pointer, maximum: cint): void {.importc: "QTextDocument_setMaximumBlockCount".}
proc fcQTextDocument_defaultTextOption(self: pointer, ): pointer {.importc: "QTextDocument_defaultTextOption".}
proc fcQTextDocument_setDefaultTextOption(self: pointer, option: pointer): void {.importc: "QTextDocument_setDefaultTextOption".}
proc fcQTextDocument_baseUrl(self: pointer, ): pointer {.importc: "QTextDocument_baseUrl".}
proc fcQTextDocument_setBaseUrl(self: pointer, url: pointer): void {.importc: "QTextDocument_setBaseUrl".}
proc fcQTextDocument_defaultCursorMoveStyle(self: pointer, ): cint {.importc: "QTextDocument_defaultCursorMoveStyle".}
proc fcQTextDocument_setDefaultCursorMoveStyle(self: pointer, style: cint): void {.importc: "QTextDocument_setDefaultCursorMoveStyle".}
proc fcQTextDocument_contentsChange(self: pointer, fromVal: cint, charsRemoved: cint, charsAdded: cint): void {.importc: "QTextDocument_contentsChange".}
proc fQTextDocument_connect_contentsChange(self: pointer, slot: int) {.importc: "QTextDocument_connect_contentsChange".}
proc fcQTextDocument_contentsChanged(self: pointer, ): void {.importc: "QTextDocument_contentsChanged".}
proc fQTextDocument_connect_contentsChanged(self: pointer, slot: int) {.importc: "QTextDocument_connect_contentsChanged".}
proc fcQTextDocument_undoAvailable(self: pointer, param1: bool): void {.importc: "QTextDocument_undoAvailable".}
proc fQTextDocument_connect_undoAvailable(self: pointer, slot: int) {.importc: "QTextDocument_connect_undoAvailable".}
proc fcQTextDocument_redoAvailable(self: pointer, param1: bool): void {.importc: "QTextDocument_redoAvailable".}
proc fQTextDocument_connect_redoAvailable(self: pointer, slot: int) {.importc: "QTextDocument_connect_redoAvailable".}
proc fcQTextDocument_undoCommandAdded(self: pointer, ): void {.importc: "QTextDocument_undoCommandAdded".}
proc fQTextDocument_connect_undoCommandAdded(self: pointer, slot: int) {.importc: "QTextDocument_connect_undoCommandAdded".}
proc fcQTextDocument_modificationChanged(self: pointer, m: bool): void {.importc: "QTextDocument_modificationChanged".}
proc fQTextDocument_connect_modificationChanged(self: pointer, slot: int) {.importc: "QTextDocument_connect_modificationChanged".}
proc fcQTextDocument_cursorPositionChanged(self: pointer, cursor: pointer): void {.importc: "QTextDocument_cursorPositionChanged".}
proc fQTextDocument_connect_cursorPositionChanged(self: pointer, slot: int) {.importc: "QTextDocument_connect_cursorPositionChanged".}
proc fcQTextDocument_blockCountChanged(self: pointer, newBlockCount: cint): void {.importc: "QTextDocument_blockCountChanged".}
proc fQTextDocument_connect_blockCountChanged(self: pointer, slot: int) {.importc: "QTextDocument_connect_blockCountChanged".}
proc fcQTextDocument_baseUrlChanged(self: pointer, url: pointer): void {.importc: "QTextDocument_baseUrlChanged".}
proc fQTextDocument_connect_baseUrlChanged(self: pointer, slot: int) {.importc: "QTextDocument_connect_baseUrlChanged".}
proc fcQTextDocument_documentLayoutChanged(self: pointer, ): void {.importc: "QTextDocument_documentLayoutChanged".}
proc fQTextDocument_connect_documentLayoutChanged(self: pointer, slot: int) {.importc: "QTextDocument_connect_documentLayoutChanged".}
proc fcQTextDocument_undo2(self: pointer, ): void {.importc: "QTextDocument_undo2".}
proc fcQTextDocument_redo2(self: pointer, ): void {.importc: "QTextDocument_redo2".}
proc fcQTextDocument_appendUndoItem(self: pointer, param1: pointer): void {.importc: "QTextDocument_appendUndoItem".}
proc fcQTextDocument_setModified(self: pointer, ): void {.importc: "QTextDocument_setModified".}
proc fcQTextDocument_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTextDocument_tr2".}
proc fcQTextDocument_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTextDocument_tr3".}
proc fcQTextDocument_clone1(self: pointer, parent: pointer): pointer {.importc: "QTextDocument_clone1".}
proc fcQTextDocument_toMarkdown1(self: pointer, features: cint): struct_miqt_string {.importc: "QTextDocument_toMarkdown1".}
proc fcQTextDocument_setMarkdown2(self: pointer, markdown: struct_miqt_string, features: cint): void {.importc: "QTextDocument_setMarkdown2".}
proc fcQTextDocument_find22(self: pointer, subString: struct_miqt_string, fromVal: cint): pointer {.importc: "QTextDocument_find22".}
proc fcQTextDocument_find32(self: pointer, subString: struct_miqt_string, fromVal: cint, options: cint): pointer {.importc: "QTextDocument_find32".}
proc fcQTextDocument_find33(self: pointer, subString: struct_miqt_string, cursor: pointer, options: cint): pointer {.importc: "QTextDocument_find33".}
proc fcQTextDocument_find23(self: pointer, expr: pointer, fromVal: cint): pointer {.importc: "QTextDocument_find23".}
proc fcQTextDocument_find34(self: pointer, expr: pointer, fromVal: cint, options: cint): pointer {.importc: "QTextDocument_find34".}
proc fcQTextDocument_find35(self: pointer, expr: pointer, cursor: pointer, options: cint): pointer {.importc: "QTextDocument_find35".}
proc fcQTextDocument_drawContents2(self: pointer, painter: pointer, rect: pointer): void {.importc: "QTextDocument_drawContents2".}
proc fcQTextDocument_clearUndoRedoStacks1(self: pointer, historyToClear: cint): void {.importc: "QTextDocument_clearUndoRedoStacks1".}
proc fcQTextDocument_setModified1(self: pointer, m: bool): void {.importc: "QTextDocument_setModified1".}
proc fQTextDocument_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QTextDocument_virtualbase_metacall".}
proc fcQTextDocument_override_virtual_metacall(self: pointer, slot: int) {.importc: "QTextDocument_override_virtual_metacall".}
proc fQTextDocument_virtualbase_clear(self: pointer, ): void{.importc: "QTextDocument_virtualbase_clear".}
proc fcQTextDocument_override_virtual_clear(self: pointer, slot: int) {.importc: "QTextDocument_override_virtual_clear".}
proc fQTextDocument_virtualbase_createObject(self: pointer, f: pointer): pointer{.importc: "QTextDocument_virtualbase_createObject".}
proc fcQTextDocument_override_virtual_createObject(self: pointer, slot: int) {.importc: "QTextDocument_override_virtual_createObject".}
proc fQTextDocument_virtualbase_loadResource(self: pointer, typeVal: cint, name: pointer): pointer{.importc: "QTextDocument_virtualbase_loadResource".}
proc fcQTextDocument_override_virtual_loadResource(self: pointer, slot: int) {.importc: "QTextDocument_override_virtual_loadResource".}
proc fQTextDocument_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QTextDocument_virtualbase_event".}
proc fcQTextDocument_override_virtual_event(self: pointer, slot: int) {.importc: "QTextDocument_override_virtual_event".}
proc fQTextDocument_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QTextDocument_virtualbase_eventFilter".}
proc fcQTextDocument_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QTextDocument_override_virtual_eventFilter".}
proc fQTextDocument_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QTextDocument_virtualbase_timerEvent".}
proc fcQTextDocument_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QTextDocument_override_virtual_timerEvent".}
proc fQTextDocument_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QTextDocument_virtualbase_childEvent".}
proc fcQTextDocument_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QTextDocument_override_virtual_childEvent".}
proc fQTextDocument_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QTextDocument_virtualbase_customEvent".}
proc fcQTextDocument_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QTextDocument_override_virtual_customEvent".}
proc fQTextDocument_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QTextDocument_virtualbase_connectNotify".}
proc fcQTextDocument_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QTextDocument_override_virtual_connectNotify".}
proc fQTextDocument_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QTextDocument_virtualbase_disconnectNotify".}
proc fcQTextDocument_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QTextDocument_override_virtual_disconnectNotify".}
proc fcQTextDocument_staticMetaObject(): pointer {.importc: "QTextDocument_staticMetaObject".}
proc fcQTextDocument_delete(self: pointer) {.importc: "QTextDocument_delete".}


func init*(T: type QAbstractUndoItem, h: ptr cQAbstractUndoItem): QAbstractUndoItem =
  T(h: h)
proc undo*(self: QAbstractUndoItem, ): void =

  fcQAbstractUndoItem_undo(self.h)

proc redo*(self: QAbstractUndoItem, ): void =

  fcQAbstractUndoItem_redo(self.h)

proc operatorAssign*(self: QAbstractUndoItem, param1: QAbstractUndoItem): void =

  fcQAbstractUndoItem_operatorAssign(self.h, param1.h)

proc delete*(self: QAbstractUndoItem) =
  fcQAbstractUndoItem_delete(self.h)

func init*(T: type QTextDocument, h: ptr cQTextDocument): QTextDocument =
  T(h: h)
proc create*(T: type QTextDocument, ): QTextDocument =

  QTextDocument.init(fcQTextDocument_new())
proc create*(T: type QTextDocument, text: string): QTextDocument =

  QTextDocument.init(fcQTextDocument_new2(struct_miqt_string(data: text, len: csize_t(len(text)))))
proc create*(T: type QTextDocument, parent: gen_qobject.QObject): QTextDocument =

  QTextDocument.init(fcQTextDocument_new3(parent.h))
proc create*(T: type QTextDocument, text: string, parent: gen_qobject.QObject): QTextDocument =

  QTextDocument.init(fcQTextDocument_new4(struct_miqt_string(data: text, len: csize_t(len(text))), parent.h))
proc metaObject*(self: QTextDocument, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQTextDocument_metaObject(self.h))

proc metacast*(self: QTextDocument, param1: cstring): pointer =

  fcQTextDocument_metacast(self.h, param1)

proc metacall*(self: QTextDocument, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQTextDocument_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QTextDocument, s: cstring): string =

  let v_ms = fcQTextDocument_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc clone*(self: QTextDocument, ): QTextDocument =

  QTextDocument(h: fcQTextDocument_clone(self.h))

proc isEmpty*(self: QTextDocument, ): bool =

  fcQTextDocument_isEmpty(self.h)

proc clear*(self: QTextDocument, ): void =

  fcQTextDocument_clear(self.h)

proc setUndoRedoEnabled*(self: QTextDocument, enable: bool): void =

  fcQTextDocument_setUndoRedoEnabled(self.h, enable)

proc isUndoRedoEnabled*(self: QTextDocument, ): bool =

  fcQTextDocument_isUndoRedoEnabled(self.h)

proc isUndoAvailable*(self: QTextDocument, ): bool =

  fcQTextDocument_isUndoAvailable(self.h)

proc isRedoAvailable*(self: QTextDocument, ): bool =

  fcQTextDocument_isRedoAvailable(self.h)

proc availableUndoSteps*(self: QTextDocument, ): cint =

  fcQTextDocument_availableUndoSteps(self.h)

proc availableRedoSteps*(self: QTextDocument, ): cint =

  fcQTextDocument_availableRedoSteps(self.h)

proc revision*(self: QTextDocument, ): cint =

  fcQTextDocument_revision(self.h)

proc setDocumentLayout*(self: QTextDocument, layout: gen_qabstracttextdocumentlayout.QAbstractTextDocumentLayout): void =

  fcQTextDocument_setDocumentLayout(self.h, layout.h)

proc documentLayout*(self: QTextDocument, ): gen_qabstracttextdocumentlayout.QAbstractTextDocumentLayout =

  gen_qabstracttextdocumentlayout.QAbstractTextDocumentLayout(h: fcQTextDocument_documentLayout(self.h))

proc setMetaInformation*(self: QTextDocument, info: QTextDocumentMetaInformation, param2: string): void =

  fcQTextDocument_setMetaInformation(self.h, cint(info), struct_miqt_string(data: param2, len: csize_t(len(param2))))

proc metaInformation*(self: QTextDocument, info: QTextDocumentMetaInformation): string =

  let v_ms = fcQTextDocument_metaInformation(self.h, cint(info))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toHtml*(self: QTextDocument, ): string =

  let v_ms = fcQTextDocument_toHtml(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setHtml*(self: QTextDocument, html: string): void =

  fcQTextDocument_setHtml(self.h, struct_miqt_string(data: html, len: csize_t(len(html))))

proc toMarkdown*(self: QTextDocument, ): string =

  let v_ms = fcQTextDocument_toMarkdown(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setMarkdown*(self: QTextDocument, markdown: string): void =

  fcQTextDocument_setMarkdown(self.h, struct_miqt_string(data: markdown, len: csize_t(len(markdown))))

proc toRawText*(self: QTextDocument, ): string =

  let v_ms = fcQTextDocument_toRawText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toPlainText*(self: QTextDocument, ): string =

  let v_ms = fcQTextDocument_toPlainText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPlainText*(self: QTextDocument, text: string): void =

  fcQTextDocument_setPlainText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc characterAt*(self: QTextDocument, pos: cint): gen_qchar.QChar =

  gen_qchar.QChar(h: fcQTextDocument_characterAt(self.h, pos))

proc find*(self: QTextDocument, subString: string): gen_qtextcursor.QTextCursor =

  gen_qtextcursor.QTextCursor(h: fcQTextDocument_find(self.h, struct_miqt_string(data: subString, len: csize_t(len(subString)))))

proc find2*(self: QTextDocument, subString: string, cursor: gen_qtextcursor.QTextCursor): gen_qtextcursor.QTextCursor =

  gen_qtextcursor.QTextCursor(h: fcQTextDocument_find2(self.h, struct_miqt_string(data: subString, len: csize_t(len(subString))), cursor.h))

proc findWithExpr*(self: QTextDocument, expr: gen_qregularexpression.QRegularExpression): gen_qtextcursor.QTextCursor =

  gen_qtextcursor.QTextCursor(h: fcQTextDocument_findWithExpr(self.h, expr.h))

proc find3*(self: QTextDocument, expr: gen_qregularexpression.QRegularExpression, cursor: gen_qtextcursor.QTextCursor): gen_qtextcursor.QTextCursor =

  gen_qtextcursor.QTextCursor(h: fcQTextDocument_find3(self.h, expr.h, cursor.h))

proc frameAt*(self: QTextDocument, pos: cint): gen_qtextobject.QTextFrame =

  gen_qtextobject.QTextFrame(h: fcQTextDocument_frameAt(self.h, pos))

proc rootFrame*(self: QTextDocument, ): gen_qtextobject.QTextFrame =

  gen_qtextobject.QTextFrame(h: fcQTextDocument_rootFrame(self.h))

proc objectX*(self: QTextDocument, objectIndex: cint): gen_qtextobject.QTextObject =

  gen_qtextobject.QTextObject(h: fcQTextDocument_objectX(self.h, objectIndex))

proc objectForFormat*(self: QTextDocument, param1: gen_qtextformat.QTextFormat): gen_qtextobject.QTextObject =

  gen_qtextobject.QTextObject(h: fcQTextDocument_objectForFormat(self.h, param1.h))

proc findBlock*(self: QTextDocument, pos: cint): gen_qtextobject.QTextBlock =

  gen_qtextobject.QTextBlock(h: fcQTextDocument_findBlock(self.h, pos))

proc findBlockByNumber*(self: QTextDocument, blockNumber: cint): gen_qtextobject.QTextBlock =

  gen_qtextobject.QTextBlock(h: fcQTextDocument_findBlockByNumber(self.h, blockNumber))

proc findBlockByLineNumber*(self: QTextDocument, blockNumber: cint): gen_qtextobject.QTextBlock =

  gen_qtextobject.QTextBlock(h: fcQTextDocument_findBlockByLineNumber(self.h, blockNumber))

proc begin*(self: QTextDocument, ): gen_qtextobject.QTextBlock =

  gen_qtextobject.QTextBlock(h: fcQTextDocument_begin(self.h))

proc endX*(self: QTextDocument, ): gen_qtextobject.QTextBlock =

  gen_qtextobject.QTextBlock(h: fcQTextDocument_endX(self.h))

proc firstBlock*(self: QTextDocument, ): gen_qtextobject.QTextBlock =

  gen_qtextobject.QTextBlock(h: fcQTextDocument_firstBlock(self.h))

proc lastBlock*(self: QTextDocument, ): gen_qtextobject.QTextBlock =

  gen_qtextobject.QTextBlock(h: fcQTextDocument_lastBlock(self.h))

proc setPageSize*(self: QTextDocument, size: gen_qsize.QSizeF): void =

  fcQTextDocument_setPageSize(self.h, size.h)

proc pageSize*(self: QTextDocument, ): gen_qsize.QSizeF =

  gen_qsize.QSizeF(h: fcQTextDocument_pageSize(self.h))

proc setDefaultFont*(self: QTextDocument, font: gen_qfont.QFont): void =

  fcQTextDocument_setDefaultFont(self.h, font.h)

proc defaultFont*(self: QTextDocument, ): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQTextDocument_defaultFont(self.h))

proc setSuperScriptBaseline*(self: QTextDocument, baseline: float64): void =

  fcQTextDocument_setSuperScriptBaseline(self.h, baseline)

proc superScriptBaseline*(self: QTextDocument, ): float64 =

  fcQTextDocument_superScriptBaseline(self.h)

proc setSubScriptBaseline*(self: QTextDocument, baseline: float64): void =

  fcQTextDocument_setSubScriptBaseline(self.h, baseline)

proc subScriptBaseline*(self: QTextDocument, ): float64 =

  fcQTextDocument_subScriptBaseline(self.h)

proc setBaselineOffset*(self: QTextDocument, baseline: float64): void =

  fcQTextDocument_setBaselineOffset(self.h, baseline)

proc baselineOffset*(self: QTextDocument, ): float64 =

  fcQTextDocument_baselineOffset(self.h)

proc pageCount*(self: QTextDocument, ): cint =

  fcQTextDocument_pageCount(self.h)

proc isModified*(self: QTextDocument, ): bool =

  fcQTextDocument_isModified(self.h)

proc print*(self: QTextDocument, printer: gen_qpagedpaintdevice.QPagedPaintDevice): void =

  fcQTextDocument_print(self.h, printer.h)

proc resource*(self: QTextDocument, typeVal: cint, name: gen_qurl.QUrl): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQTextDocument_resource(self.h, typeVal, name.h))

proc addResource*(self: QTextDocument, typeVal: cint, name: gen_qurl.QUrl, resource: gen_qvariant.QVariant): void =

  fcQTextDocument_addResource(self.h, typeVal, name.h, resource.h)

proc allFormats*(self: QTextDocument, ): seq[gen_qtextformat.QTextFormat] =

  var v_ma = fcQTextDocument_allFormats(self.h)
  var vx_ret = newSeq[gen_qtextformat.QTextFormat](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qtextformat.QTextFormat(h: v_outCast[i])
  vx_ret

proc markContentsDirty*(self: QTextDocument, fromVal: cint, length: cint): void =

  fcQTextDocument_markContentsDirty(self.h, fromVal, length)

proc setUseDesignMetrics*(self: QTextDocument, b: bool): void =

  fcQTextDocument_setUseDesignMetrics(self.h, b)

proc useDesignMetrics*(self: QTextDocument, ): bool =

  fcQTextDocument_useDesignMetrics(self.h)

proc setLayoutEnabled*(self: QTextDocument, b: bool): void =

  fcQTextDocument_setLayoutEnabled(self.h, b)

proc isLayoutEnabled*(self: QTextDocument, ): bool =

  fcQTextDocument_isLayoutEnabled(self.h)

proc drawContents*(self: QTextDocument, painter: gen_qpainter.QPainter): void =

  fcQTextDocument_drawContents(self.h, painter.h)

proc setTextWidth*(self: QTextDocument, width: float64): void =

  fcQTextDocument_setTextWidth(self.h, width)

proc textWidth*(self: QTextDocument, ): float64 =

  fcQTextDocument_textWidth(self.h)

proc idealWidth*(self: QTextDocument, ): float64 =

  fcQTextDocument_idealWidth(self.h)

proc indentWidth*(self: QTextDocument, ): float64 =

  fcQTextDocument_indentWidth(self.h)

proc setIndentWidth*(self: QTextDocument, width: float64): void =

  fcQTextDocument_setIndentWidth(self.h, width)

proc documentMargin*(self: QTextDocument, ): float64 =

  fcQTextDocument_documentMargin(self.h)

proc setDocumentMargin*(self: QTextDocument, margin: float64): void =

  fcQTextDocument_setDocumentMargin(self.h, margin)

proc adjustSize*(self: QTextDocument, ): void =

  fcQTextDocument_adjustSize(self.h)

proc size*(self: QTextDocument, ): gen_qsize.QSizeF =

  gen_qsize.QSizeF(h: fcQTextDocument_size(self.h))

proc blockCount*(self: QTextDocument, ): cint =

  fcQTextDocument_blockCount(self.h)

proc lineCount*(self: QTextDocument, ): cint =

  fcQTextDocument_lineCount(self.h)

proc characterCount*(self: QTextDocument, ): cint =

  fcQTextDocument_characterCount(self.h)

proc setDefaultStyleSheet*(self: QTextDocument, sheet: string): void =

  fcQTextDocument_setDefaultStyleSheet(self.h, struct_miqt_string(data: sheet, len: csize_t(len(sheet))))

proc defaultStyleSheet*(self: QTextDocument, ): string =

  let v_ms = fcQTextDocument_defaultStyleSheet(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc undo*(self: QTextDocument, cursor: gen_qtextcursor.QTextCursor): void =

  fcQTextDocument_undo(self.h, cursor.h)

proc redo*(self: QTextDocument, cursor: gen_qtextcursor.QTextCursor): void =

  fcQTextDocument_redo(self.h, cursor.h)

proc clearUndoRedoStacks*(self: QTextDocument, ): void =

  fcQTextDocument_clearUndoRedoStacks(self.h)

proc maximumBlockCount*(self: QTextDocument, ): cint =

  fcQTextDocument_maximumBlockCount(self.h)

proc setMaximumBlockCount*(self: QTextDocument, maximum: cint): void =

  fcQTextDocument_setMaximumBlockCount(self.h, maximum)

proc defaultTextOption*(self: QTextDocument, ): gen_qtextoption.QTextOption =

  gen_qtextoption.QTextOption(h: fcQTextDocument_defaultTextOption(self.h))

proc setDefaultTextOption*(self: QTextDocument, option: gen_qtextoption.QTextOption): void =

  fcQTextDocument_setDefaultTextOption(self.h, option.h)

proc baseUrl*(self: QTextDocument, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQTextDocument_baseUrl(self.h))

proc setBaseUrl*(self: QTextDocument, url: gen_qurl.QUrl): void =

  fcQTextDocument_setBaseUrl(self.h, url.h)

proc defaultCursorMoveStyle*(self: QTextDocument, ): gen_qnamespace.CursorMoveStyle =

  gen_qnamespace.CursorMoveStyle(fcQTextDocument_defaultCursorMoveStyle(self.h))

proc setDefaultCursorMoveStyle*(self: QTextDocument, style: gen_qnamespace.CursorMoveStyle): void =

  fcQTextDocument_setDefaultCursorMoveStyle(self.h, cint(style))

proc contentsChange*(self: QTextDocument, fromVal: cint, charsRemoved: cint, charsAdded: cint): void =

  fcQTextDocument_contentsChange(self.h, fromVal, charsRemoved, charsAdded)

proc miqt_exec_callback_QTextDocument_contentsChange(slot: int, fromVal: cint, charsRemoved: cint, charsAdded: cint) {.exportc.} =
  type Cb = proc(fromVal: cint, charsRemoved: cint, charsAdded: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = fromVal

  let slotval2 = charsRemoved

  let slotval3 = charsAdded


  nimfunc[](slotval1, slotval2, slotval3)

proc oncontentsChange*(self: QTextDocument, slot: proc(fromVal: cint, charsRemoved: cint, charsAdded: cint)) =
  type Cb = proc(fromVal: cint, charsRemoved: cint, charsAdded: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTextDocument_connect_contentsChange(self.h, cast[int](addr tmp[]))
proc contentsChanged*(self: QTextDocument, ): void =

  fcQTextDocument_contentsChanged(self.h)

proc miqt_exec_callback_QTextDocument_contentsChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc oncontentsChanged*(self: QTextDocument, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTextDocument_connect_contentsChanged(self.h, cast[int](addr tmp[]))
proc undoAvailable*(self: QTextDocument, param1: bool): void =

  fcQTextDocument_undoAvailable(self.h, param1)

proc miqt_exec_callback_QTextDocument_undoAvailable(slot: int, param1: bool) {.exportc.} =
  type Cb = proc(param1: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)

proc onundoAvailable*(self: QTextDocument, slot: proc(param1: bool)) =
  type Cb = proc(param1: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTextDocument_connect_undoAvailable(self.h, cast[int](addr tmp[]))
proc redoAvailable*(self: QTextDocument, param1: bool): void =

  fcQTextDocument_redoAvailable(self.h, param1)

proc miqt_exec_callback_QTextDocument_redoAvailable(slot: int, param1: bool) {.exportc.} =
  type Cb = proc(param1: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)

proc onredoAvailable*(self: QTextDocument, slot: proc(param1: bool)) =
  type Cb = proc(param1: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTextDocument_connect_redoAvailable(self.h, cast[int](addr tmp[]))
proc undoCommandAdded*(self: QTextDocument, ): void =

  fcQTextDocument_undoCommandAdded(self.h)

proc miqt_exec_callback_QTextDocument_undoCommandAdded(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onundoCommandAdded*(self: QTextDocument, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTextDocument_connect_undoCommandAdded(self.h, cast[int](addr tmp[]))
proc modificationChanged*(self: QTextDocument, m: bool): void =

  fcQTextDocument_modificationChanged(self.h, m)

proc miqt_exec_callback_QTextDocument_modificationChanged(slot: int, m: bool) {.exportc.} =
  type Cb = proc(m: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = m


  nimfunc[](slotval1)

proc onmodificationChanged*(self: QTextDocument, slot: proc(m: bool)) =
  type Cb = proc(m: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTextDocument_connect_modificationChanged(self.h, cast[int](addr tmp[]))
proc cursorPositionChanged*(self: QTextDocument, cursor: gen_qtextcursor.QTextCursor): void =

  fcQTextDocument_cursorPositionChanged(self.h, cursor.h)

proc miqt_exec_callback_QTextDocument_cursorPositionChanged(slot: int, cursor: pointer) {.exportc.} =
  type Cb = proc(cursor: gen_qtextcursor.QTextCursor)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qtextcursor.QTextCursor(h: cursor)


  nimfunc[](slotval1)

proc oncursorPositionChanged*(self: QTextDocument, slot: proc(cursor: gen_qtextcursor.QTextCursor)) =
  type Cb = proc(cursor: gen_qtextcursor.QTextCursor)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTextDocument_connect_cursorPositionChanged(self.h, cast[int](addr tmp[]))
proc blockCountChanged*(self: QTextDocument, newBlockCount: cint): void =

  fcQTextDocument_blockCountChanged(self.h, newBlockCount)

proc miqt_exec_callback_QTextDocument_blockCountChanged(slot: int, newBlockCount: cint) {.exportc.} =
  type Cb = proc(newBlockCount: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = newBlockCount


  nimfunc[](slotval1)

proc onblockCountChanged*(self: QTextDocument, slot: proc(newBlockCount: cint)) =
  type Cb = proc(newBlockCount: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTextDocument_connect_blockCountChanged(self.h, cast[int](addr tmp[]))
proc baseUrlChanged*(self: QTextDocument, url: gen_qurl.QUrl): void =

  fcQTextDocument_baseUrlChanged(self.h, url.h)

proc miqt_exec_callback_QTextDocument_baseUrlChanged(slot: int, url: pointer) {.exportc.} =
  type Cb = proc(url: gen_qurl.QUrl)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qurl.QUrl(h: url)


  nimfunc[](slotval1)

proc onbaseUrlChanged*(self: QTextDocument, slot: proc(url: gen_qurl.QUrl)) =
  type Cb = proc(url: gen_qurl.QUrl)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTextDocument_connect_baseUrlChanged(self.h, cast[int](addr tmp[]))
proc documentLayoutChanged*(self: QTextDocument, ): void =

  fcQTextDocument_documentLayoutChanged(self.h)

proc miqt_exec_callback_QTextDocument_documentLayoutChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc ondocumentLayoutChanged*(self: QTextDocument, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTextDocument_connect_documentLayoutChanged(self.h, cast[int](addr tmp[]))
proc undo2*(self: QTextDocument, ): void =

  fcQTextDocument_undo2(self.h)

proc redo2*(self: QTextDocument, ): void =

  fcQTextDocument_redo2(self.h)

proc appendUndoItem*(self: QTextDocument, param1: QAbstractUndoItem): void =

  fcQTextDocument_appendUndoItem(self.h, param1.h)

proc setModified*(self: QTextDocument, ): void =

  fcQTextDocument_setModified(self.h)

proc tr2*(_: type QTextDocument, s: cstring, c: cstring): string =

  let v_ms = fcQTextDocument_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QTextDocument, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQTextDocument_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc clone1*(self: QTextDocument, parent: gen_qobject.QObject): QTextDocument =

  QTextDocument(h: fcQTextDocument_clone1(self.h, parent.h))

proc toMarkdown1*(self: QTextDocument, features: QTextDocumentMarkdownFeature): string =

  let v_ms = fcQTextDocument_toMarkdown1(self.h, cint(features))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setMarkdown2*(self: QTextDocument, markdown: string, features: QTextDocumentMarkdownFeature): void =

  fcQTextDocument_setMarkdown2(self.h, struct_miqt_string(data: markdown, len: csize_t(len(markdown))), cint(features))

proc find22*(self: QTextDocument, subString: string, fromVal: cint): gen_qtextcursor.QTextCursor =

  gen_qtextcursor.QTextCursor(h: fcQTextDocument_find22(self.h, struct_miqt_string(data: subString, len: csize_t(len(subString))), fromVal))

proc find32*(self: QTextDocument, subString: string, fromVal: cint, options: QTextDocumentFindFlag): gen_qtextcursor.QTextCursor =

  gen_qtextcursor.QTextCursor(h: fcQTextDocument_find32(self.h, struct_miqt_string(data: subString, len: csize_t(len(subString))), fromVal, cint(options)))

proc find33*(self: QTextDocument, subString: string, cursor: gen_qtextcursor.QTextCursor, options: QTextDocumentFindFlag): gen_qtextcursor.QTextCursor =

  gen_qtextcursor.QTextCursor(h: fcQTextDocument_find33(self.h, struct_miqt_string(data: subString, len: csize_t(len(subString))), cursor.h, cint(options)))

proc find23*(self: QTextDocument, expr: gen_qregularexpression.QRegularExpression, fromVal: cint): gen_qtextcursor.QTextCursor =

  gen_qtextcursor.QTextCursor(h: fcQTextDocument_find23(self.h, expr.h, fromVal))

proc find34*(self: QTextDocument, expr: gen_qregularexpression.QRegularExpression, fromVal: cint, options: QTextDocumentFindFlag): gen_qtextcursor.QTextCursor =

  gen_qtextcursor.QTextCursor(h: fcQTextDocument_find34(self.h, expr.h, fromVal, cint(options)))

proc find35*(self: QTextDocument, expr: gen_qregularexpression.QRegularExpression, cursor: gen_qtextcursor.QTextCursor, options: QTextDocumentFindFlag): gen_qtextcursor.QTextCursor =

  gen_qtextcursor.QTextCursor(h: fcQTextDocument_find35(self.h, expr.h, cursor.h, cint(options)))

proc drawContents2*(self: QTextDocument, painter: gen_qpainter.QPainter, rect: gen_qrect.QRectF): void =

  fcQTextDocument_drawContents2(self.h, painter.h, rect.h)

proc clearUndoRedoStacks1*(self: QTextDocument, historyToClear: QTextDocumentStacks): void =

  fcQTextDocument_clearUndoRedoStacks1(self.h, cint(historyToClear))

proc setModified1*(self: QTextDocument, m: bool): void =

  fcQTextDocument_setModified1(self.h, m)

proc callVirtualBase_metacall(self: QTextDocument, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQTextDocument_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QTextDocumentmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QTextDocument, slot: proc(super: QTextDocumentmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QTextDocumentmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextDocument_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextDocument_metacall(self: ptr cQTextDocument, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QTextDocument_metacall ".} =
  type Cb = proc(super: QTextDocumentmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QTextDocument(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_clear(self: QTextDocument, ): void =


  fQTextDocument_virtualbase_clear(self.h)

type QTextDocumentclearBase* = proc(): void
proc onclear*(self: QTextDocument, slot: proc(super: QTextDocumentclearBase): void) =
  # TODO check subclass
  type Cb = proc(super: QTextDocumentclearBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextDocument_override_virtual_clear(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextDocument_clear(self: ptr cQTextDocument, slot: int): void {.exportc: "miqt_exec_callback_QTextDocument_clear ".} =
  type Cb = proc(super: QTextDocumentclearBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clear(QTextDocument(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_createObject(self: QTextDocument, f: gen_qtextformat.QTextFormat): gen_qtextobject.QTextObject =


  gen_qtextobject.QTextObject(h: fQTextDocument_virtualbase_createObject(self.h, f.h))

type QTextDocumentcreateObjectBase* = proc(f: gen_qtextformat.QTextFormat): gen_qtextobject.QTextObject
proc oncreateObject*(self: QTextDocument, slot: proc(super: QTextDocumentcreateObjectBase, f: gen_qtextformat.QTextFormat): gen_qtextobject.QTextObject) =
  # TODO check subclass
  type Cb = proc(super: QTextDocumentcreateObjectBase, f: gen_qtextformat.QTextFormat): gen_qtextobject.QTextObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextDocument_override_virtual_createObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextDocument_createObject(self: ptr cQTextDocument, slot: int, f: pointer): pointer {.exportc: "miqt_exec_callback_QTextDocument_createObject ".} =
  type Cb = proc(super: QTextDocumentcreateObjectBase, f: gen_qtextformat.QTextFormat): gen_qtextobject.QTextObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(f: gen_qtextformat.QTextFormat): auto =
    callVirtualBase_createObject(QTextDocument(h: self), f)
  let slotval1 = gen_qtextformat.QTextFormat(h: f)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_loadResource(self: QTextDocument, typeVal: cint, name: gen_qurl.QUrl): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQTextDocument_virtualbase_loadResource(self.h, typeVal, name.h))

type QTextDocumentloadResourceBase* = proc(typeVal: cint, name: gen_qurl.QUrl): gen_qvariant.QVariant
proc onloadResource*(self: QTextDocument, slot: proc(super: QTextDocumentloadResourceBase, typeVal: cint, name: gen_qurl.QUrl): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QTextDocumentloadResourceBase, typeVal: cint, name: gen_qurl.QUrl): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextDocument_override_virtual_loadResource(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextDocument_loadResource(self: ptr cQTextDocument, slot: int, typeVal: cint, name: pointer): pointer {.exportc: "miqt_exec_callback_QTextDocument_loadResource ".} =
  type Cb = proc(super: QTextDocumentloadResourceBase, typeVal: cint, name: gen_qurl.QUrl): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(typeVal: cint, name: gen_qurl.QUrl): auto =
    callVirtualBase_loadResource(QTextDocument(h: self), typeVal, name)
  let slotval1 = typeVal

  let slotval2 = gen_qurl.QUrl(h: name)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn.h
proc callVirtualBase_event(self: QTextDocument, event: gen_qcoreevent.QEvent): bool =


  fQTextDocument_virtualbase_event(self.h, event.h)

type QTextDocumenteventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QTextDocument, slot: proc(super: QTextDocumenteventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QTextDocumenteventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextDocument_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextDocument_event(self: ptr cQTextDocument, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QTextDocument_event ".} =
  type Cb = proc(super: QTextDocumenteventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QTextDocument(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QTextDocument, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQTextDocument_virtualbase_eventFilter(self.h, watched.h, event.h)

type QTextDocumenteventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QTextDocument, slot: proc(super: QTextDocumenteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QTextDocumenteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextDocument_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextDocument_eventFilter(self: ptr cQTextDocument, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QTextDocument_eventFilter ".} =
  type Cb = proc(super: QTextDocumenteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QTextDocument(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QTextDocument, event: gen_qcoreevent.QTimerEvent): void =


  fQTextDocument_virtualbase_timerEvent(self.h, event.h)

type QTextDocumenttimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QTextDocument, slot: proc(super: QTextDocumenttimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextDocumenttimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextDocument_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextDocument_timerEvent(self: ptr cQTextDocument, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTextDocument_timerEvent ".} =
  type Cb = proc(super: QTextDocumenttimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QTextDocument(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QTextDocument, event: gen_qcoreevent.QChildEvent): void =


  fQTextDocument_virtualbase_childEvent(self.h, event.h)

type QTextDocumentchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QTextDocument, slot: proc(super: QTextDocumentchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextDocumentchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextDocument_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextDocument_childEvent(self: ptr cQTextDocument, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTextDocument_childEvent ".} =
  type Cb = proc(super: QTextDocumentchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QTextDocument(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QTextDocument, event: gen_qcoreevent.QEvent): void =


  fQTextDocument_virtualbase_customEvent(self.h, event.h)

type QTextDocumentcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QTextDocument, slot: proc(super: QTextDocumentcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextDocumentcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextDocument_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextDocument_customEvent(self: ptr cQTextDocument, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTextDocument_customEvent ".} =
  type Cb = proc(super: QTextDocumentcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QTextDocument(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QTextDocument, signal: gen_qmetaobject.QMetaMethod): void =


  fQTextDocument_virtualbase_connectNotify(self.h, signal.h)

type QTextDocumentconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QTextDocument, slot: proc(super: QTextDocumentconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QTextDocumentconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextDocument_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextDocument_connectNotify(self: ptr cQTextDocument, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTextDocument_connectNotify ".} =
  type Cb = proc(super: QTextDocumentconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QTextDocument(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QTextDocument, signal: gen_qmetaobject.QMetaMethod): void =


  fQTextDocument_virtualbase_disconnectNotify(self.h, signal.h)

type QTextDocumentdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QTextDocument, slot: proc(super: QTextDocumentdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QTextDocumentdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextDocument_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextDocument_disconnectNotify(self: ptr cQTextDocument, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTextDocument_disconnectNotify ".} =
  type Cb = proc(super: QTextDocumentdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QTextDocument(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QTextDocument): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQTextDocument_staticMetaObject())
proc delete*(self: QTextDocument) =
  fcQTextDocument_delete(self.h)
