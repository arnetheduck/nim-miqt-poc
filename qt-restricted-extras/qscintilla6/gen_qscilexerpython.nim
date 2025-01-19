import Qt6PrintSupport_libs

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

const cflags = gorge("pkg-config -cflags Qt6PrintSupport")
{.compile("gen_qscilexerpython.cpp", cflags).}


type QsciLexerPythonEnum* = cint
const
  QsciLexerPythonDefault* = 0
  QsciLexerPythonComment* = 1
  QsciLexerPythonNumber* = 2
  QsciLexerPythonDoubleQuotedString* = 3
  QsciLexerPythonSingleQuotedString* = 4
  QsciLexerPythonKeyword* = 5
  QsciLexerPythonTripleSingleQuotedString* = 6
  QsciLexerPythonTripleDoubleQuotedString* = 7
  QsciLexerPythonClassName* = 8
  QsciLexerPythonFunctionMethodName* = 9
  QsciLexerPythonOperator* = 10
  QsciLexerPythonIdentifier* = 11
  QsciLexerPythonCommentBlock* = 12
  QsciLexerPythonUnclosedString* = 13
  QsciLexerPythonHighlightedIdentifier* = 14
  QsciLexerPythonDecorator* = 15
  QsciLexerPythonDoubleQuotedFString* = 16
  QsciLexerPythonSingleQuotedFString* = 17
  QsciLexerPythonTripleSingleQuotedFString* = 18
  QsciLexerPythonTripleDoubleQuotedFString* = 19



type QsciLexerPythonIndentationWarning* = cint
const
  QsciLexerPythonNoWarning* = 0
  QsciLexerPythonInconsistent* = 1
  QsciLexerPythonTabsAfterSpaces* = 2
  QsciLexerPythonSpaces* = 3
  QsciLexerPythonTabs* = 4



import gen_qscilexerpython_types
export gen_qscilexerpython_types

import
  gen_qcolor,
  gen_qcoreevent,
  gen_qfont,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qscilexer,
  gen_qsciscintilla,
  gen_qsettings
export
  gen_qcolor,
  gen_qcoreevent,
  gen_qfont,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qscilexer,
  gen_qsciscintilla,
  gen_qsettings

type cQsciLexerPython*{.exportc: "QsciLexerPython", incompleteStruct.} = object

