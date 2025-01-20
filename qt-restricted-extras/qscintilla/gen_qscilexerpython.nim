import Qt5PrintSupport_libs

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

const cflags = gorge("pkg-config -cflags Qt5PrintSupport")
{.compile("gen_qscilexerpython.cpp", cflags).}


type QsciLexerPythonEnumEnum* = distinct cint
template Default*(_: type QsciLexerPythonEnumEnum): untyped = 0
template Comment*(_: type QsciLexerPythonEnumEnum): untyped = 1
template Number*(_: type QsciLexerPythonEnumEnum): untyped = 2
template DoubleQuotedString*(_: type QsciLexerPythonEnumEnum): untyped = 3
template SingleQuotedString*(_: type QsciLexerPythonEnumEnum): untyped = 4
template Keyword*(_: type QsciLexerPythonEnumEnum): untyped = 5
template TripleSingleQuotedString*(_: type QsciLexerPythonEnumEnum): untyped = 6
template TripleDoubleQuotedString*(_: type QsciLexerPythonEnumEnum): untyped = 7
template ClassName*(_: type QsciLexerPythonEnumEnum): untyped = 8
template FunctionMethodName*(_: type QsciLexerPythonEnumEnum): untyped = 9
template Operator*(_: type QsciLexerPythonEnumEnum): untyped = 10
template Identifier*(_: type QsciLexerPythonEnumEnum): untyped = 11
template CommentBlock*(_: type QsciLexerPythonEnumEnum): untyped = 12
template UnclosedString*(_: type QsciLexerPythonEnumEnum): untyped = 13
template HighlightedIdentifier*(_: type QsciLexerPythonEnumEnum): untyped = 14
template Decorator*(_: type QsciLexerPythonEnumEnum): untyped = 15
template DoubleQuotedFString*(_: type QsciLexerPythonEnumEnum): untyped = 16
template SingleQuotedFString*(_: type QsciLexerPythonEnumEnum): untyped = 17
template TripleSingleQuotedFString*(_: type QsciLexerPythonEnumEnum): untyped = 18
template TripleDoubleQuotedFString*(_: type QsciLexerPythonEnumEnum): untyped = 19


type QsciLexerPythonIndentationWarningEnum* = distinct cint
template NoWarning*(_: type QsciLexerPythonIndentationWarningEnum): untyped = 0
template Inconsistent*(_: type QsciLexerPythonIndentationWarningEnum): untyped = 1
template TabsAfterSpaces*(_: type QsciLexerPythonIndentationWarningEnum): untyped = 2
template Spaces*(_: type QsciLexerPythonIndentationWarningEnum): untyped = 3
template Tabs*(_: type QsciLexerPythonIndentationWarningEnum): untyped = 4


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
proc fcQsciLexerPython_trUtf8(s: cstring): struct_miqt_string {.importc: "QsciLexerPython_trUtf8".}
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
proc fcQsciLexerPython_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerPython_trUtf82".}
proc fcQsciLexerPython_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerPython_trUtf83".}
proc fcQsciLexerPython_blockStart1(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerPython_blockStart1".}
proc fQsciLexerPython_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QsciLexerPython_virtualbase_metaObject".}
proc fcQsciLexerPython_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QsciLexerPython_override_virtual_metaObject".}
proc fQsciLexerPython_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QsciLexerPython_virtualbase_metacast".}
proc fcQsciLexerPython_override_virtual_metacast(self: pointer, slot: int) {.importc: "QsciLexerPython_override_virtual_metacast".}
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


func init*(T: type gen_qscilexerpython_types.QsciLexerPython, h: ptr cQsciLexerPython): gen_qscilexerpython_types.QsciLexerPython =
  T(h: h)
proc create*(T: type gen_qscilexerpython_types.QsciLexerPython, ): gen_qscilexerpython_types.QsciLexerPython =

  gen_qscilexerpython_types.QsciLexerPython.init(fcQsciLexerPython_new())
proc create*(T: type gen_qscilexerpython_types.QsciLexerPython, parent: gen_qobject.QObject): gen_qscilexerpython_types.QsciLexerPython =

  gen_qscilexerpython_types.QsciLexerPython.init(fcQsciLexerPython_new2(parent.h))
proc metaObject*(self: gen_qscilexerpython_types.QsciLexerPython, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQsciLexerPython_metaObject(self.h))

proc metacast*(self: gen_qscilexerpython_types.QsciLexerPython, param1: cstring): pointer =

  fcQsciLexerPython_metacast(self.h, param1)

proc metacall*(self: gen_qscilexerpython_types.QsciLexerPython, param1: cint, param2: cint, param3: pointer): cint =

  fcQsciLexerPython_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexerpython_types.QsciLexerPython, s: cstring): string =

  let v_ms = fcQsciLexerPython_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexerpython_types.QsciLexerPython, s: cstring): string =

  let v_ms = fcQsciLexerPython_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexerpython_types.QsciLexerPython, ): cstring =

  (fcQsciLexerPython_language(self.h))

