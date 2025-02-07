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

const cflags = gorge("pkg-config --cflags Qt6PrintSupport")
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
  gen_qcolor_types,
  gen_qcoreevent_types,
  gen_qfont_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qscilexer,
  gen_qsciscintilla_types,
  gen_qsettings_types
export
  gen_qcolor_types,
  gen_qcoreevent_types,
  gen_qfont_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qscilexer,
  gen_qsciscintilla_types,
  gen_qsettings_types

type cQsciLexerPython*{.exportc: "QsciLexerPython", incompleteStruct.} = object

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
type cQsciLexerPythonVTable = object
  destructor*: proc(vtbl: ptr cQsciLexerPythonVTable, self: ptr cQsciLexerPython) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  indentationGuideView*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setFoldComments*: proc(vtbl, self: pointer, fold: bool): void {.cdecl, raises: [], gcsafe.}
  setFoldQuotes*: proc(vtbl, self: pointer, fold: bool): void {.cdecl, raises: [], gcsafe.}
  setIndentationWarning*: proc(vtbl, self: pointer, warn: cint): void {.cdecl, raises: [], gcsafe.}
  language*: proc(vtbl, self: pointer, ): cstring {.cdecl, raises: [], gcsafe.}
  lexer*: proc(vtbl, self: pointer, ): cstring {.cdecl, raises: [], gcsafe.}
  lexerId*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  autoCompletionFillups*: proc(vtbl, self: pointer, ): cstring {.cdecl, raises: [], gcsafe.}
  autoCompletionWordSeparators*: proc(vtbl, self: pointer, ): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  blockEnd*: proc(vtbl, self: pointer, style: ptr cint): cstring {.cdecl, raises: [], gcsafe.}
  blockLookback*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  blockStart*: proc(vtbl, self: pointer, style: ptr cint): cstring {.cdecl, raises: [], gcsafe.}
  blockStartKeyword*: proc(vtbl, self: pointer, style: ptr cint): cstring {.cdecl, raises: [], gcsafe.}
  braceStyle*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  caseSensitive*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  color*: proc(vtbl, self: pointer, style: cint): pointer {.cdecl, raises: [], gcsafe.}
  eolFill*: proc(vtbl, self: pointer, style: cint): bool {.cdecl, raises: [], gcsafe.}
  font*: proc(vtbl, self: pointer, style: cint): pointer {.cdecl, raises: [], gcsafe.}
  keywords*: proc(vtbl, self: pointer, set: cint): cstring {.cdecl, raises: [], gcsafe.}
  defaultStyle*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  description*: proc(vtbl, self: pointer, style: cint): struct_miqt_string {.cdecl, raises: [], gcsafe.}
  paper*: proc(vtbl, self: pointer, style: cint): pointer {.cdecl, raises: [], gcsafe.}
  defaultColor*: proc(vtbl, self: pointer, style: cint): pointer {.cdecl, raises: [], gcsafe.}
  defaultEolFill*: proc(vtbl, self: pointer, style: cint): bool {.cdecl, raises: [], gcsafe.}
  defaultFont*: proc(vtbl, self: pointer, style: cint): pointer {.cdecl, raises: [], gcsafe.}
  defaultPaper*: proc(vtbl, self: pointer, style: cint): pointer {.cdecl, raises: [], gcsafe.}
  setEditor*: proc(vtbl, self: pointer, editor: pointer): void {.cdecl, raises: [], gcsafe.}
  refreshProperties*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  styleBitsNeeded*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  wordCharacters*: proc(vtbl, self: pointer, ): cstring {.cdecl, raises: [], gcsafe.}
  setAutoIndentStyle*: proc(vtbl, self: pointer, autoindentstyle: cint): void {.cdecl, raises: [], gcsafe.}
  setColor*: proc(vtbl, self: pointer, c: pointer, style: cint): void {.cdecl, raises: [], gcsafe.}
  setEolFill*: proc(vtbl, self: pointer, eoffill: bool, style: cint): void {.cdecl, raises: [], gcsafe.}
  setFont*: proc(vtbl, self: pointer, f: pointer, style: cint): void {.cdecl, raises: [], gcsafe.}
  setPaper*: proc(vtbl, self: pointer, c: pointer, style: cint): void {.cdecl, raises: [], gcsafe.}
  readProperties*: proc(vtbl, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl, raises: [], gcsafe.}
  writeProperties*: proc(vtbl, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQsciLexerPython_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QsciLexerPython_virtualbase_metaObject".}
proc fcQsciLexerPython_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerPython_virtualbase_metacast".}
proc fcQsciLexerPython_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerPython_virtualbase_metacall".}
proc fcQsciLexerPython_virtualbase_indentationGuideView(self: pointer, ): cint {.importc: "QsciLexerPython_virtualbase_indentationGuideView".}
proc fcQsciLexerPython_virtualbase_setFoldComments(self: pointer, fold: bool): void {.importc: "QsciLexerPython_virtualbase_setFoldComments".}
proc fcQsciLexerPython_virtualbase_setFoldQuotes(self: pointer, fold: bool): void {.importc: "QsciLexerPython_virtualbase_setFoldQuotes".}
proc fcQsciLexerPython_virtualbase_setIndentationWarning(self: pointer, warn: cint): void {.importc: "QsciLexerPython_virtualbase_setIndentationWarning".}
proc fcQsciLexerPython_virtualbase_lexer(self: pointer, ): cstring {.importc: "QsciLexerPython_virtualbase_lexer".}
proc fcQsciLexerPython_virtualbase_lexerId(self: pointer, ): cint {.importc: "QsciLexerPython_virtualbase_lexerId".}
proc fcQsciLexerPython_virtualbase_autoCompletionFillups(self: pointer, ): cstring {.importc: "QsciLexerPython_virtualbase_autoCompletionFillups".}
proc fcQsciLexerPython_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array {.importc: "QsciLexerPython_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerPython_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerPython_virtualbase_blockEnd".}
proc fcQsciLexerPython_virtualbase_blockLookback(self: pointer, ): cint {.importc: "QsciLexerPython_virtualbase_blockLookback".}
proc fcQsciLexerPython_virtualbase_blockStart(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerPython_virtualbase_blockStart".}
proc fcQsciLexerPython_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerPython_virtualbase_blockStartKeyword".}
proc fcQsciLexerPython_virtualbase_braceStyle(self: pointer, ): cint {.importc: "QsciLexerPython_virtualbase_braceStyle".}
proc fcQsciLexerPython_virtualbase_caseSensitive(self: pointer, ): bool {.importc: "QsciLexerPython_virtualbase_caseSensitive".}
proc fcQsciLexerPython_virtualbase_color(self: pointer, style: cint): pointer {.importc: "QsciLexerPython_virtualbase_color".}
proc fcQsciLexerPython_virtualbase_eolFill(self: pointer, style: cint): bool {.importc: "QsciLexerPython_virtualbase_eolFill".}
proc fcQsciLexerPython_virtualbase_font(self: pointer, style: cint): pointer {.importc: "QsciLexerPython_virtualbase_font".}
proc fcQsciLexerPython_virtualbase_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerPython_virtualbase_keywords".}
proc fcQsciLexerPython_virtualbase_defaultStyle(self: pointer, ): cint {.importc: "QsciLexerPython_virtualbase_defaultStyle".}
proc fcQsciLexerPython_virtualbase_paper(self: pointer, style: cint): pointer {.importc: "QsciLexerPython_virtualbase_paper".}
proc fcQsciLexerPython_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerPython_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerPython_virtualbase_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerPython_virtualbase_defaultEolFill".}
proc fcQsciLexerPython_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerPython_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerPython_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerPython_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerPython_virtualbase_setEditor(self: pointer, editor: pointer): void {.importc: "QsciLexerPython_virtualbase_setEditor".}
proc fcQsciLexerPython_virtualbase_refreshProperties(self: pointer, ): void {.importc: "QsciLexerPython_virtualbase_refreshProperties".}
proc fcQsciLexerPython_virtualbase_styleBitsNeeded(self: pointer, ): cint {.importc: "QsciLexerPython_virtualbase_styleBitsNeeded".}
proc fcQsciLexerPython_virtualbase_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerPython_virtualbase_wordCharacters".}
proc fcQsciLexerPython_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void {.importc: "QsciLexerPython_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerPython_virtualbase_setColor(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerPython_virtualbase_setColor".}
proc fcQsciLexerPython_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void {.importc: "QsciLexerPython_virtualbase_setEolFill".}
proc fcQsciLexerPython_virtualbase_setFont(self: pointer, f: pointer, style: cint): void {.importc: "QsciLexerPython_virtualbase_setFont".}
proc fcQsciLexerPython_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerPython_virtualbase_setPaper".}
proc fcQsciLexerPython_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerPython_virtualbase_readProperties".}
proc fcQsciLexerPython_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerPython_virtualbase_writeProperties".}
proc fcQsciLexerPython_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QsciLexerPython_virtualbase_event".}
proc fcQsciLexerPython_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QsciLexerPython_virtualbase_eventFilter".}
proc fcQsciLexerPython_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QsciLexerPython_virtualbase_timerEvent".}
proc fcQsciLexerPython_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QsciLexerPython_virtualbase_childEvent".}
proc fcQsciLexerPython_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QsciLexerPython_virtualbase_customEvent".}
proc fcQsciLexerPython_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerPython_virtualbase_connectNotify".}
proc fcQsciLexerPython_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerPython_virtualbase_disconnectNotify".}
proc fcQsciLexerPython_protectedbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerPython_protectedbase_readProperties".}
proc fcQsciLexerPython_protectedbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerPython_protectedbase_writeProperties".}
proc fcQsciLexerPython_protectedbase_sender(self: pointer, ): pointer {.importc: "QsciLexerPython_protectedbase_sender".}
proc fcQsciLexerPython_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QsciLexerPython_protectedbase_senderSignalIndex".}
proc fcQsciLexerPython_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QsciLexerPython_protectedbase_receivers".}
proc fcQsciLexerPython_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QsciLexerPython_protectedbase_isSignalConnected".}
proc fcQsciLexerPython_new(vtbl: pointer, ): ptr cQsciLexerPython {.importc: "QsciLexerPython_new".}
proc fcQsciLexerPython_new2(vtbl: pointer, parent: pointer): ptr cQsciLexerPython {.importc: "QsciLexerPython_new2".}
proc fcQsciLexerPython_staticMetaObject(): pointer {.importc: "QsciLexerPython_staticMetaObject".}
proc fcQsciLexerPython_delete(self: pointer) {.importc: "QsciLexerPython_delete".}

proc metaObject*(self: gen_qscilexerpython_types.QsciLexerPython, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerPython_metaObject(self.h))

proc metacast*(self: gen_qscilexerpython_types.QsciLexerPython, param1: cstring): pointer =
  fcQsciLexerPython_metacast(self.h, param1)

proc metacall*(self: gen_qscilexerpython_types.QsciLexerPython, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerPython_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexerpython_types.QsciLexerPython, s: cstring): string =
  let v_ms = fcQsciLexerPython_tr(s)
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

proc defaultColor*(self: gen_qscilexerpython_types.QsciLexerPython, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerPython_defaultColor(self.h, style))

proc defaultEolFill*(self: gen_qscilexerpython_types.QsciLexerPython, style: cint): bool =
  fcQsciLexerPython_defaultEolFill(self.h, style)

proc defaultFont*(self: gen_qscilexerpython_types.QsciLexerPython, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerPython_defaultFont(self.h, style))

proc defaultPaper*(self: gen_qscilexerpython_types.QsciLexerPython, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerPython_defaultPaper(self.h, style))

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

proc tr*(_: type gen_qscilexerpython_types.QsciLexerPython, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerPython_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexerpython_types.QsciLexerPython, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerPython_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc blockStart*(self: gen_qscilexerpython_types.QsciLexerPython, style: ptr cint): cstring =
  (fcQsciLexerPython_blockStart1(self.h, style))

type QsciLexerPythonmetaObjectProc* = proc(self: QsciLexerPython): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QsciLexerPythonmetacastProc* = proc(self: QsciLexerPython, param1: cstring): pointer {.raises: [], gcsafe.}
type QsciLexerPythonmetacallProc* = proc(self: QsciLexerPython, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QsciLexerPythonindentationGuideViewProc* = proc(self: QsciLexerPython): cint {.raises: [], gcsafe.}
type QsciLexerPythonsetFoldCommentsProc* = proc(self: QsciLexerPython, fold: bool): void {.raises: [], gcsafe.}
type QsciLexerPythonsetFoldQuotesProc* = proc(self: QsciLexerPython, fold: bool): void {.raises: [], gcsafe.}
type QsciLexerPythonsetIndentationWarningProc* = proc(self: QsciLexerPython, warn: cint): void {.raises: [], gcsafe.}
type QsciLexerPythonlanguageProc* = proc(self: QsciLexerPython): cstring {.raises: [], gcsafe.}
type QsciLexerPythonlexerProc* = proc(self: QsciLexerPython): cstring {.raises: [], gcsafe.}
type QsciLexerPythonlexerIdProc* = proc(self: QsciLexerPython): cint {.raises: [], gcsafe.}
type QsciLexerPythonautoCompletionFillupsProc* = proc(self: QsciLexerPython): cstring {.raises: [], gcsafe.}
type QsciLexerPythonautoCompletionWordSeparatorsProc* = proc(self: QsciLexerPython): seq[string] {.raises: [], gcsafe.}
type QsciLexerPythonblockEndProc* = proc(self: QsciLexerPython, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerPythonblockLookbackProc* = proc(self: QsciLexerPython): cint {.raises: [], gcsafe.}
type QsciLexerPythonblockStartProc* = proc(self: QsciLexerPython, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerPythonblockStartKeywordProc* = proc(self: QsciLexerPython, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerPythonbraceStyleProc* = proc(self: QsciLexerPython): cint {.raises: [], gcsafe.}
type QsciLexerPythoncaseSensitiveProc* = proc(self: QsciLexerPython): bool {.raises: [], gcsafe.}
type QsciLexerPythoncolorProc* = proc(self: QsciLexerPython, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerPythoneolFillProc* = proc(self: QsciLexerPython, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerPythonfontProc* = proc(self: QsciLexerPython, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerPythonkeywordsProc* = proc(self: QsciLexerPython, set: cint): cstring {.raises: [], gcsafe.}
type QsciLexerPythondefaultStyleProc* = proc(self: QsciLexerPython): cint {.raises: [], gcsafe.}
type QsciLexerPythondescriptionProc* = proc(self: QsciLexerPython, style: cint): string {.raises: [], gcsafe.}
type QsciLexerPythonpaperProc* = proc(self: QsciLexerPython, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerPythondefaultColorProc* = proc(self: QsciLexerPython, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerPythondefaultEolFillProc* = proc(self: QsciLexerPython, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerPythondefaultFontProc* = proc(self: QsciLexerPython, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerPythondefaultPaperProc* = proc(self: QsciLexerPython, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerPythonsetEditorProc* = proc(self: QsciLexerPython, editor: gen_qsciscintilla_types.QsciScintilla): void {.raises: [], gcsafe.}
type QsciLexerPythonrefreshPropertiesProc* = proc(self: QsciLexerPython): void {.raises: [], gcsafe.}
type QsciLexerPythonstyleBitsNeededProc* = proc(self: QsciLexerPython): cint {.raises: [], gcsafe.}
type QsciLexerPythonwordCharactersProc* = proc(self: QsciLexerPython): cstring {.raises: [], gcsafe.}
type QsciLexerPythonsetAutoIndentStyleProc* = proc(self: QsciLexerPython, autoindentstyle: cint): void {.raises: [], gcsafe.}
type QsciLexerPythonsetColorProc* = proc(self: QsciLexerPython, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerPythonsetEolFillProc* = proc(self: QsciLexerPython, eoffill: bool, style: cint): void {.raises: [], gcsafe.}
type QsciLexerPythonsetFontProc* = proc(self: QsciLexerPython, f: gen_qfont_types.QFont, style: cint): void {.raises: [], gcsafe.}
type QsciLexerPythonsetPaperProc* = proc(self: QsciLexerPython, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerPythonreadPropertiesProc* = proc(self: QsciLexerPython, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerPythonwritePropertiesProc* = proc(self: QsciLexerPython, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerPythoneventProc* = proc(self: QsciLexerPython, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerPythoneventFilterProc* = proc(self: QsciLexerPython, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerPythontimerEventProc* = proc(self: QsciLexerPython, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QsciLexerPythonchildEventProc* = proc(self: QsciLexerPython, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QsciLexerPythoncustomEventProc* = proc(self: QsciLexerPython, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QsciLexerPythonconnectNotifyProc* = proc(self: QsciLexerPython, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerPythondisconnectNotifyProc* = proc(self: QsciLexerPython, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerPythonVTable* = object
  vtbl: cQsciLexerPythonVTable
  metaObject*: QsciLexerPythonmetaObjectProc
  metacast*: QsciLexerPythonmetacastProc
  metacall*: QsciLexerPythonmetacallProc
  indentationGuideView*: QsciLexerPythonindentationGuideViewProc
  setFoldComments*: QsciLexerPythonsetFoldCommentsProc
  setFoldQuotes*: QsciLexerPythonsetFoldQuotesProc
  setIndentationWarning*: QsciLexerPythonsetIndentationWarningProc
  language*: QsciLexerPythonlanguageProc
  lexer*: QsciLexerPythonlexerProc
  lexerId*: QsciLexerPythonlexerIdProc
  autoCompletionFillups*: QsciLexerPythonautoCompletionFillupsProc
  autoCompletionWordSeparators*: QsciLexerPythonautoCompletionWordSeparatorsProc
  blockEnd*: QsciLexerPythonblockEndProc
  blockLookback*: QsciLexerPythonblockLookbackProc
  blockStart*: QsciLexerPythonblockStartProc
  blockStartKeyword*: QsciLexerPythonblockStartKeywordProc
  braceStyle*: QsciLexerPythonbraceStyleProc
  caseSensitive*: QsciLexerPythoncaseSensitiveProc
  color*: QsciLexerPythoncolorProc
  eolFill*: QsciLexerPythoneolFillProc
  font*: QsciLexerPythonfontProc
  keywords*: QsciLexerPythonkeywordsProc
  defaultStyle*: QsciLexerPythondefaultStyleProc
  description*: QsciLexerPythondescriptionProc
  paper*: QsciLexerPythonpaperProc
  defaultColor*: QsciLexerPythondefaultColorProc
  defaultEolFill*: QsciLexerPythondefaultEolFillProc
  defaultFont*: QsciLexerPythondefaultFontProc
  defaultPaper*: QsciLexerPythondefaultPaperProc
  setEditor*: QsciLexerPythonsetEditorProc
  refreshProperties*: QsciLexerPythonrefreshPropertiesProc
  styleBitsNeeded*: QsciLexerPythonstyleBitsNeededProc
  wordCharacters*: QsciLexerPythonwordCharactersProc
  setAutoIndentStyle*: QsciLexerPythonsetAutoIndentStyleProc
  setColor*: QsciLexerPythonsetColorProc
  setEolFill*: QsciLexerPythonsetEolFillProc
  setFont*: QsciLexerPythonsetFontProc
  setPaper*: QsciLexerPythonsetPaperProc
  readProperties*: QsciLexerPythonreadPropertiesProc
  writeProperties*: QsciLexerPythonwritePropertiesProc
  event*: QsciLexerPythoneventProc
  eventFilter*: QsciLexerPythoneventFilterProc
  timerEvent*: QsciLexerPythontimerEventProc
  childEvent*: QsciLexerPythonchildEventProc
  customEvent*: QsciLexerPythoncustomEventProc
  connectNotify*: QsciLexerPythonconnectNotifyProc
  disconnectNotify*: QsciLexerPythondisconnectNotifyProc
proc QsciLexerPythonmetaObject*(self: gen_qscilexerpython_types.QsciLexerPython, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerPython_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQsciLexerPython_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPythonVTable](vtbl)
  let self = QsciLexerPython(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QsciLexerPythonmetacast*(self: gen_qscilexerpython_types.QsciLexerPython, param1: cstring): pointer =
  fcQsciLexerPython_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQsciLexerPython_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPythonVTable](vtbl)
  let self = QsciLexerPython(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QsciLexerPythonmetacall*(self: gen_qscilexerpython_types.QsciLexerPython, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerPython_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQsciLexerPython_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPythonVTable](vtbl)
  let self = QsciLexerPython(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QsciLexerPythonindentationGuideView*(self: gen_qscilexerpython_types.QsciLexerPython, ): cint =
  fcQsciLexerPython_virtualbase_indentationGuideView(self.h)

proc miqt_exec_callback_cQsciLexerPython_indentationGuideView(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPythonVTable](vtbl)
  let self = QsciLexerPython(h: self)
  let virtualReturn = vtbl[].indentationGuideView(self)
  virtualReturn

proc QsciLexerPythonsetFoldComments*(self: gen_qscilexerpython_types.QsciLexerPython, fold: bool): void =
  fcQsciLexerPython_virtualbase_setFoldComments(self.h, fold)

proc miqt_exec_callback_cQsciLexerPython_setFoldComments(vtbl: pointer, self: pointer, fold: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPythonVTable](vtbl)
  let self = QsciLexerPython(h: self)
  let slotval1 = fold
  vtbl[].setFoldComments(self, slotval1)

proc QsciLexerPythonsetFoldQuotes*(self: gen_qscilexerpython_types.QsciLexerPython, fold: bool): void =
  fcQsciLexerPython_virtualbase_setFoldQuotes(self.h, fold)

proc miqt_exec_callback_cQsciLexerPython_setFoldQuotes(vtbl: pointer, self: pointer, fold: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPythonVTable](vtbl)
  let self = QsciLexerPython(h: self)
  let slotval1 = fold
  vtbl[].setFoldQuotes(self, slotval1)

proc QsciLexerPythonsetIndentationWarning*(self: gen_qscilexerpython_types.QsciLexerPython, warn: cint): void =
  fcQsciLexerPython_virtualbase_setIndentationWarning(self.h, cint(warn))

proc miqt_exec_callback_cQsciLexerPython_setIndentationWarning(vtbl: pointer, self: pointer, warn: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPythonVTable](vtbl)
  let self = QsciLexerPython(h: self)
  let slotval1 = cint(warn)
  vtbl[].setIndentationWarning(self, slotval1)

proc miqt_exec_callback_cQsciLexerPython_language(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPythonVTable](vtbl)
  let self = QsciLexerPython(h: self)
  let virtualReturn = vtbl[].language(self)
  virtualReturn

proc QsciLexerPythonlexer*(self: gen_qscilexerpython_types.QsciLexerPython, ): cstring =
  (fcQsciLexerPython_virtualbase_lexer(self.h))

proc miqt_exec_callback_cQsciLexerPython_lexer(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPythonVTable](vtbl)
  let self = QsciLexerPython(h: self)
  let virtualReturn = vtbl[].lexer(self)
  virtualReturn

proc QsciLexerPythonlexerId*(self: gen_qscilexerpython_types.QsciLexerPython, ): cint =
  fcQsciLexerPython_virtualbase_lexerId(self.h)

proc miqt_exec_callback_cQsciLexerPython_lexerId(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPythonVTable](vtbl)
  let self = QsciLexerPython(h: self)
  let virtualReturn = vtbl[].lexerId(self)
  virtualReturn

proc QsciLexerPythonautoCompletionFillups*(self: gen_qscilexerpython_types.QsciLexerPython, ): cstring =
  (fcQsciLexerPython_virtualbase_autoCompletionFillups(self.h))

proc miqt_exec_callback_cQsciLexerPython_autoCompletionFillups(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPythonVTable](vtbl)
  let self = QsciLexerPython(h: self)
  let virtualReturn = vtbl[].autoCompletionFillups(self)
  virtualReturn

proc QsciLexerPythonautoCompletionWordSeparators*(self: gen_qscilexerpython_types.QsciLexerPython, ): seq[string] =
  var v_ma = fcQsciLexerPython_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc miqt_exec_callback_cQsciLexerPython_autoCompletionWordSeparators(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPythonVTable](vtbl)
  let self = QsciLexerPython(h: self)
  let virtualReturn = vtbl[].autoCompletionWordSeparators(self)
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QsciLexerPythonblockEnd*(self: gen_qscilexerpython_types.QsciLexerPython, style: ptr cint): cstring =
  (fcQsciLexerPython_virtualbase_blockEnd(self.h, style))

proc miqt_exec_callback_cQsciLexerPython_blockEnd(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPythonVTable](vtbl)
  let self = QsciLexerPython(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockEnd(self, slotval1)
  virtualReturn

proc QsciLexerPythonblockLookback*(self: gen_qscilexerpython_types.QsciLexerPython, ): cint =
  fcQsciLexerPython_virtualbase_blockLookback(self.h)

proc miqt_exec_callback_cQsciLexerPython_blockLookback(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPythonVTable](vtbl)
  let self = QsciLexerPython(h: self)
  let virtualReturn = vtbl[].blockLookback(self)
  virtualReturn

proc QsciLexerPythonblockStart*(self: gen_qscilexerpython_types.QsciLexerPython, style: ptr cint): cstring =
  (fcQsciLexerPython_virtualbase_blockStart(self.h, style))

proc miqt_exec_callback_cQsciLexerPython_blockStart(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPythonVTable](vtbl)
  let self = QsciLexerPython(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStart(self, slotval1)
  virtualReturn

proc QsciLexerPythonblockStartKeyword*(self: gen_qscilexerpython_types.QsciLexerPython, style: ptr cint): cstring =
  (fcQsciLexerPython_virtualbase_blockStartKeyword(self.h, style))

proc miqt_exec_callback_cQsciLexerPython_blockStartKeyword(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPythonVTable](vtbl)
  let self = QsciLexerPython(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStartKeyword(self, slotval1)
  virtualReturn

proc QsciLexerPythonbraceStyle*(self: gen_qscilexerpython_types.QsciLexerPython, ): cint =
  fcQsciLexerPython_virtualbase_braceStyle(self.h)

proc miqt_exec_callback_cQsciLexerPython_braceStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPythonVTable](vtbl)
  let self = QsciLexerPython(h: self)
  let virtualReturn = vtbl[].braceStyle(self)
  virtualReturn

proc QsciLexerPythoncaseSensitive*(self: gen_qscilexerpython_types.QsciLexerPython, ): bool =
  fcQsciLexerPython_virtualbase_caseSensitive(self.h)

proc miqt_exec_callback_cQsciLexerPython_caseSensitive(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPythonVTable](vtbl)
  let self = QsciLexerPython(h: self)
  let virtualReturn = vtbl[].caseSensitive(self)
  virtualReturn

proc QsciLexerPythoncolor*(self: gen_qscilexerpython_types.QsciLexerPython, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerPython_virtualbase_color(self.h, style))

proc miqt_exec_callback_cQsciLexerPython_color(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPythonVTable](vtbl)
  let self = QsciLexerPython(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].color(self, slotval1)
  virtualReturn.h

proc QsciLexerPythoneolFill*(self: gen_qscilexerpython_types.QsciLexerPython, style: cint): bool =
  fcQsciLexerPython_virtualbase_eolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerPython_eolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPythonVTable](vtbl)
  let self = QsciLexerPython(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].eolFill(self, slotval1)
  virtualReturn

proc QsciLexerPythonfont*(self: gen_qscilexerpython_types.QsciLexerPython, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerPython_virtualbase_font(self.h, style))

proc miqt_exec_callback_cQsciLexerPython_font(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPythonVTable](vtbl)
  let self = QsciLexerPython(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].font(self, slotval1)
  virtualReturn.h

proc QsciLexerPythonkeywords*(self: gen_qscilexerpython_types.QsciLexerPython, set: cint): cstring =
  (fcQsciLexerPython_virtualbase_keywords(self.h, set))

proc miqt_exec_callback_cQsciLexerPython_keywords(vtbl: pointer, self: pointer, set: cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPythonVTable](vtbl)
  let self = QsciLexerPython(h: self)
  let slotval1 = set
  let virtualReturn = vtbl[].keywords(self, slotval1)
  virtualReturn

proc QsciLexerPythondefaultStyle*(self: gen_qscilexerpython_types.QsciLexerPython, ): cint =
  fcQsciLexerPython_virtualbase_defaultStyle(self.h)

proc miqt_exec_callback_cQsciLexerPython_defaultStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPythonVTable](vtbl)
  let self = QsciLexerPython(h: self)
  let virtualReturn = vtbl[].defaultStyle(self)
  virtualReturn

proc miqt_exec_callback_cQsciLexerPython_description(vtbl: pointer, self: pointer, style: cint): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPythonVTable](vtbl)
  let self = QsciLexerPython(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].description(self, slotval1)
  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))

proc QsciLexerPythonpaper*(self: gen_qscilexerpython_types.QsciLexerPython, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerPython_virtualbase_paper(self.h, style))

proc miqt_exec_callback_cQsciLexerPython_paper(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPythonVTable](vtbl)
  let self = QsciLexerPython(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].paper(self, slotval1)
  virtualReturn.h

proc QsciLexerPythondefaultColor*(self: gen_qscilexerpython_types.QsciLexerPython, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerPython_virtualbase_defaultColorWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerPython_defaultColorWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPythonVTable](vtbl)
  let self = QsciLexerPython(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultColor(self, slotval1)
  virtualReturn.h

proc QsciLexerPythondefaultEolFill*(self: gen_qscilexerpython_types.QsciLexerPython, style: cint): bool =
  fcQsciLexerPython_virtualbase_defaultEolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerPython_defaultEolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPythonVTable](vtbl)
  let self = QsciLexerPython(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultEolFill(self, slotval1)
  virtualReturn

proc QsciLexerPythondefaultFont*(self: gen_qscilexerpython_types.QsciLexerPython, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerPython_virtualbase_defaultFontWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerPython_defaultFontWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPythonVTable](vtbl)
  let self = QsciLexerPython(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultFont(self, slotval1)
  virtualReturn.h

proc QsciLexerPythondefaultPaper*(self: gen_qscilexerpython_types.QsciLexerPython, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerPython_virtualbase_defaultPaperWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerPython_defaultPaperWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPythonVTable](vtbl)
  let self = QsciLexerPython(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultPaper(self, slotval1)
  virtualReturn.h

proc QsciLexerPythonsetEditor*(self: gen_qscilexerpython_types.QsciLexerPython, editor: gen_qsciscintilla_types.QsciScintilla): void =
  fcQsciLexerPython_virtualbase_setEditor(self.h, editor.h)

proc miqt_exec_callback_cQsciLexerPython_setEditor(vtbl: pointer, self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPythonVTable](vtbl)
  let self = QsciLexerPython(h: self)
  let slotval1 = gen_qsciscintilla_types.QsciScintilla(h: editor)
  vtbl[].setEditor(self, slotval1)

proc QsciLexerPythonrefreshProperties*(self: gen_qscilexerpython_types.QsciLexerPython, ): void =
  fcQsciLexerPython_virtualbase_refreshProperties(self.h)

proc miqt_exec_callback_cQsciLexerPython_refreshProperties(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPythonVTable](vtbl)
  let self = QsciLexerPython(h: self)
  vtbl[].refreshProperties(self)

proc QsciLexerPythonstyleBitsNeeded*(self: gen_qscilexerpython_types.QsciLexerPython, ): cint =
  fcQsciLexerPython_virtualbase_styleBitsNeeded(self.h)

proc miqt_exec_callback_cQsciLexerPython_styleBitsNeeded(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPythonVTable](vtbl)
  let self = QsciLexerPython(h: self)
  let virtualReturn = vtbl[].styleBitsNeeded(self)
  virtualReturn

proc QsciLexerPythonwordCharacters*(self: gen_qscilexerpython_types.QsciLexerPython, ): cstring =
  (fcQsciLexerPython_virtualbase_wordCharacters(self.h))

proc miqt_exec_callback_cQsciLexerPython_wordCharacters(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPythonVTable](vtbl)
  let self = QsciLexerPython(h: self)
  let virtualReturn = vtbl[].wordCharacters(self)
  virtualReturn

proc QsciLexerPythonsetAutoIndentStyle*(self: gen_qscilexerpython_types.QsciLexerPython, autoindentstyle: cint): void =
  fcQsciLexerPython_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

proc miqt_exec_callback_cQsciLexerPython_setAutoIndentStyle(vtbl: pointer, self: pointer, autoindentstyle: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPythonVTable](vtbl)
  let self = QsciLexerPython(h: self)
  let slotval1 = autoindentstyle
  vtbl[].setAutoIndentStyle(self, slotval1)

proc QsciLexerPythonsetColor*(self: gen_qscilexerpython_types.QsciLexerPython, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerPython_virtualbase_setColor(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerPython_setColor(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPythonVTable](vtbl)
  let self = QsciLexerPython(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setColor(self, slotval1, slotval2)

proc QsciLexerPythonsetEolFill*(self: gen_qscilexerpython_types.QsciLexerPython, eoffill: bool, style: cint): void =
  fcQsciLexerPython_virtualbase_setEolFill(self.h, eoffill, style)

proc miqt_exec_callback_cQsciLexerPython_setEolFill(vtbl: pointer, self: pointer, eoffill: bool, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPythonVTable](vtbl)
  let self = QsciLexerPython(h: self)
  let slotval1 = eoffill
  let slotval2 = style
  vtbl[].setEolFill(self, slotval1, slotval2)

proc QsciLexerPythonsetFont*(self: gen_qscilexerpython_types.QsciLexerPython, f: gen_qfont_types.QFont, style: cint): void =
  fcQsciLexerPython_virtualbase_setFont(self.h, f.h, style)

proc miqt_exec_callback_cQsciLexerPython_setFont(vtbl: pointer, self: pointer, f: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPythonVTable](vtbl)
  let self = QsciLexerPython(h: self)
  let slotval1 = gen_qfont_types.QFont(h: f)
  let slotval2 = style
  vtbl[].setFont(self, slotval1, slotval2)

proc QsciLexerPythonsetPaper*(self: gen_qscilexerpython_types.QsciLexerPython, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerPython_virtualbase_setPaper(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerPython_setPaper(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPythonVTable](vtbl)
  let self = QsciLexerPython(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setPaper(self, slotval1, slotval2)

proc QsciLexerPythonreadProperties*(self: gen_qscilexerpython_types.QsciLexerPython, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerPython_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerPython_readProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPythonVTable](vtbl)
  let self = QsciLexerPython(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].readProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerPythonwriteProperties*(self: gen_qscilexerpython_types.QsciLexerPython, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerPython_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerPython_writeProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPythonVTable](vtbl)
  let self = QsciLexerPython(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].writeProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerPythonevent*(self: gen_qscilexerpython_types.QsciLexerPython, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerPython_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQsciLexerPython_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPythonVTable](vtbl)
  let self = QsciLexerPython(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QsciLexerPythoneventFilter*(self: gen_qscilexerpython_types.QsciLexerPython, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerPython_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQsciLexerPython_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPythonVTable](vtbl)
  let self = QsciLexerPython(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerPythontimerEvent*(self: gen_qscilexerpython_types.QsciLexerPython, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQsciLexerPython_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerPython_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPythonVTable](vtbl)
  let self = QsciLexerPython(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QsciLexerPythonchildEvent*(self: gen_qscilexerpython_types.QsciLexerPython, event: gen_qcoreevent_types.QChildEvent): void =
  fcQsciLexerPython_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerPython_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPythonVTable](vtbl)
  let self = QsciLexerPython(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QsciLexerPythoncustomEvent*(self: gen_qscilexerpython_types.QsciLexerPython, event: gen_qcoreevent_types.QEvent): void =
  fcQsciLexerPython_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerPython_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPythonVTable](vtbl)
  let self = QsciLexerPython(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QsciLexerPythonconnectNotify*(self: gen_qscilexerpython_types.QsciLexerPython, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerPython_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerPython_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPythonVTable](vtbl)
  let self = QsciLexerPython(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QsciLexerPythondisconnectNotify*(self: gen_qscilexerpython_types.QsciLexerPython, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerPython_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerPython_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPythonVTable](vtbl)
  let self = QsciLexerPython(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc readProperties*(self: gen_qscilexerpython_types.QsciLexerPython, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerPython_protectedbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc writeProperties*(self: gen_qscilexerpython_types.QsciLexerPython, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerPython_protectedbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc sender*(self: gen_qscilexerpython_types.QsciLexerPython, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQsciLexerPython_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qscilexerpython_types.QsciLexerPython, ): cint =
  fcQsciLexerPython_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qscilexerpython_types.QsciLexerPython, signal: cstring): cint =
  fcQsciLexerPython_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qscilexerpython_types.QsciLexerPython, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQsciLexerPython_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qscilexerpython_types.QsciLexerPython,
    vtbl: ref QsciLexerPythonVTable = nil): gen_qscilexerpython_types.QsciLexerPython =
  let vtbl = if vtbl == nil: new QsciLexerPythonVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerPythonVTable, _: ptr cQsciLexerPython) {.cdecl.} =
    let vtbl = cast[ref QsciLexerPythonVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerPython_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerPython_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerPython_metacall
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerPython_indentationGuideView
  if not isNil(vtbl.setFoldComments):
    vtbl[].vtbl.setFoldComments = miqt_exec_callback_cQsciLexerPython_setFoldComments
  if not isNil(vtbl.setFoldQuotes):
    vtbl[].vtbl.setFoldQuotes = miqt_exec_callback_cQsciLexerPython_setFoldQuotes
  if not isNil(vtbl.setIndentationWarning):
    vtbl[].vtbl.setIndentationWarning = miqt_exec_callback_cQsciLexerPython_setIndentationWarning
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerPython_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerPython_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerPython_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerPython_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerPython_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerPython_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerPython_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerPython_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerPython_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerPython_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerPython_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerPython_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerPython_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerPython_font
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerPython_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerPython_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerPython_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerPython_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerPython_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerPython_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerPython_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerPython_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerPython_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerPython_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerPython_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerPython_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerPython_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerPython_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerPython_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerPython_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerPython_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerPython_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerPython_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerPython_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerPython_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerPython_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerPython_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerPython_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerPython_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerPython_disconnectNotify
  gen_qscilexerpython_types.QsciLexerPython(h: fcQsciLexerPython_new(addr(vtbl[]), ))

proc create*(T: type gen_qscilexerpython_types.QsciLexerPython,
    parent: gen_qobject_types.QObject,
    vtbl: ref QsciLexerPythonVTable = nil): gen_qscilexerpython_types.QsciLexerPython =
  let vtbl = if vtbl == nil: new QsciLexerPythonVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerPythonVTable, _: ptr cQsciLexerPython) {.cdecl.} =
    let vtbl = cast[ref QsciLexerPythonVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerPython_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerPython_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerPython_metacall
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerPython_indentationGuideView
  if not isNil(vtbl.setFoldComments):
    vtbl[].vtbl.setFoldComments = miqt_exec_callback_cQsciLexerPython_setFoldComments
  if not isNil(vtbl.setFoldQuotes):
    vtbl[].vtbl.setFoldQuotes = miqt_exec_callback_cQsciLexerPython_setFoldQuotes
  if not isNil(vtbl.setIndentationWarning):
    vtbl[].vtbl.setIndentationWarning = miqt_exec_callback_cQsciLexerPython_setIndentationWarning
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerPython_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerPython_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerPython_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerPython_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerPython_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerPython_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerPython_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerPython_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerPython_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerPython_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerPython_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerPython_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerPython_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerPython_font
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerPython_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerPython_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerPython_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerPython_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerPython_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerPython_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerPython_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerPython_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerPython_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerPython_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerPython_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerPython_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerPython_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerPython_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerPython_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerPython_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerPython_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerPython_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerPython_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerPython_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerPython_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerPython_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerPython_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerPython_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerPython_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerPython_disconnectNotify
  gen_qscilexerpython_types.QsciLexerPython(h: fcQsciLexerPython_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qscilexerpython_types.QsciLexerPython): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerPython_staticMetaObject())
proc delete*(self: gen_qscilexerpython_types.QsciLexerPython) =
  fcQsciLexerPython_delete(self.h)