proc fcQsciLexerPython_new(): ptr cQsciLexerPython {.importc: "QsciLexerPython_new".}
proc fcQsciLexerPython_new2(parent: pointer): ptr cQsciLexerPython {.importc: "QsciLexerPython_new2".}
proc fcQsciLexerPython_metaObject(self: pointer, ): pointer {.importc: "QsciLexerPython_metaObject".}
proc fcQsciLexerPython_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerPython_metacast".}
proc fcQsciLexerPython_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerPython_metacall".}
proc fcQsciLexerPython_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerPython_tr".}
proc fcQsciLexerPython_language(self: pointer, ): cstring {.importc: "QsciLexerPython_language".}
proc fcQsciLexerPython_lexer(self: pointer, ): cstring {.importc: "QsciLexerPython_lexer".}
proc fcQsciLexerPython_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array {.importc: "QsciLexerPython_autoCompletionWordSeparators".}
proc fcQsciLexerPython_blockLookback(self: pointer, ): cint {.importc: "QsciLexerPython_blockLookback".}
proc fcQsciLexerPython_blockStart(self: pointer, ): cstring {.importc: "QsciLexerPython_blockStart".}
proc fcQsciLexerPython_braceStyle(self: pointer, ): cint {.importc: "QsciLexerPython_braceStyle".}
proc fcQsciLexerPython_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerPython_defaultColor".}
proc fcQsciLexerPython_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerPython_defaultEolFill".}
proc fcQsciLexerPython_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerPython_defaultFont".}
proc fcQsciLexerPython_defaultPaper(self: pointer, style: cint): pointer {.importc: "QsciLexerPython_defaultPaper".}
proc fcQsciLexerPython_indentationGuideView(self: pointer, ): cint {.importc: "QsciLexerPython_indentationGuideView".}
proc fcQsciLexerPython_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerPython_keywords".}
proc fcQsciLexerPython_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerPython_description".}
proc fcQsciLexerPython_refreshProperties(self: pointer, ): void {.importc: "QsciLexerPython_refreshProperties".}
proc fcQsciLexerPython_foldComments(self: pointer, ): bool {.importc: "QsciLexerPython_foldComments".}
proc fcQsciLexerPython_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerPython_setFoldCompact".}
proc fcQsciLexerPython_foldCompact(self: pointer, ): bool {.importc: "QsciLexerPython_foldCompact".}
proc fcQsciLexerPython_foldQuotes(self: pointer, ): bool {.importc: "QsciLexerPython_foldQuotes".}
proc fcQsciLexerPython_indentationWarning(self: pointer, ): cint {.importc: "QsciLexerPython_indentationWarning".}
proc fcQsciLexerPython_setHighlightSubidentifiers(self: pointer, enabled: bool): void {.importc: "QsciLexerPython_setHighlightSubidentifiers".}
proc fcQsciLexerPython_highlightSubidentifiers(self: pointer, ): bool {.importc: "QsciLexerPython_highlightSubidentifiers".}
proc fcQsciLexerPython_setStringsOverNewlineAllowed(self: pointer, allowed: bool): void {.importc: "QsciLexerPython_setStringsOverNewlineAllowed".}
proc fcQsciLexerPython_stringsOverNewlineAllowed(self: pointer, ): bool {.importc: "QsciLexerPython_stringsOverNewlineAllowed".}
proc fcQsciLexerPython_setV2UnicodeAllowed(self: pointer, allowed: bool): void {.importc: "QsciLexerPython_setV2UnicodeAllowed".}
proc fcQsciLexerPython_v2UnicodeAllowed(self: pointer, ): bool {.importc: "QsciLexerPython_v2UnicodeAllowed".}
proc fcQsciLexerPython_setV3BinaryOctalAllowed(self: pointer, allowed: bool): void {.importc: "QsciLexerPython_setV3BinaryOctalAllowed".}
proc fcQsciLexerPython_v3BinaryOctalAllowed(self: pointer, ): bool {.importc: "QsciLexerPython_v3BinaryOctalAllowed".}
proc fcQsciLexerPython_setV3BytesAllowed(self: pointer, allowed: bool): void {.importc: "QsciLexerPython_setV3BytesAllowed".}
proc fcQsciLexerPython_v3BytesAllowed(self: pointer, ): bool {.importc: "QsciLexerPython_v3BytesAllowed".}
proc fcQsciLexerPython_setFoldComments(self: pointer, fold: bool): void {.importc: "QsciLexerPython_setFoldComments".}
proc fcQsciLexerPython_setFoldQuotes(self: pointer, fold: bool): void {.importc: "QsciLexerPython_setFoldQuotes".}
proc fcQsciLexerPython_setIndentationWarning(self: pointer, warn: cint): void {.importc: "QsciLexerPython_setIndentationWarning".}
proc fcQsciLexerPython_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerPython_tr2".}
proc fcQsciLexerPython_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerPython_tr3".}
proc fcQsciLexerPython_blockStart1(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerPython_blockStart1".}
proc fQsciLexerPython_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciLexerPython_virtualbase_metacall".}
proc fcQsciLexerPython_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciLexerPython_override_virtual_metacall".}
proc fQsciLexerPython_virtualbase_indentationGuideView(self: pointer, ): cint{.importc: "QsciLexerPython_virtualbase_indentationGuideView".}
proc fcQsciLexerPython_override_virtual_indentationGuideView(self: pointer, slot: int) {.importc: "QsciLexerPython_override_virtual_indentationGuideView".}
proc fQsciLexerPython_virtualbase_setFoldComments(self: pointer, fold: bool): void{.importc: "QsciLexerPython_virtualbase_setFoldComments".}
proc fcQsciLexerPython_override_virtual_setFoldComments(self: pointer, slot: int) {.importc: "QsciLexerPython_override_virtual_setFoldComments".}
proc fQsciLexerPython_virtualbase_setFoldQuotes(self: pointer, fold: bool): void{.importc: "QsciLexerPython_virtualbase_setFoldQuotes".}
proc fcQsciLexerPython_override_virtual_setFoldQuotes(self: pointer, slot: int) {.importc: "QsciLexerPython_override_virtual_setFoldQuotes".}
proc fQsciLexerPython_virtualbase_setIndentationWarning(self: pointer, warn: cint): void{.importc: "QsciLexerPython_virtualbase_setIndentationWarning".}
proc fcQsciLexerPython_override_virtual_setIndentationWarning(self: pointer, slot: int) {.importc: "QsciLexerPython_override_virtual_setIndentationWarning".}
proc fcQsciLexerPython_override_virtual_language(self: pointer, slot: int) {.importc: "QsciLexerPython_override_virtual_language".}
proc fQsciLexerPython_virtualbase_lexer(self: pointer, ): cstring{.importc: "QsciLexerPython_virtualbase_lexer".}
proc fcQsciLexerPython_override_virtual_lexer(self: pointer, slot: int) {.importc: "QsciLexerPython_override_virtual_lexer".}
proc fQsciLexerPython_virtualbase_lexerId(self: pointer, ): cint{.importc: "QsciLexerPython_virtualbase_lexerId".}
proc fcQsciLexerPython_override_virtual_lexerId(self: pointer, slot: int) {.importc: "QsciLexerPython_override_virtual_lexerId".}
proc fQsciLexerPython_virtualbase_autoCompletionFillups(self: pointer, ): cstring{.importc: "QsciLexerPython_virtualbase_autoCompletionFillups".}
proc fcQsciLexerPython_override_virtual_autoCompletionFillups(self: pointer, slot: int) {.importc: "QsciLexerPython_override_virtual_autoCompletionFillups".}
proc fQsciLexerPython_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array{.importc: "QsciLexerPython_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerPython_override_virtual_autoCompletionWordSeparators(self: pointer, slot: int) {.importc: "QsciLexerPython_override_virtual_autoCompletionWordSeparators".}
proc fQsciLexerPython_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerPython_virtualbase_blockEnd".}
proc fcQsciLexerPython_override_virtual_blockEnd(self: pointer, slot: int) {.importc: "QsciLexerPython_override_virtual_blockEnd".}
proc fQsciLexerPython_virtualbase_blockLookback(self: pointer, ): cint{.importc: "QsciLexerPython_virtualbase_blockLookback".}
proc fcQsciLexerPython_override_virtual_blockLookback(self: pointer, slot: int) {.importc: "QsciLexerPython_override_virtual_blockLookback".}
proc fQsciLexerPython_virtualbase_blockStart(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerPython_virtualbase_blockStart".}
proc fcQsciLexerPython_override_virtual_blockStart(self: pointer, slot: int) {.importc: "QsciLexerPython_override_virtual_blockStart".}
proc fQsciLexerPython_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerPython_virtualbase_blockStartKeyword".}
proc fcQsciLexerPython_override_virtual_blockStartKeyword(self: pointer, slot: int) {.importc: "QsciLexerPython_override_virtual_blockStartKeyword".}
proc fQsciLexerPython_virtualbase_braceStyle(self: pointer, ): cint{.importc: "QsciLexerPython_virtualbase_braceStyle".}
proc fcQsciLexerPython_override_virtual_braceStyle(self: pointer, slot: int) {.importc: "QsciLexerPython_override_virtual_braceStyle".}
proc fQsciLexerPython_virtualbase_caseSensitive(self: pointer, ): bool{.importc: "QsciLexerPython_virtualbase_caseSensitive".}
proc fcQsciLexerPython_override_virtual_caseSensitive(self: pointer, slot: int) {.importc: "QsciLexerPython_override_virtual_caseSensitive".}
proc fQsciLexerPython_virtualbase_color(self: pointer, style: cint): pointer{.importc: "QsciLexerPython_virtualbase_color".}
proc fcQsciLexerPython_override_virtual_color(self: pointer, slot: int) {.importc: "QsciLexerPython_override_virtual_color".}
proc fQsciLexerPython_virtualbase_eolFill(self: pointer, style: cint): bool{.importc: "QsciLexerPython_virtualbase_eolFill".}
proc fcQsciLexerPython_override_virtual_eolFill(self: pointer, slot: int) {.importc: "QsciLexerPython_override_virtual_eolFill".}
proc fQsciLexerPython_virtualbase_font(self: pointer, style: cint): pointer{.importc: "QsciLexerPython_virtualbase_font".}
proc fcQsciLexerPython_override_virtual_font(self: pointer, slot: int) {.importc: "QsciLexerPython_override_virtual_font".}
proc fQsciLexerPython_virtualbase_keywords(self: pointer, set: cint): cstring{.importc: "QsciLexerPython_virtualbase_keywords".}
proc fcQsciLexerPython_override_virtual_keywords(self: pointer, slot: int) {.importc: "QsciLexerPython_override_virtual_keywords".}
proc fQsciLexerPython_virtualbase_defaultStyle(self: pointer, ): cint{.importc: "QsciLexerPython_virtualbase_defaultStyle".}
proc fcQsciLexerPython_override_virtual_defaultStyle(self: pointer, slot: int) {.importc: "QsciLexerPython_override_virtual_defaultStyle".}
proc fcQsciLexerPython_override_virtual_description(self: pointer, slot: int) {.importc: "QsciLexerPython_override_virtual_description".}
proc fQsciLexerPython_virtualbase_paper(self: pointer, style: cint): pointer{.importc: "QsciLexerPython_virtualbase_paper".}
proc fcQsciLexerPython_override_virtual_paper(self: pointer, slot: int) {.importc: "QsciLexerPython_override_virtual_paper".}
proc fQsciLexerPython_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerPython_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerPython_override_virtual_defaultColorWithStyle(self: pointer, slot: int) {.importc: "QsciLexerPython_override_virtual_defaultColorWithStyle".}
proc fQsciLexerPython_virtualbase_defaultEolFill(self: pointer, style: cint): bool{.importc: "QsciLexerPython_virtualbase_defaultEolFill".}
proc fcQsciLexerPython_override_virtual_defaultEolFill(self: pointer, slot: int) {.importc: "QsciLexerPython_override_virtual_defaultEolFill".}
proc fQsciLexerPython_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerPython_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerPython_override_virtual_defaultFontWithStyle(self: pointer, slot: int) {.importc: "QsciLexerPython_override_virtual_defaultFontWithStyle".}
proc fQsciLexerPython_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerPython_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerPython_override_virtual_defaultPaperWithStyle(self: pointer, slot: int) {.importc: "QsciLexerPython_override_virtual_defaultPaperWithStyle".}
proc fQsciLexerPython_virtualbase_setEditor(self: pointer, editor: pointer): void{.importc: "QsciLexerPython_virtualbase_setEditor".}
proc fcQsciLexerPython_override_virtual_setEditor(self: pointer, slot: int) {.importc: "QsciLexerPython_override_virtual_setEditor".}
proc fQsciLexerPython_virtualbase_refreshProperties(self: pointer, ): void{.importc: "QsciLexerPython_virtualbase_refreshProperties".}
proc fcQsciLexerPython_override_virtual_refreshProperties(self: pointer, slot: int) {.importc: "QsciLexerPython_override_virtual_refreshProperties".}
proc fQsciLexerPython_virtualbase_styleBitsNeeded(self: pointer, ): cint{.importc: "QsciLexerPython_virtualbase_styleBitsNeeded".}
proc fcQsciLexerPython_override_virtual_styleBitsNeeded(self: pointer, slot: int) {.importc: "QsciLexerPython_override_virtual_styleBitsNeeded".}
proc fQsciLexerPython_virtualbase_wordCharacters(self: pointer, ): cstring{.importc: "QsciLexerPython_virtualbase_wordCharacters".}
proc fcQsciLexerPython_override_virtual_wordCharacters(self: pointer, slot: int) {.importc: "QsciLexerPython_override_virtual_wordCharacters".}
proc fQsciLexerPython_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void{.importc: "QsciLexerPython_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerPython_override_virtual_setAutoIndentStyle(self: pointer, slot: int) {.importc: "QsciLexerPython_override_virtual_setAutoIndentStyle".}
proc fQsciLexerPython_virtualbase_setColor(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerPython_virtualbase_setColor".}
proc fcQsciLexerPython_override_virtual_setColor(self: pointer, slot: int) {.importc: "QsciLexerPython_override_virtual_setColor".}
proc fQsciLexerPython_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void{.importc: "QsciLexerPython_virtualbase_setEolFill".}
proc fcQsciLexerPython_override_virtual_setEolFill(self: pointer, slot: int) {.importc: "QsciLexerPython_override_virtual_setEolFill".}
proc fQsciLexerPython_virtualbase_setFont(self: pointer, f: pointer, style: cint): void{.importc: "QsciLexerPython_virtualbase_setFont".}
proc fcQsciLexerPython_override_virtual_setFont(self: pointer, slot: int) {.importc: "QsciLexerPython_override_virtual_setFont".}
proc fQsciLexerPython_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerPython_virtualbase_setPaper".}
proc fcQsciLexerPython_override_virtual_setPaper(self: pointer, slot: int) {.importc: "QsciLexerPython_override_virtual_setPaper".}
proc fQsciLexerPython_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerPython_virtualbase_readProperties".}
proc fcQsciLexerPython_override_virtual_readProperties(self: pointer, slot: int) {.importc: "QsciLexerPython_override_virtual_readProperties".}
proc fQsciLexerPython_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerPython_virtualbase_writeProperties".}
proc fcQsciLexerPython_override_virtual_writeProperties(self: pointer, slot: int) {.importc: "QsciLexerPython_override_virtual_writeProperties".}
proc fQsciLexerPython_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QsciLexerPython_virtualbase_event".}
proc fcQsciLexerPython_override_virtual_event(self: pointer, slot: int) {.importc: "QsciLexerPython_override_virtual_event".}
proc fQsciLexerPython_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciLexerPython_virtualbase_eventFilter".}
proc fcQsciLexerPython_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciLexerPython_override_virtual_eventFilter".}
proc fQsciLexerPython_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciLexerPython_virtualbase_timerEvent".}
proc fcQsciLexerPython_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciLexerPython_override_virtual_timerEvent".}
proc fQsciLexerPython_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciLexerPython_virtualbase_childEvent".}
proc fcQsciLexerPython_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciLexerPython_override_virtual_childEvent".}
proc fQsciLexerPython_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciLexerPython_virtualbase_customEvent".}
proc fcQsciLexerPython_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciLexerPython_override_virtual_customEvent".}
proc fQsciLexerPython_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerPython_virtualbase_connectNotify".}
proc fcQsciLexerPython_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciLexerPython_override_virtual_connectNotify".}
proc fQsciLexerPython_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerPython_virtualbase_disconnectNotify".}
proc fcQsciLexerPython_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciLexerPython_override_virtual_disconnectNotify".}
proc fcQsciLexerPython_staticMetaObject(): pointer {.importc: "QsciLexerPython_staticMetaObject".}
proc fcQsciLexerPython_delete(self: pointer) {.importc: "QsciLexerPython_delete".}


func init*(T: type QsciLexerPython, h: ptr cQsciLexerPython): QsciLexerPython =
  T(h: h)
proc create*(T: type QsciLexerPython, ): QsciLexerPython =

  QsciLexerPython.init(fcQsciLexerPython_new())
proc create*(T: type QsciLexerPython, parent: gen_qobject.QObject): QsciLexerPython =

  QsciLexerPython.init(fcQsciLexerPython_new2(parent.h))
proc metaObject*(self: QsciLexerPython, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQsciLexerPython_metaObject(self.h))

proc metacast*(self: QsciLexerPython, param1: cstring): pointer =

  fcQsciLexerPython_metacast(self.h, param1)

proc metacall*(self: QsciLexerPython, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQsciLexerPython_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QsciLexerPython, s: cstring): string =

  let v_ms = fcQsciLexerPython_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: QsciLexerPython, ): cstring =

  (fcQsciLexerPython_language(self.h))

proc lexer*(self: QsciLexerPython, ): cstring =

  (fcQsciLexerPython_lexer(self.h))

proc autoCompletionWordSeparators*(self: QsciLexerPython, ): seq[string] =

  var v_ma = fcQsciLexerPython_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc blockLookback*(self: QsciLexerPython, ): cint =

  fcQsciLexerPython_blockLookback(self.h)

proc blockStart*(self: QsciLexerPython, ): cstring =

  (fcQsciLexerPython_blockStart(self.h))

proc braceStyle*(self: QsciLexerPython, ): cint =

  fcQsciLexerPython_braceStyle(self.h)

proc defaultColor*(self: QsciLexerPython, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerPython_defaultColor(self.h, style))

proc defaultEolFill*(self: QsciLexerPython, style: cint): bool =

  fcQsciLexerPython_defaultEolFill(self.h, style)

proc defaultFont*(self: QsciLexerPython, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQsciLexerPython_defaultFont(self.h, style))

proc defaultPaper*(self: QsciLexerPython, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerPython_defaultPaper(self.h, style))

proc indentationGuideView*(self: QsciLexerPython, ): cint =

  fcQsciLexerPython_indentationGuideView(self.h)

proc keywords*(self: QsciLexerPython, set: cint): cstring =

  (fcQsciLexerPython_keywords(self.h, set))

proc description*(self: QsciLexerPython, style: cint): string =

  let v_ms = fcQsciLexerPython_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: QsciLexerPython, ): void =

  fcQsciLexerPython_refreshProperties(self.h)

proc foldComments*(self: QsciLexerPython, ): bool =

  fcQsciLexerPython_foldComments(self.h)

proc setFoldCompact*(self: QsciLexerPython, fold: bool): void =

  fcQsciLexerPython_setFoldCompact(self.h, fold)

proc foldCompact*(self: QsciLexerPython, ): bool =

  fcQsciLexerPython_foldCompact(self.h)

proc foldQuotes*(self: QsciLexerPython, ): bool =

  fcQsciLexerPython_foldQuotes(self.h)

proc indentationWarning*(self: QsciLexerPython, ): QsciLexerPythonIndentationWarning =

  QsciLexerPythonIndentationWarning(fcQsciLexerPython_indentationWarning(self.h))

proc setHighlightSubidentifiers*(self: QsciLexerPython, enabled: bool): void =

  fcQsciLexerPython_setHighlightSubidentifiers(self.h, enabled)

proc highlightSubidentifiers*(self: QsciLexerPython, ): bool =

  fcQsciLexerPython_highlightSubidentifiers(self.h)

proc setStringsOverNewlineAllowed*(self: QsciLexerPython, allowed: bool): void =

  fcQsciLexerPython_setStringsOverNewlineAllowed(self.h, allowed)

proc stringsOverNewlineAllowed*(self: QsciLexerPython, ): bool =

  fcQsciLexerPython_stringsOverNewlineAllowed(self.h)

proc setV2UnicodeAllowed*(self: QsciLexerPython, allowed: bool): void =

  fcQsciLexerPython_setV2UnicodeAllowed(self.h, allowed)

proc v2UnicodeAllowed*(self: QsciLexerPython, ): bool =

  fcQsciLexerPython_v2UnicodeAllowed(self.h)

proc setV3BinaryOctalAllowed*(self: QsciLexerPython, allowed: bool): void =

  fcQsciLexerPython_setV3BinaryOctalAllowed(self.h, allowed)

proc v3BinaryOctalAllowed*(self: QsciLexerPython, ): bool =

  fcQsciLexerPython_v3BinaryOctalAllowed(self.h)

proc setV3BytesAllowed*(self: QsciLexerPython, allowed: bool): void =

  fcQsciLexerPython_setV3BytesAllowed(self.h, allowed)

proc v3BytesAllowed*(self: QsciLexerPython, ): bool =

  fcQsciLexerPython_v3BytesAllowed(self.h)

proc setFoldComments*(self: QsciLexerPython, fold: bool): void =

  fcQsciLexerPython_setFoldComments(self.h, fold)

proc setFoldQuotes*(self: QsciLexerPython, fold: bool): void =

  fcQsciLexerPython_setFoldQuotes(self.h, fold)

proc setIndentationWarning*(self: QsciLexerPython, warn: QsciLexerPythonIndentationWarning): void =

  fcQsciLexerPython_setIndentationWarning(self.h, cint(warn))

proc tr2*(_: type QsciLexerPython, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerPython_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QsciLexerPython, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerPython_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc blockStart1*(self: QsciLexerPython, style: ptr cint): cstring =

  (fcQsciLexerPython_blockStart1(self.h, style))

proc callVirtualBase_metacall(self: QsciLexerPython, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQsciLexerPython_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerPythonmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QsciLexerPython, slot: proc(super: QsciLexerPythonmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPythonmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_metacall(self: ptr cQsciLexerPython, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerPython_metacall ".} =
  type Cb = proc(super: QsciLexerPythonmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QsciLexerPython(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_indentationGuideView(self: QsciLexerPython, ): cint =


  fQsciLexerPython_virtualbase_indentationGuideView(self.h)

type QsciLexerPythonindentationGuideViewBase* = proc(): cint
proc onindentationGuideView*(self: QsciLexerPython, slot: proc(super: QsciLexerPythonindentationGuideViewBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPythonindentationGuideViewBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_indentationGuideView(self: ptr cQsciLexerPython, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPython_indentationGuideView ".} =
  type Cb = proc(super: QsciLexerPythonindentationGuideViewBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_indentationGuideView(QsciLexerPython(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setFoldComments(self: QsciLexerPython, fold: bool): void =


  fQsciLexerPython_virtualbase_setFoldComments(self.h, fold)

type QsciLexerPythonsetFoldCommentsBase* = proc(fold: bool): void
proc onsetFoldComments*(self: QsciLexerPython, slot: proc(super: QsciLexerPythonsetFoldCommentsBase, fold: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPythonsetFoldCommentsBase, fold: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_setFoldComments(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_setFoldComments(self: ptr cQsciLexerPython, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerPython_setFoldComments ".} =
  type Cb = proc(super: QsciLexerPythonsetFoldCommentsBase, fold: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: bool): auto =
    callVirtualBase_setFoldComments(QsciLexerPython(h: self), fold)
  let slotval1 = fold


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setFoldQuotes(self: QsciLexerPython, fold: bool): void =


  fQsciLexerPython_virtualbase_setFoldQuotes(self.h, fold)

type QsciLexerPythonsetFoldQuotesBase* = proc(fold: bool): void
proc onsetFoldQuotes*(self: QsciLexerPython, slot: proc(super: QsciLexerPythonsetFoldQuotesBase, fold: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPythonsetFoldQuotesBase, fold: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_setFoldQuotes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_setFoldQuotes(self: ptr cQsciLexerPython, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerPython_setFoldQuotes ".} =
  type Cb = proc(super: QsciLexerPythonsetFoldQuotesBase, fold: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: bool): auto =
    callVirtualBase_setFoldQuotes(QsciLexerPython(h: self), fold)
  let slotval1 = fold


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setIndentationWarning(self: QsciLexerPython, warn: QsciLexerPythonIndentationWarning): void =


  fQsciLexerPython_virtualbase_setIndentationWarning(self.h, cint(warn))

type QsciLexerPythonsetIndentationWarningBase* = proc(warn: QsciLexerPythonIndentationWarning): void
proc onsetIndentationWarning*(self: QsciLexerPython, slot: proc(super: QsciLexerPythonsetIndentationWarningBase, warn: QsciLexerPythonIndentationWarning): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPythonsetIndentationWarningBase, warn: QsciLexerPythonIndentationWarning): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_setIndentationWarning(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_setIndentationWarning(self: ptr cQsciLexerPython, slot: int, warn: cint): void {.exportc: "miqt_exec_callback_QsciLexerPython_setIndentationWarning ".} =
  type Cb = proc(super: QsciLexerPythonsetIndentationWarningBase, warn: QsciLexerPythonIndentationWarning): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(warn: QsciLexerPythonIndentationWarning): auto =
    callVirtualBase_setIndentationWarning(QsciLexerPython(h: self), warn)
  let slotval1 = QsciLexerPythonIndentationWarning(warn)


  nimfunc[](superCall, slotval1)
type QsciLexerPythonlanguageBase* = proc(): cstring
proc onlanguage*(self: QsciLexerPython, slot: proc(): cstring) =
  # TODO check subclass
  type Cb = proc(): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_language(self: ptr cQsciLexerPython, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerPython_language ".} =
  type Cb = proc(): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc callVirtualBase_lexer(self: QsciLexerPython, ): cstring =


  (fQsciLexerPython_virtualbase_lexer(self.h))

type QsciLexerPythonlexerBase* = proc(): cstring
proc onlexer*(self: QsciLexerPython, slot: proc(super: QsciLexerPythonlexerBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPythonlexerBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_lexer(self: ptr cQsciLexerPython, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerPython_lexer ".} =
  type Cb = proc(super: QsciLexerPythonlexerBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexer(QsciLexerPython(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_lexerId(self: QsciLexerPython, ): cint =


  fQsciLexerPython_virtualbase_lexerId(self.h)

type QsciLexerPythonlexerIdBase* = proc(): cint
proc onlexerId*(self: QsciLexerPython, slot: proc(super: QsciLexerPythonlexerIdBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPythonlexerIdBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_lexerId(self: ptr cQsciLexerPython, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPython_lexerId ".} =
  type Cb = proc(super: QsciLexerPythonlexerIdBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexerId(QsciLexerPython(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionFillups(self: QsciLexerPython, ): cstring =


  (fQsciLexerPython_virtualbase_autoCompletionFillups(self.h))

type QsciLexerPythonautoCompletionFillupsBase* = proc(): cstring
proc onautoCompletionFillups*(self: QsciLexerPython, slot: proc(super: QsciLexerPythonautoCompletionFillupsBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPythonautoCompletionFillupsBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_autoCompletionFillups(self: ptr cQsciLexerPython, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerPython_autoCompletionFillups ".} =
  type Cb = proc(super: QsciLexerPythonautoCompletionFillupsBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionFillups(QsciLexerPython(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionWordSeparators(self: QsciLexerPython, ): seq[string] =


  var v_ma = fQsciLexerPython_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerPythonautoCompletionWordSeparatorsBase* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: QsciLexerPython, slot: proc(super: QsciLexerPythonautoCompletionWordSeparatorsBase): seq[string]) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPythonautoCompletionWordSeparatorsBase): seq[string]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_autoCompletionWordSeparators(self: ptr cQsciLexerPython, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerPython_autoCompletionWordSeparators ".} =
  type Cb = proc(super: QsciLexerPythonautoCompletionWordSeparatorsBase): seq[string]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionWordSeparators(QsciLexerPython(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_blockEnd(self: QsciLexerPython, style: ptr cint): cstring =


  (fQsciLexerPython_virtualbase_blockEnd(self.h, style))

type QsciLexerPythonblockEndBase* = proc(style: ptr cint): cstring
proc onblockEnd*(self: QsciLexerPython, slot: proc(super: QsciLexerPythonblockEndBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPythonblockEndBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_blockEnd(self: ptr cQsciLexerPython, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerPython_blockEnd ".} =
  type Cb = proc(super: QsciLexerPythonblockEndBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockEnd(QsciLexerPython(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockLookback(self: QsciLexerPython, ): cint =


  fQsciLexerPython_virtualbase_blockLookback(self.h)

type QsciLexerPythonblockLookbackBase* = proc(): cint
proc onblockLookback*(self: QsciLexerPython, slot: proc(super: QsciLexerPythonblockLookbackBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPythonblockLookbackBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_blockLookback(self: ptr cQsciLexerPython, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPython_blockLookback ".} =
  type Cb = proc(super: QsciLexerPythonblockLookbackBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_blockLookback(QsciLexerPython(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_blockStart(self: QsciLexerPython, style: ptr cint): cstring =


  (fQsciLexerPython_virtualbase_blockStart(self.h, style))

type QsciLexerPythonblockStartBase* = proc(style: ptr cint): cstring
proc onblockStart*(self: QsciLexerPython, slot: proc(super: QsciLexerPythonblockStartBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPythonblockStartBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_blockStart(self: ptr cQsciLexerPython, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerPython_blockStart ".} =
  type Cb = proc(super: QsciLexerPythonblockStartBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStart(QsciLexerPython(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockStartKeyword(self: QsciLexerPython, style: ptr cint): cstring =


  (fQsciLexerPython_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerPythonblockStartKeywordBase* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: QsciLexerPython, slot: proc(super: QsciLexerPythonblockStartKeywordBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPythonblockStartKeywordBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_blockStartKeyword(self: ptr cQsciLexerPython, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerPython_blockStartKeyword ".} =
  type Cb = proc(super: QsciLexerPythonblockStartKeywordBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStartKeyword(QsciLexerPython(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_braceStyle(self: QsciLexerPython, ): cint =


  fQsciLexerPython_virtualbase_braceStyle(self.h)

type QsciLexerPythonbraceStyleBase* = proc(): cint
proc onbraceStyle*(self: QsciLexerPython, slot: proc(super: QsciLexerPythonbraceStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPythonbraceStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_braceStyle(self: ptr cQsciLexerPython, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPython_braceStyle ".} =
  type Cb = proc(super: QsciLexerPythonbraceStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_braceStyle(QsciLexerPython(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_caseSensitive(self: QsciLexerPython, ): bool =


  fQsciLexerPython_virtualbase_caseSensitive(self.h)

type QsciLexerPythoncaseSensitiveBase* = proc(): bool
proc oncaseSensitive*(self: QsciLexerPython, slot: proc(super: QsciLexerPythoncaseSensitiveBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPythoncaseSensitiveBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_caseSensitive(self: ptr cQsciLexerPython, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerPython_caseSensitive ".} =
  type Cb = proc(super: QsciLexerPythoncaseSensitiveBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_caseSensitive(QsciLexerPython(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_color(self: QsciLexerPython, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerPython_virtualbase_color(self.h, style))

type QsciLexerPythoncolorBase* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: QsciLexerPython, slot: proc(super: QsciLexerPythoncolorBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPythoncolorBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_color(self: ptr cQsciLexerPython, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPython_color ".} =
  type Cb = proc(super: QsciLexerPythoncolorBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_color(QsciLexerPython(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_eolFill(self: QsciLexerPython, style: cint): bool =


  fQsciLexerPython_virtualbase_eolFill(self.h, style)

type QsciLexerPythoneolFillBase* = proc(style: cint): bool
proc oneolFill*(self: QsciLexerPython, slot: proc(super: QsciLexerPythoneolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPythoneolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_eolFill(self: ptr cQsciLexerPython, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerPython_eolFill ".} =
  type Cb = proc(super: QsciLexerPythoneolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_eolFill(QsciLexerPython(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_font(self: QsciLexerPython, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerPython_virtualbase_font(self.h, style))

type QsciLexerPythonfontBase* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: QsciLexerPython, slot: proc(super: QsciLexerPythonfontBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPythonfontBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_font(self: ptr cQsciLexerPython, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPython_font ".} =
  type Cb = proc(super: QsciLexerPythonfontBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_font(QsciLexerPython(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_keywords(self: QsciLexerPython, set: cint): cstring =


  (fQsciLexerPython_virtualbase_keywords(self.h, set))

type QsciLexerPythonkeywordsBase* = proc(set: cint): cstring
proc onkeywords*(self: QsciLexerPython, slot: proc(super: QsciLexerPythonkeywordsBase, set: cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPythonkeywordsBase, set: cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_keywords(self: ptr cQsciLexerPython, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerPython_keywords ".} =
  type Cb = proc(super: QsciLexerPythonkeywordsBase, set: cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(set: cint): auto =
    callVirtualBase_keywords(QsciLexerPython(h: self), set)
  let slotval1 = set


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultStyle(self: QsciLexerPython, ): cint =


  fQsciLexerPython_virtualbase_defaultStyle(self.h)

type QsciLexerPythondefaultStyleBase* = proc(): cint
proc ondefaultStyle*(self: QsciLexerPython, slot: proc(super: QsciLexerPythondefaultStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPythondefaultStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_defaultStyle(self: ptr cQsciLexerPython, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPython_defaultStyle ".} =
  type Cb = proc(super: QsciLexerPythondefaultStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_defaultStyle(QsciLexerPython(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
type QsciLexerPythondescriptionBase* = proc(style: cint): string
proc ondescription*(self: QsciLexerPython, slot: proc(style: cint): string) =
  # TODO check subclass
  type Cb = proc(style: cint): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_description(self: ptr cQsciLexerPython, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerPython_description ".} =
  type Cb = proc(style: cint): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc callVirtualBase_paper(self: QsciLexerPython, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerPython_virtualbase_paper(self.h, style))

type QsciLexerPythonpaperBase* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: QsciLexerPython, slot: proc(super: QsciLexerPythonpaperBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPythonpaperBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_paper(self: ptr cQsciLexerPython, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPython_paper ".} =
  type Cb = proc(super: QsciLexerPythonpaperBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_paper(QsciLexerPython(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultColorWithStyle(self: QsciLexerPython, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerPython_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerPythondefaultColorWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColorWithStyle*(self: QsciLexerPython, slot: proc(super: QsciLexerPythondefaultColorWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPythondefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_defaultColorWithStyle(self: ptr cQsciLexerPython, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPython_defaultColorWithStyle ".} =
  type Cb = proc(super: QsciLexerPythondefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultColorWithStyle(QsciLexerPython(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultEolFill(self: QsciLexerPython, style: cint): bool =


  fQsciLexerPython_virtualbase_defaultEolFill(self.h, style)

type QsciLexerPythondefaultEolFillBase* = proc(style: cint): bool
proc ondefaultEolFill*(self: QsciLexerPython, slot: proc(super: QsciLexerPythondefaultEolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPythondefaultEolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_defaultEolFill(self: ptr cQsciLexerPython, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerPython_defaultEolFill ".} =
  type Cb = proc(super: QsciLexerPythondefaultEolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultEolFill(QsciLexerPython(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultFontWithStyle(self: QsciLexerPython, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerPython_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerPythondefaultFontWithStyleBase* = proc(style: cint): gen_qfont.QFont
proc ondefaultFontWithStyle*(self: QsciLexerPython, slot: proc(super: QsciLexerPythondefaultFontWithStyleBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPythondefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_defaultFontWithStyle(self: ptr cQsciLexerPython, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPython_defaultFontWithStyle ".} =
  type Cb = proc(super: QsciLexerPythondefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultFontWithStyle(QsciLexerPython(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultPaperWithStyle(self: QsciLexerPython, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerPython_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerPythondefaultPaperWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaperWithStyle*(self: QsciLexerPython, slot: proc(super: QsciLexerPythondefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPythondefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_defaultPaperWithStyle(self: ptr cQsciLexerPython, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPython_defaultPaperWithStyle ".} =
  type Cb = proc(super: QsciLexerPythondefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultPaperWithStyle(QsciLexerPython(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_setEditor(self: QsciLexerPython, editor: gen_qsciscintilla.QsciScintilla): void =


  fQsciLexerPython_virtualbase_setEditor(self.h, editor.h)

type QsciLexerPythonsetEditorBase* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: QsciLexerPython, slot: proc(super: QsciLexerPythonsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPythonsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_setEditor(self: ptr cQsciLexerPython, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPython_setEditor ".} =
  type Cb = proc(super: QsciLexerPythonsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qsciscintilla.QsciScintilla): auto =
    callVirtualBase_setEditor(QsciLexerPython(h: self), editor)
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_refreshProperties(self: QsciLexerPython, ): void =


  fQsciLexerPython_virtualbase_refreshProperties(self.h)

type QsciLexerPythonrefreshPropertiesBase* = proc(): void
proc onrefreshProperties*(self: QsciLexerPython, slot: proc(super: QsciLexerPythonrefreshPropertiesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPythonrefreshPropertiesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_refreshProperties(self: ptr cQsciLexerPython, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerPython_refreshProperties ".} =
  type Cb = proc(super: QsciLexerPythonrefreshPropertiesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_refreshProperties(QsciLexerPython(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_styleBitsNeeded(self: QsciLexerPython, ): cint =


  fQsciLexerPython_virtualbase_styleBitsNeeded(self.h)

type QsciLexerPythonstyleBitsNeededBase* = proc(): cint
proc onstyleBitsNeeded*(self: QsciLexerPython, slot: proc(super: QsciLexerPythonstyleBitsNeededBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPythonstyleBitsNeededBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_styleBitsNeeded(self: ptr cQsciLexerPython, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPython_styleBitsNeeded ".} =
  type Cb = proc(super: QsciLexerPythonstyleBitsNeededBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_styleBitsNeeded(QsciLexerPython(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_wordCharacters(self: QsciLexerPython, ): cstring =


  (fQsciLexerPython_virtualbase_wordCharacters(self.h))

type QsciLexerPythonwordCharactersBase* = proc(): cstring
proc onwordCharacters*(self: QsciLexerPython, slot: proc(super: QsciLexerPythonwordCharactersBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPythonwordCharactersBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_wordCharacters(self: ptr cQsciLexerPython, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerPython_wordCharacters ".} =
  type Cb = proc(super: QsciLexerPythonwordCharactersBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_wordCharacters(QsciLexerPython(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setAutoIndentStyle(self: QsciLexerPython, autoindentstyle: cint): void =


  fQsciLexerPython_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerPythonsetAutoIndentStyleBase* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: QsciLexerPython, slot: proc(super: QsciLexerPythonsetAutoIndentStyleBase, autoindentstyle: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPythonsetAutoIndentStyleBase, autoindentstyle: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_setAutoIndentStyle(self: ptr cQsciLexerPython, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerPython_setAutoIndentStyle ".} =
  type Cb = proc(super: QsciLexerPythonsetAutoIndentStyleBase, autoindentstyle: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(autoindentstyle: cint): auto =
    callVirtualBase_setAutoIndentStyle(QsciLexerPython(h: self), autoindentstyle)
  let slotval1 = autoindentstyle


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setColor(self: QsciLexerPython, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerPython_virtualbase_setColor(self.h, c.h, style)

type QsciLexerPythonsetColorBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: QsciLexerPython, slot: proc(super: QsciLexerPythonsetColorBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPythonsetColorBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_setColor(self: ptr cQsciLexerPython, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerPython_setColor ".} =
  type Cb = proc(super: QsciLexerPythonsetColorBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setColor(QsciLexerPython(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setEolFill(self: QsciLexerPython, eoffill: bool, style: cint): void =


  fQsciLexerPython_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerPythonsetEolFillBase* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: QsciLexerPython, slot: proc(super: QsciLexerPythonsetEolFillBase, eoffill: bool, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPythonsetEolFillBase, eoffill: bool, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_setEolFill(self: ptr cQsciLexerPython, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerPython_setEolFill ".} =
  type Cb = proc(super: QsciLexerPythonsetEolFillBase, eoffill: bool, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eoffill: bool, style: cint): auto =
    callVirtualBase_setEolFill(QsciLexerPython(h: self), eoffill, style)
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setFont(self: QsciLexerPython, f: gen_qfont.QFont, style: cint): void =


  fQsciLexerPython_virtualbase_setFont(self.h, f.h, style)

type QsciLexerPythonsetFontBase* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: QsciLexerPython, slot: proc(super: QsciLexerPythonsetFontBase, f: gen_qfont.QFont, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPythonsetFontBase, f: gen_qfont.QFont, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_setFont(self: ptr cQsciLexerPython, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerPython_setFont ".} =
  type Cb = proc(super: QsciLexerPythonsetFontBase, f: gen_qfont.QFont, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(f: gen_qfont.QFont, style: cint): auto =
    callVirtualBase_setFont(QsciLexerPython(h: self), f, style)
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setPaper(self: QsciLexerPython, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerPython_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerPythonsetPaperBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: QsciLexerPython, slot: proc(super: QsciLexerPythonsetPaperBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPythonsetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_setPaper(self: ptr cQsciLexerPython, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerPython_setPaper ".} =
  type Cb = proc(super: QsciLexerPythonsetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setPaper(QsciLexerPython(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_readProperties(self: QsciLexerPython, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerPython_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerPythonreadPropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: QsciLexerPython, slot: proc(super: QsciLexerPythonreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPythonreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_readProperties(self: ptr cQsciLexerPython, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerPython_readProperties ".} =
  type Cb = proc(super: QsciLexerPythonreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_readProperties(QsciLexerPython(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_writeProperties(self: QsciLexerPython, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerPython_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerPythonwritePropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: QsciLexerPython, slot: proc(super: QsciLexerPythonwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPythonwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_writeProperties(self: ptr cQsciLexerPython, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerPython_writeProperties ".} =
  type Cb = proc(super: QsciLexerPythonwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_writeProperties(QsciLexerPython(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_event(self: QsciLexerPython, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerPython_virtualbase_event(self.h, event.h)

type QsciLexerPythoneventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QsciLexerPython, slot: proc(super: QsciLexerPythoneventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPythoneventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_event(self: ptr cQsciLexerPython, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerPython_event ".} =
  type Cb = proc(super: QsciLexerPythoneventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QsciLexerPython(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QsciLexerPython, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerPython_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerPythoneventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QsciLexerPython, slot: proc(super: QsciLexerPythoneventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPythoneventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_eventFilter(self: ptr cQsciLexerPython, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerPython_eventFilter ".} =
  type Cb = proc(super: QsciLexerPythoneventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QsciLexerPython(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QsciLexerPython, event: gen_qcoreevent.QTimerEvent): void =


  fQsciLexerPython_virtualbase_timerEvent(self.h, event.h)

type QsciLexerPythontimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QsciLexerPython, slot: proc(super: QsciLexerPythontimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPythontimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_timerEvent(self: ptr cQsciLexerPython, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPython_timerEvent ".} =
  type Cb = proc(super: QsciLexerPythontimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QsciLexerPython(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QsciLexerPython, event: gen_qcoreevent.QChildEvent): void =


  fQsciLexerPython_virtualbase_childEvent(self.h, event.h)

type QsciLexerPythonchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QsciLexerPython, slot: proc(super: QsciLexerPythonchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPythonchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_childEvent(self: ptr cQsciLexerPython, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPython_childEvent ".} =
  type Cb = proc(super: QsciLexerPythonchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QsciLexerPython(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QsciLexerPython, event: gen_qcoreevent.QEvent): void =


  fQsciLexerPython_virtualbase_customEvent(self.h, event.h)

type QsciLexerPythoncustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QsciLexerPython, slot: proc(super: QsciLexerPythoncustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPythoncustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_customEvent(self: ptr cQsciLexerPython, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPython_customEvent ".} =
  type Cb = proc(super: QsciLexerPythoncustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QsciLexerPython(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QsciLexerPython, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerPython_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerPythonconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QsciLexerPython, slot: proc(super: QsciLexerPythonconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPythonconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_connectNotify(self: ptr cQsciLexerPython, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPython_connectNotify ".} =
  type Cb = proc(super: QsciLexerPythonconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QsciLexerPython(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QsciLexerPython, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerPython_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerPythondisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QsciLexerPython, slot: proc(super: QsciLexerPythondisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPythondisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_disconnectNotify(self: ptr cQsciLexerPython, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPython_disconnectNotify ".} =
  type Cb = proc(super: QsciLexerPythondisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QsciLexerPython(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QsciLexerPython): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerPython_staticMetaObject())
proc delete*(self: QsciLexerPython) =
  fcQsciLexerPython_delete(self.h)