proc lexer*(self: gen_qscilexerpython_types.QsciLexerPython, ): cstring =

  (fcQsciLexerPython_lexer(self.h))

proc autoCompletionWordSeparators*(self: gen_qscilexerpython_types.QsciLexerPython, ): seq[string] =

  var v_ma = fcQsciLexerPython_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc blockLookback*(self: gen_qscilexerpython_types.QsciLexerPython, ): cint =

  fcQsciLexerPython_blockLookback(self.h)

proc blockStart*(self: gen_qscilexerpython_types.QsciLexerPython, ): cstring =

  (fcQsciLexerPython_blockStart(self.h))

proc braceStyle*(self: gen_qscilexerpython_types.QsciLexerPython, ): cint =

  fcQsciLexerPython_braceStyle(self.h)

proc defaultColor*(self: gen_qscilexerpython_types.QsciLexerPython, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerPython_defaultColor(self.h, style))

proc defaultEolFill*(self: gen_qscilexerpython_types.QsciLexerPython, style: cint): bool =

  fcQsciLexerPython_defaultEolFill(self.h, style)

proc defaultFont*(self: gen_qscilexerpython_types.QsciLexerPython, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQsciLexerPython_defaultFont(self.h, style))

proc defaultPaper*(self: gen_qscilexerpython_types.QsciLexerPython, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerPython_defaultPaper(self.h, style))

proc indentationGuideView*(self: gen_qscilexerpython_types.QsciLexerPython, ): cint =

  fcQsciLexerPython_indentationGuideView(self.h)

proc keywords*(self: gen_qscilexerpython_types.QsciLexerPython, set: cint): cstring =

  (fcQsciLexerPython_keywords(self.h, set))

proc description*(self: gen_qscilexerpython_types.QsciLexerPython, style: cint): string =

  let v_ms = fcQsciLexerPython_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: gen_qscilexerpython_types.QsciLexerPython, ): void =

  fcQsciLexerPython_refreshProperties(self.h)

proc foldComments*(self: gen_qscilexerpython_types.QsciLexerPython, ): bool =

  fcQsciLexerPython_foldComments(self.h)

proc setFoldCompact*(self: gen_qscilexerpython_types.QsciLexerPython, fold: bool): void =

  fcQsciLexerPython_setFoldCompact(self.h, fold)

proc foldCompact*(self: gen_qscilexerpython_types.QsciLexerPython, ): bool =

  fcQsciLexerPython_foldCompact(self.h)

proc foldQuotes*(self: gen_qscilexerpython_types.QsciLexerPython, ): bool =

  fcQsciLexerPython_foldQuotes(self.h)

proc indentationWarning*(self: gen_qscilexerpython_types.QsciLexerPython, ): cint =

  cint(fcQsciLexerPython_indentationWarning(self.h))

proc setHighlightSubidentifiers*(self: gen_qscilexerpython_types.QsciLexerPython, enabled: bool): void =

  fcQsciLexerPython_setHighlightSubidentifiers(self.h, enabled)

proc highlightSubidentifiers*(self: gen_qscilexerpython_types.QsciLexerPython, ): bool =

  fcQsciLexerPython_highlightSubidentifiers(self.h)

proc setStringsOverNewlineAllowed*(self: gen_qscilexerpython_types.QsciLexerPython, allowed: bool): void =

  fcQsciLexerPython_setStringsOverNewlineAllowed(self.h, allowed)

proc stringsOverNewlineAllowed*(self: gen_qscilexerpython_types.QsciLexerPython, ): bool =

  fcQsciLexerPython_stringsOverNewlineAllowed(self.h)

proc setV2UnicodeAllowed*(self: gen_qscilexerpython_types.QsciLexerPython, allowed: bool): void =

  fcQsciLexerPython_setV2UnicodeAllowed(self.h, allowed)

proc v2UnicodeAllowed*(self: gen_qscilexerpython_types.QsciLexerPython, ): bool =

  fcQsciLexerPython_v2UnicodeAllowed(self.h)

proc setV3BinaryOctalAllowed*(self: gen_qscilexerpython_types.QsciLexerPython, allowed: bool): void =

  fcQsciLexerPython_setV3BinaryOctalAllowed(self.h, allowed)

proc v3BinaryOctalAllowed*(self: gen_qscilexerpython_types.QsciLexerPython, ): bool =

  fcQsciLexerPython_v3BinaryOctalAllowed(self.h)

proc setV3BytesAllowed*(self: gen_qscilexerpython_types.QsciLexerPython, allowed: bool): void =

  fcQsciLexerPython_setV3BytesAllowed(self.h, allowed)

proc v3BytesAllowed*(self: gen_qscilexerpython_types.QsciLexerPython, ): bool =

  fcQsciLexerPython_v3BytesAllowed(self.h)

proc setFoldComments*(self: gen_qscilexerpython_types.QsciLexerPython, fold: bool): void =

  fcQsciLexerPython_setFoldComments(self.h, fold)

proc setFoldQuotes*(self: gen_qscilexerpython_types.QsciLexerPython, fold: bool): void =

  fcQsciLexerPython_setFoldQuotes(self.h, fold)

proc setIndentationWarning*(self: gen_qscilexerpython_types.QsciLexerPython, warn: cint): void =

  fcQsciLexerPython_setIndentationWarning(self.h, cint(warn))

proc tr2*(_: type gen_qscilexerpython_types.QsciLexerPython, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerPython_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type gen_qscilexerpython_types.QsciLexerPython, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerPython_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type gen_qscilexerpython_types.QsciLexerPython, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerPython_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type gen_qscilexerpython_types.QsciLexerPython, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerPython_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc blockStart1*(self: gen_qscilexerpython_types.QsciLexerPython, style: ptr cint): cstring =

  (fcQsciLexerPython_blockStart1(self.h, style))

proc QsciLexerPythonmetaObject*(self: gen_qscilexerpython_types.QsciLexerPython, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fQsciLexerPython_virtualbase_metaObject(self.h))

type QsciLexerPythonmetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qscilexerpython_types.QsciLexerPython, slot: QsciLexerPythonmetaObjectProc) =
  # TODO check subclass
  var tmp = new QsciLexerPythonmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_metaObject(self: ptr cQsciLexerPython, slot: int): pointer {.exportc: "miqt_exec_callback_QsciLexerPython_metaObject ".} =
  var nimfunc = cast[ptr QsciLexerPythonmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QsciLexerPythonmetacast*(self: gen_qscilexerpython_types.QsciLexerPython, param1: cstring): pointer =

  fQsciLexerPython_virtualbase_metacast(self.h, param1)

type QsciLexerPythonmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qscilexerpython_types.QsciLexerPython, slot: QsciLexerPythonmetacastProc) =
  # TODO check subclass
  var tmp = new QsciLexerPythonmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_metacast(self: ptr cQsciLexerPython, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciLexerPython_metacast ".} =
  var nimfunc = cast[ptr QsciLexerPythonmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerPythonmetacall*(self: gen_qscilexerpython_types.QsciLexerPython, param1: cint, param2: cint, param3: pointer): cint =

  fQsciLexerPython_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerPythonmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qscilexerpython_types.QsciLexerPython, slot: QsciLexerPythonmetacallProc) =
  # TODO check subclass
  var tmp = new QsciLexerPythonmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_metacall(self: ptr cQsciLexerPython, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerPython_metacall ".} =
  var nimfunc = cast[ptr QsciLexerPythonmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QsciLexerPythonindentationGuideView*(self: gen_qscilexerpython_types.QsciLexerPython, ): cint =

  fQsciLexerPython_virtualbase_indentationGuideView(self.h)

type QsciLexerPythonindentationGuideViewProc* = proc(): cint
proc onindentationGuideView*(self: gen_qscilexerpython_types.QsciLexerPython, slot: QsciLexerPythonindentationGuideViewProc) =
  # TODO check subclass
  var tmp = new QsciLexerPythonindentationGuideViewProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_indentationGuideView(self: ptr cQsciLexerPython, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPython_indentationGuideView ".} =
  var nimfunc = cast[ptr QsciLexerPythonindentationGuideViewProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPythonsetFoldComments*(self: gen_qscilexerpython_types.QsciLexerPython, fold: bool): void =

  fQsciLexerPython_virtualbase_setFoldComments(self.h, fold)

type QsciLexerPythonsetFoldCommentsProc* = proc(fold: bool): void
proc onsetFoldComments*(self: gen_qscilexerpython_types.QsciLexerPython, slot: QsciLexerPythonsetFoldCommentsProc) =
  # TODO check subclass
  var tmp = new QsciLexerPythonsetFoldCommentsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_setFoldComments(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_setFoldComments(self: ptr cQsciLexerPython, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerPython_setFoldComments ".} =
  var nimfunc = cast[ptr QsciLexerPythonsetFoldCommentsProc](cast[pointer](slot))
  let slotval1 = fold


  nimfunc[](slotval1)
proc QsciLexerPythonsetFoldQuotes*(self: gen_qscilexerpython_types.QsciLexerPython, fold: bool): void =

  fQsciLexerPython_virtualbase_setFoldQuotes(self.h, fold)

type QsciLexerPythonsetFoldQuotesProc* = proc(fold: bool): void
proc onsetFoldQuotes*(self: gen_qscilexerpython_types.QsciLexerPython, slot: QsciLexerPythonsetFoldQuotesProc) =
  # TODO check subclass
  var tmp = new QsciLexerPythonsetFoldQuotesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_setFoldQuotes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_setFoldQuotes(self: ptr cQsciLexerPython, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerPython_setFoldQuotes ".} =
  var nimfunc = cast[ptr QsciLexerPythonsetFoldQuotesProc](cast[pointer](slot))
  let slotval1 = fold


  nimfunc[](slotval1)
proc QsciLexerPythonsetIndentationWarning*(self: gen_qscilexerpython_types.QsciLexerPython, warn: cint): void =

  fQsciLexerPython_virtualbase_setIndentationWarning(self.h, cint(warn))

type QsciLexerPythonsetIndentationWarningProc* = proc(warn: cint): void
proc onsetIndentationWarning*(self: gen_qscilexerpython_types.QsciLexerPython, slot: QsciLexerPythonsetIndentationWarningProc) =
  # TODO check subclass
  var tmp = new QsciLexerPythonsetIndentationWarningProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_setIndentationWarning(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_setIndentationWarning(self: ptr cQsciLexerPython, slot: int, warn: cint): void {.exportc: "miqt_exec_callback_QsciLexerPython_setIndentationWarning ".} =
  var nimfunc = cast[ptr QsciLexerPythonsetIndentationWarningProc](cast[pointer](slot))
  let slotval1 = cint(warn)


  nimfunc[](slotval1)
type QsciLexerPythonlanguageProc* = proc(): cstring
proc onlanguage*(self: gen_qscilexerpython_types.QsciLexerPython, slot: QsciLexerPythonlanguageProc) =
  # TODO check subclass
  var tmp = new QsciLexerPythonlanguageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_language(self: ptr cQsciLexerPython, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerPython_language ".} =
  var nimfunc = cast[ptr QsciLexerPythonlanguageProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPythonlexer*(self: gen_qscilexerpython_types.QsciLexerPython, ): cstring =

  (fQsciLexerPython_virtualbase_lexer(self.h))

type QsciLexerPythonlexerProc* = proc(): cstring
proc onlexer*(self: gen_qscilexerpython_types.QsciLexerPython, slot: QsciLexerPythonlexerProc) =
  # TODO check subclass
  var tmp = new QsciLexerPythonlexerProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_lexer(self: ptr cQsciLexerPython, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerPython_lexer ".} =
  var nimfunc = cast[ptr QsciLexerPythonlexerProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPythonlexerId*(self: gen_qscilexerpython_types.QsciLexerPython, ): cint =

  fQsciLexerPython_virtualbase_lexerId(self.h)

type QsciLexerPythonlexerIdProc* = proc(): cint
proc onlexerId*(self: gen_qscilexerpython_types.QsciLexerPython, slot: QsciLexerPythonlexerIdProc) =
  # TODO check subclass
  var tmp = new QsciLexerPythonlexerIdProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_lexerId(self: ptr cQsciLexerPython, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPython_lexerId ".} =
  var nimfunc = cast[ptr QsciLexerPythonlexerIdProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPythonautoCompletionFillups*(self: gen_qscilexerpython_types.QsciLexerPython, ): cstring =

  (fQsciLexerPython_virtualbase_autoCompletionFillups(self.h))

type QsciLexerPythonautoCompletionFillupsProc* = proc(): cstring
proc onautoCompletionFillups*(self: gen_qscilexerpython_types.QsciLexerPython, slot: QsciLexerPythonautoCompletionFillupsProc) =
  # TODO check subclass
  var tmp = new QsciLexerPythonautoCompletionFillupsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_autoCompletionFillups(self: ptr cQsciLexerPython, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerPython_autoCompletionFillups ".} =
  var nimfunc = cast[ptr QsciLexerPythonautoCompletionFillupsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPythonautoCompletionWordSeparators*(self: gen_qscilexerpython_types.QsciLexerPython, ): seq[string] =

  var v_ma = fQsciLexerPython_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerPythonautoCompletionWordSeparatorsProc* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: gen_qscilexerpython_types.QsciLexerPython, slot: QsciLexerPythonautoCompletionWordSeparatorsProc) =
  # TODO check subclass
  var tmp = new QsciLexerPythonautoCompletionWordSeparatorsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_autoCompletionWordSeparators(self: ptr cQsciLexerPython, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerPython_autoCompletionWordSeparators ".} =
  var nimfunc = cast[ptr QsciLexerPythonautoCompletionWordSeparatorsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QsciLexerPythonblockEnd*(self: gen_qscilexerpython_types.QsciLexerPython, style: ptr cint): cstring =

  (fQsciLexerPython_virtualbase_blockEnd(self.h, style))

type QsciLexerPythonblockEndProc* = proc(style: ptr cint): cstring
proc onblockEnd*(self: gen_qscilexerpython_types.QsciLexerPython, slot: QsciLexerPythonblockEndProc) =
  # TODO check subclass
  var tmp = new QsciLexerPythonblockEndProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_blockEnd(self: ptr cQsciLexerPython, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerPython_blockEnd ".} =
  var nimfunc = cast[ptr QsciLexerPythonblockEndProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerPythonblockLookback*(self: gen_qscilexerpython_types.QsciLexerPython, ): cint =

  fQsciLexerPython_virtualbase_blockLookback(self.h)

type QsciLexerPythonblockLookbackProc* = proc(): cint
proc onblockLookback*(self: gen_qscilexerpython_types.QsciLexerPython, slot: QsciLexerPythonblockLookbackProc) =
  # TODO check subclass
  var tmp = new QsciLexerPythonblockLookbackProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_blockLookback(self: ptr cQsciLexerPython, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPython_blockLookback ".} =
  var nimfunc = cast[ptr QsciLexerPythonblockLookbackProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPythonblockStart*(self: gen_qscilexerpython_types.QsciLexerPython, style: ptr cint): cstring =

  (fQsciLexerPython_virtualbase_blockStart(self.h, style))

type QsciLexerPythonblockStartProc* = proc(style: ptr cint): cstring
proc onblockStart*(self: gen_qscilexerpython_types.QsciLexerPython, slot: QsciLexerPythonblockStartProc) =
  # TODO check subclass
  var tmp = new QsciLexerPythonblockStartProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_blockStart(self: ptr cQsciLexerPython, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerPython_blockStart ".} =
  var nimfunc = cast[ptr QsciLexerPythonblockStartProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerPythonblockStartKeyword*(self: gen_qscilexerpython_types.QsciLexerPython, style: ptr cint): cstring =

  (fQsciLexerPython_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerPythonblockStartKeywordProc* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: gen_qscilexerpython_types.QsciLexerPython, slot: QsciLexerPythonblockStartKeywordProc) =
  # TODO check subclass
  var tmp = new QsciLexerPythonblockStartKeywordProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_blockStartKeyword(self: ptr cQsciLexerPython, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerPython_blockStartKeyword ".} =
  var nimfunc = cast[ptr QsciLexerPythonblockStartKeywordProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerPythonbraceStyle*(self: gen_qscilexerpython_types.QsciLexerPython, ): cint =

  fQsciLexerPython_virtualbase_braceStyle(self.h)

type QsciLexerPythonbraceStyleProc* = proc(): cint
proc onbraceStyle*(self: gen_qscilexerpython_types.QsciLexerPython, slot: QsciLexerPythonbraceStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerPythonbraceStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_braceStyle(self: ptr cQsciLexerPython, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPython_braceStyle ".} =
  var nimfunc = cast[ptr QsciLexerPythonbraceStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPythoncaseSensitive*(self: gen_qscilexerpython_types.QsciLexerPython, ): bool =

  fQsciLexerPython_virtualbase_caseSensitive(self.h)

type QsciLexerPythoncaseSensitiveProc* = proc(): bool
proc oncaseSensitive*(self: gen_qscilexerpython_types.QsciLexerPython, slot: QsciLexerPythoncaseSensitiveProc) =
  # TODO check subclass
  var tmp = new QsciLexerPythoncaseSensitiveProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_caseSensitive(self: ptr cQsciLexerPython, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerPython_caseSensitive ".} =
  var nimfunc = cast[ptr QsciLexerPythoncaseSensitiveProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPythoncolor*(self: gen_qscilexerpython_types.QsciLexerPython, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fQsciLexerPython_virtualbase_color(self.h, style))

type QsciLexerPythoncolorProc* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: gen_qscilexerpython_types.QsciLexerPython, slot: QsciLexerPythoncolorProc) =
  # TODO check subclass
  var tmp = new QsciLexerPythoncolorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_color(self: ptr cQsciLexerPython, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPython_color ".} =
  var nimfunc = cast[ptr QsciLexerPythoncolorProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerPythoneolFill*(self: gen_qscilexerpython_types.QsciLexerPython, style: cint): bool =

  fQsciLexerPython_virtualbase_eolFill(self.h, style)

type QsciLexerPythoneolFillProc* = proc(style: cint): bool
proc oneolFill*(self: gen_qscilexerpython_types.QsciLexerPython, slot: QsciLexerPythoneolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerPythoneolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_eolFill(self: ptr cQsciLexerPython, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerPython_eolFill ".} =
  var nimfunc = cast[ptr QsciLexerPythoneolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerPythonfont*(self: gen_qscilexerpython_types.QsciLexerPython, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fQsciLexerPython_virtualbase_font(self.h, style))

type QsciLexerPythonfontProc* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: gen_qscilexerpython_types.QsciLexerPython, slot: QsciLexerPythonfontProc) =
  # TODO check subclass
  var tmp = new QsciLexerPythonfontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_font(self: ptr cQsciLexerPython, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPython_font ".} =
  var nimfunc = cast[ptr QsciLexerPythonfontProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerPythonkeywords*(self: gen_qscilexerpython_types.QsciLexerPython, set: cint): cstring =

  (fQsciLexerPython_virtualbase_keywords(self.h, set))

type QsciLexerPythonkeywordsProc* = proc(set: cint): cstring
proc onkeywords*(self: gen_qscilexerpython_types.QsciLexerPython, slot: QsciLexerPythonkeywordsProc) =
  # TODO check subclass
  var tmp = new QsciLexerPythonkeywordsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_keywords(self: ptr cQsciLexerPython, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerPython_keywords ".} =
  var nimfunc = cast[ptr QsciLexerPythonkeywordsProc](cast[pointer](slot))
  let slotval1 = set


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerPythondefaultStyle*(self: gen_qscilexerpython_types.QsciLexerPython, ): cint =

  fQsciLexerPython_virtualbase_defaultStyle(self.h)

type QsciLexerPythondefaultStyleProc* = proc(): cint
proc ondefaultStyle*(self: gen_qscilexerpython_types.QsciLexerPython, slot: QsciLexerPythondefaultStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerPythondefaultStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_defaultStyle(self: ptr cQsciLexerPython, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPython_defaultStyle ".} =
  var nimfunc = cast[ptr QsciLexerPythondefaultStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QsciLexerPythondescriptionProc* = proc(style: cint): string
proc ondescription*(self: gen_qscilexerpython_types.QsciLexerPython, slot: QsciLexerPythondescriptionProc) =
  # TODO check subclass
  var tmp = new QsciLexerPythondescriptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_description(self: ptr cQsciLexerPython, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerPython_description ".} =
  var nimfunc = cast[ptr QsciLexerPythondescriptionProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc QsciLexerPythonpaper*(self: gen_qscilexerpython_types.QsciLexerPython, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fQsciLexerPython_virtualbase_paper(self.h, style))

type QsciLexerPythonpaperProc* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: gen_qscilexerpython_types.QsciLexerPython, slot: QsciLexerPythonpaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerPythonpaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_paper(self: ptr cQsciLexerPython, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPython_paper ".} =
  var nimfunc = cast[ptr QsciLexerPythonpaperProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerPythondefaultColorWithStyle*(self: gen_qscilexerpython_types.QsciLexerPython, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fQsciLexerPython_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerPythondefaultColorWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColorWithStyle*(self: gen_qscilexerpython_types.QsciLexerPython, slot: QsciLexerPythondefaultColorWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerPythondefaultColorWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_defaultColorWithStyle(self: ptr cQsciLexerPython, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPython_defaultColorWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerPythondefaultColorWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerPythondefaultEolFill*(self: gen_qscilexerpython_types.QsciLexerPython, style: cint): bool =

  fQsciLexerPython_virtualbase_defaultEolFill(self.h, style)

type QsciLexerPythondefaultEolFillProc* = proc(style: cint): bool
proc ondefaultEolFill*(self: gen_qscilexerpython_types.QsciLexerPython, slot: QsciLexerPythondefaultEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerPythondefaultEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_defaultEolFill(self: ptr cQsciLexerPython, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerPython_defaultEolFill ".} =
  var nimfunc = cast[ptr QsciLexerPythondefaultEolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerPythondefaultFontWithStyle*(self: gen_qscilexerpython_types.QsciLexerPython, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fQsciLexerPython_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerPythondefaultFontWithStyleProc* = proc(style: cint): gen_qfont.QFont
proc ondefaultFontWithStyle*(self: gen_qscilexerpython_types.QsciLexerPython, slot: QsciLexerPythondefaultFontWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerPythondefaultFontWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_defaultFontWithStyle(self: ptr cQsciLexerPython, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPython_defaultFontWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerPythondefaultFontWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerPythondefaultPaperWithStyle*(self: gen_qscilexerpython_types.QsciLexerPython, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fQsciLexerPython_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerPythondefaultPaperWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaperWithStyle*(self: gen_qscilexerpython_types.QsciLexerPython, slot: QsciLexerPythondefaultPaperWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerPythondefaultPaperWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_defaultPaperWithStyle(self: ptr cQsciLexerPython, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPython_defaultPaperWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerPythondefaultPaperWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerPythonsetEditor*(self: gen_qscilexerpython_types.QsciLexerPython, editor: gen_qsciscintilla.QsciScintilla): void =

  fQsciLexerPython_virtualbase_setEditor(self.h, editor.h)

type QsciLexerPythonsetEditorProc* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: gen_qscilexerpython_types.QsciLexerPython, slot: QsciLexerPythonsetEditorProc) =
  # TODO check subclass
  var tmp = new QsciLexerPythonsetEditorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_setEditor(self: ptr cQsciLexerPython, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPython_setEditor ".} =
  var nimfunc = cast[ptr QsciLexerPythonsetEditorProc](cast[pointer](slot))
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](slotval1)
proc QsciLexerPythonrefreshProperties*(self: gen_qscilexerpython_types.QsciLexerPython, ): void =

  fQsciLexerPython_virtualbase_refreshProperties(self.h)

type QsciLexerPythonrefreshPropertiesProc* = proc(): void
proc onrefreshProperties*(self: gen_qscilexerpython_types.QsciLexerPython, slot: QsciLexerPythonrefreshPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerPythonrefreshPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_refreshProperties(self: ptr cQsciLexerPython, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerPython_refreshProperties ".} =
  var nimfunc = cast[ptr QsciLexerPythonrefreshPropertiesProc](cast[pointer](slot))

  nimfunc[]()
proc QsciLexerPythonstyleBitsNeeded*(self: gen_qscilexerpython_types.QsciLexerPython, ): cint =

  fQsciLexerPython_virtualbase_styleBitsNeeded(self.h)

type QsciLexerPythonstyleBitsNeededProc* = proc(): cint
proc onstyleBitsNeeded*(self: gen_qscilexerpython_types.QsciLexerPython, slot: QsciLexerPythonstyleBitsNeededProc) =
  # TODO check subclass
  var tmp = new QsciLexerPythonstyleBitsNeededProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_styleBitsNeeded(self: ptr cQsciLexerPython, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPython_styleBitsNeeded ".} =
  var nimfunc = cast[ptr QsciLexerPythonstyleBitsNeededProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPythonwordCharacters*(self: gen_qscilexerpython_types.QsciLexerPython, ): cstring =

  (fQsciLexerPython_virtualbase_wordCharacters(self.h))

type QsciLexerPythonwordCharactersProc* = proc(): cstring
proc onwordCharacters*(self: gen_qscilexerpython_types.QsciLexerPython, slot: QsciLexerPythonwordCharactersProc) =
  # TODO check subclass
  var tmp = new QsciLexerPythonwordCharactersProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_wordCharacters(self: ptr cQsciLexerPython, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerPython_wordCharacters ".} =
  var nimfunc = cast[ptr QsciLexerPythonwordCharactersProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPythonsetAutoIndentStyle*(self: gen_qscilexerpython_types.QsciLexerPython, autoindentstyle: cint): void =

  fQsciLexerPython_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerPythonsetAutoIndentStyleProc* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: gen_qscilexerpython_types.QsciLexerPython, slot: QsciLexerPythonsetAutoIndentStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerPythonsetAutoIndentStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_setAutoIndentStyle(self: ptr cQsciLexerPython, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerPython_setAutoIndentStyle ".} =
  var nimfunc = cast[ptr QsciLexerPythonsetAutoIndentStyleProc](cast[pointer](slot))
  let slotval1 = autoindentstyle


  nimfunc[](slotval1)
proc QsciLexerPythonsetColor*(self: gen_qscilexerpython_types.QsciLexerPython, c: gen_qcolor.QColor, style: cint): void =

  fQsciLexerPython_virtualbase_setColor(self.h, c.h, style)

type QsciLexerPythonsetColorProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: gen_qscilexerpython_types.QsciLexerPython, slot: QsciLexerPythonsetColorProc) =
  # TODO check subclass
  var tmp = new QsciLexerPythonsetColorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_setColor(self: ptr cQsciLexerPython, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerPython_setColor ".} =
  var nimfunc = cast[ptr QsciLexerPythonsetColorProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerPythonsetEolFill*(self: gen_qscilexerpython_types.QsciLexerPython, eoffill: bool, style: cint): void =

  fQsciLexerPython_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerPythonsetEolFillProc* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: gen_qscilexerpython_types.QsciLexerPython, slot: QsciLexerPythonsetEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerPythonsetEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_setEolFill(self: ptr cQsciLexerPython, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerPython_setEolFill ".} =
  var nimfunc = cast[ptr QsciLexerPythonsetEolFillProc](cast[pointer](slot))
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerPythonsetFont*(self: gen_qscilexerpython_types.QsciLexerPython, f: gen_qfont.QFont, style: cint): void =

  fQsciLexerPython_virtualbase_setFont(self.h, f.h, style)

type QsciLexerPythonsetFontProc* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: gen_qscilexerpython_types.QsciLexerPython, slot: QsciLexerPythonsetFontProc) =
  # TODO check subclass
  var tmp = new QsciLexerPythonsetFontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_setFont(self: ptr cQsciLexerPython, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerPython_setFont ".} =
  var nimfunc = cast[ptr QsciLexerPythonsetFontProc](cast[pointer](slot))
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerPythonsetPaper*(self: gen_qscilexerpython_types.QsciLexerPython, c: gen_qcolor.QColor, style: cint): void =

  fQsciLexerPython_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerPythonsetPaperProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: gen_qscilexerpython_types.QsciLexerPython, slot: QsciLexerPythonsetPaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerPythonsetPaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_setPaper(self: ptr cQsciLexerPython, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerPython_setPaper ".} =
  var nimfunc = cast[ptr QsciLexerPythonsetPaperProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerPythonreadProperties*(self: gen_qscilexerpython_types.QsciLexerPython, qs: gen_qsettings.QSettings, prefix: string): bool =

  fQsciLexerPython_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerPythonreadPropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: gen_qscilexerpython_types.QsciLexerPython, slot: QsciLexerPythonreadPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerPythonreadPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_readProperties(self: ptr cQsciLexerPython, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerPython_readProperties ".} =
  var nimfunc = cast[ptr QsciLexerPythonreadPropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerPythonwriteProperties*(self: gen_qscilexerpython_types.QsciLexerPython, qs: gen_qsettings.QSettings, prefix: string): bool =

  fQsciLexerPython_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerPythonwritePropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: gen_qscilexerpython_types.QsciLexerPython, slot: QsciLexerPythonwritePropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerPythonwritePropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_writeProperties(self: ptr cQsciLexerPython, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerPython_writeProperties ".} =
  var nimfunc = cast[ptr QsciLexerPythonwritePropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerPythonevent*(self: gen_qscilexerpython_types.QsciLexerPython, event: gen_qcoreevent.QEvent): bool =

  fQsciLexerPython_virtualbase_event(self.h, event.h)

type QsciLexerPythoneventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qscilexerpython_types.QsciLexerPython, slot: QsciLexerPythoneventProc) =
  # TODO check subclass
  var tmp = new QsciLexerPythoneventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_event(self: ptr cQsciLexerPython, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerPython_event ".} =
  var nimfunc = cast[ptr QsciLexerPythoneventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerPythoneventFilter*(self: gen_qscilexerpython_types.QsciLexerPython, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =

  fQsciLexerPython_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerPythoneventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qscilexerpython_types.QsciLexerPython, slot: QsciLexerPythoneventFilterProc) =
  # TODO check subclass
  var tmp = new QsciLexerPythoneventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_eventFilter(self: ptr cQsciLexerPython, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerPython_eventFilter ".} =
  var nimfunc = cast[ptr QsciLexerPythoneventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerPythontimerEvent*(self: gen_qscilexerpython_types.QsciLexerPython, event: gen_qcoreevent.QTimerEvent): void =

  fQsciLexerPython_virtualbase_timerEvent(self.h, event.h)

type QsciLexerPythontimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qscilexerpython_types.QsciLexerPython, slot: QsciLexerPythontimerEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerPythontimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_timerEvent(self: ptr cQsciLexerPython, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPython_timerEvent ".} =
  var nimfunc = cast[ptr QsciLexerPythontimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerPythonchildEvent*(self: gen_qscilexerpython_types.QsciLexerPython, event: gen_qcoreevent.QChildEvent): void =

  fQsciLexerPython_virtualbase_childEvent(self.h, event.h)

type QsciLexerPythonchildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qscilexerpython_types.QsciLexerPython, slot: QsciLexerPythonchildEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerPythonchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_childEvent(self: ptr cQsciLexerPython, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPython_childEvent ".} =
  var nimfunc = cast[ptr QsciLexerPythonchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerPythoncustomEvent*(self: gen_qscilexerpython_types.QsciLexerPython, event: gen_qcoreevent.QEvent): void =

  fQsciLexerPython_virtualbase_customEvent(self.h, event.h)

type QsciLexerPythoncustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qscilexerpython_types.QsciLexerPython, slot: QsciLexerPythoncustomEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerPythoncustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_customEvent(self: ptr cQsciLexerPython, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPython_customEvent ".} =
  var nimfunc = cast[ptr QsciLexerPythoncustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerPythonconnectNotify*(self: gen_qscilexerpython_types.QsciLexerPython, signal: gen_qmetaobject.QMetaMethod): void =

  fQsciLexerPython_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerPythonconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qscilexerpython_types.QsciLexerPython, slot: QsciLexerPythonconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerPythonconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_connectNotify(self: ptr cQsciLexerPython, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPython_connectNotify ".} =
  var nimfunc = cast[ptr QsciLexerPythonconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QsciLexerPythondisconnectNotify*(self: gen_qscilexerpython_types.QsciLexerPython, signal: gen_qmetaobject.QMetaMethod): void =

  fQsciLexerPython_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerPythondisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qscilexerpython_types.QsciLexerPython, slot: QsciLexerPythondisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerPythondisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPython_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPython_disconnectNotify(self: ptr cQsciLexerPython, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPython_disconnectNotify ".} =
  var nimfunc = cast[ptr QsciLexerPythondisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qscilexerpython_types.QsciLexerPython): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerPython_staticMetaObject())
proc delete*(self: gen_qscilexerpython_types.QsciLexerPython) =
  fcQsciLexerPython_delete(self.h)
