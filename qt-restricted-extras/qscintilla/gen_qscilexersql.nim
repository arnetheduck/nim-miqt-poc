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
{.compile("gen_qscilexersql.cpp", cflags).}


type QsciLexerSQLEnumEnum* = distinct cint
template Default*(_: type QsciLexerSQLEnumEnum): untyped = 0
template Comment*(_: type QsciLexerSQLEnumEnum): untyped = 1
template CommentLine*(_: type QsciLexerSQLEnumEnum): untyped = 2
template CommentDoc*(_: type QsciLexerSQLEnumEnum): untyped = 3
template Number*(_: type QsciLexerSQLEnumEnum): untyped = 4
template Keyword*(_: type QsciLexerSQLEnumEnum): untyped = 5
template DoubleQuotedString*(_: type QsciLexerSQLEnumEnum): untyped = 6
template SingleQuotedString*(_: type QsciLexerSQLEnumEnum): untyped = 7
template PlusKeyword*(_: type QsciLexerSQLEnumEnum): untyped = 8
template PlusPrompt*(_: type QsciLexerSQLEnumEnum): untyped = 9
template Operator*(_: type QsciLexerSQLEnumEnum): untyped = 10
template Identifier*(_: type QsciLexerSQLEnumEnum): untyped = 11
template PlusComment*(_: type QsciLexerSQLEnumEnum): untyped = 13
template CommentLineHash*(_: type QsciLexerSQLEnumEnum): untyped = 15
template CommentDocKeyword*(_: type QsciLexerSQLEnumEnum): untyped = 17
template CommentDocKeywordError*(_: type QsciLexerSQLEnumEnum): untyped = 18
template KeywordSet5*(_: type QsciLexerSQLEnumEnum): untyped = 19
template KeywordSet6*(_: type QsciLexerSQLEnumEnum): untyped = 20
template KeywordSet7*(_: type QsciLexerSQLEnumEnum): untyped = 21
template KeywordSet8*(_: type QsciLexerSQLEnumEnum): untyped = 22
template QuotedIdentifier*(_: type QsciLexerSQLEnumEnum): untyped = 23
template QuotedOperator*(_: type QsciLexerSQLEnumEnum): untyped = 24

import gen_qscilexersql_types
export gen_qscilexersql_types

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

type cQsciLexerSQL*{.exportc: "QsciLexerSQL", incompleteStruct.} = object

proc fcQsciLexerSQL_metaObject(self: pointer, ): pointer {.importc: "QsciLexerSQL_metaObject".}
proc fcQsciLexerSQL_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerSQL_metacast".}
proc fcQsciLexerSQL_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerSQL_metacall".}
proc fcQsciLexerSQL_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerSQL_tr".}
proc fcQsciLexerSQL_trUtf8(s: cstring): struct_miqt_string {.importc: "QsciLexerSQL_trUtf8".}
proc fcQsciLexerSQL_language(self: pointer, ): cstring {.importc: "QsciLexerSQL_language".}
proc fcQsciLexerSQL_lexer(self: pointer, ): cstring {.importc: "QsciLexerSQL_lexer".}
proc fcQsciLexerSQL_braceStyle(self: pointer, ): cint {.importc: "QsciLexerSQL_braceStyle".}
proc fcQsciLexerSQL_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerSQL_defaultColor".}
proc fcQsciLexerSQL_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerSQL_defaultEolFill".}
proc fcQsciLexerSQL_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerSQL_defaultFont".}
proc fcQsciLexerSQL_defaultPaper(self: pointer, style: cint): pointer {.importc: "QsciLexerSQL_defaultPaper".}
proc fcQsciLexerSQL_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerSQL_keywords".}
proc fcQsciLexerSQL_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerSQL_description".}
proc fcQsciLexerSQL_refreshProperties(self: pointer, ): void {.importc: "QsciLexerSQL_refreshProperties".}
proc fcQsciLexerSQL_backslashEscapes(self: pointer, ): bool {.importc: "QsciLexerSQL_backslashEscapes".}
proc fcQsciLexerSQL_setDottedWords(self: pointer, enable: bool): void {.importc: "QsciLexerSQL_setDottedWords".}
proc fcQsciLexerSQL_dottedWords(self: pointer, ): bool {.importc: "QsciLexerSQL_dottedWords".}
proc fcQsciLexerSQL_setFoldAtElse(self: pointer, fold: bool): void {.importc: "QsciLexerSQL_setFoldAtElse".}
proc fcQsciLexerSQL_foldAtElse(self: pointer, ): bool {.importc: "QsciLexerSQL_foldAtElse".}
proc fcQsciLexerSQL_foldComments(self: pointer, ): bool {.importc: "QsciLexerSQL_foldComments".}
proc fcQsciLexerSQL_foldCompact(self: pointer, ): bool {.importc: "QsciLexerSQL_foldCompact".}
proc fcQsciLexerSQL_setFoldOnlyBegin(self: pointer, fold: bool): void {.importc: "QsciLexerSQL_setFoldOnlyBegin".}
proc fcQsciLexerSQL_foldOnlyBegin(self: pointer, ): bool {.importc: "QsciLexerSQL_foldOnlyBegin".}
proc fcQsciLexerSQL_setHashComments(self: pointer, enable: bool): void {.importc: "QsciLexerSQL_setHashComments".}
proc fcQsciLexerSQL_hashComments(self: pointer, ): bool {.importc: "QsciLexerSQL_hashComments".}
proc fcQsciLexerSQL_setQuotedIdentifiers(self: pointer, enable: bool): void {.importc: "QsciLexerSQL_setQuotedIdentifiers".}
proc fcQsciLexerSQL_quotedIdentifiers(self: pointer, ): bool {.importc: "QsciLexerSQL_quotedIdentifiers".}
proc fcQsciLexerSQL_setBackslashEscapes(self: pointer, enable: bool): void {.importc: "QsciLexerSQL_setBackslashEscapes".}
proc fcQsciLexerSQL_setFoldComments(self: pointer, fold: bool): void {.importc: "QsciLexerSQL_setFoldComments".}
proc fcQsciLexerSQL_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerSQL_setFoldCompact".}
proc fcQsciLexerSQL_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerSQL_tr2".}
proc fcQsciLexerSQL_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerSQL_tr3".}
proc fcQsciLexerSQL_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerSQL_trUtf82".}
proc fcQsciLexerSQL_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerSQL_trUtf83".}
type cQsciLexerSQLVTable = object
  destructor*: proc(vtbl: ptr cQsciLexerSQLVTable, self: ptr cQsciLexerSQL) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setBackslashEscapes*: proc(vtbl, self: pointer, enable: bool): void {.cdecl, raises: [], gcsafe.}
  setFoldComments*: proc(vtbl, self: pointer, fold: bool): void {.cdecl, raises: [], gcsafe.}
  setFoldCompact*: proc(vtbl, self: pointer, fold: bool): void {.cdecl, raises: [], gcsafe.}
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
  indentationGuideView*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
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
proc fcQsciLexerSQL_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QsciLexerSQL_virtualbase_metaObject".}
proc fcQsciLexerSQL_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerSQL_virtualbase_metacast".}
proc fcQsciLexerSQL_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerSQL_virtualbase_metacall".}
proc fcQsciLexerSQL_virtualbase_setBackslashEscapes(self: pointer, enable: bool): void {.importc: "QsciLexerSQL_virtualbase_setBackslashEscapes".}
proc fcQsciLexerSQL_virtualbase_setFoldComments(self: pointer, fold: bool): void {.importc: "QsciLexerSQL_virtualbase_setFoldComments".}
proc fcQsciLexerSQL_virtualbase_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerSQL_virtualbase_setFoldCompact".}
proc fcQsciLexerSQL_virtualbase_lexer(self: pointer, ): cstring {.importc: "QsciLexerSQL_virtualbase_lexer".}
proc fcQsciLexerSQL_virtualbase_lexerId(self: pointer, ): cint {.importc: "QsciLexerSQL_virtualbase_lexerId".}
proc fcQsciLexerSQL_virtualbase_autoCompletionFillups(self: pointer, ): cstring {.importc: "QsciLexerSQL_virtualbase_autoCompletionFillups".}
proc fcQsciLexerSQL_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array {.importc: "QsciLexerSQL_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerSQL_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerSQL_virtualbase_blockEnd".}
proc fcQsciLexerSQL_virtualbase_blockLookback(self: pointer, ): cint {.importc: "QsciLexerSQL_virtualbase_blockLookback".}
proc fcQsciLexerSQL_virtualbase_blockStart(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerSQL_virtualbase_blockStart".}
proc fcQsciLexerSQL_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerSQL_virtualbase_blockStartKeyword".}
proc fcQsciLexerSQL_virtualbase_braceStyle(self: pointer, ): cint {.importc: "QsciLexerSQL_virtualbase_braceStyle".}
proc fcQsciLexerSQL_virtualbase_caseSensitive(self: pointer, ): bool {.importc: "QsciLexerSQL_virtualbase_caseSensitive".}
proc fcQsciLexerSQL_virtualbase_color(self: pointer, style: cint): pointer {.importc: "QsciLexerSQL_virtualbase_color".}
proc fcQsciLexerSQL_virtualbase_eolFill(self: pointer, style: cint): bool {.importc: "QsciLexerSQL_virtualbase_eolFill".}
proc fcQsciLexerSQL_virtualbase_font(self: pointer, style: cint): pointer {.importc: "QsciLexerSQL_virtualbase_font".}
proc fcQsciLexerSQL_virtualbase_indentationGuideView(self: pointer, ): cint {.importc: "QsciLexerSQL_virtualbase_indentationGuideView".}
proc fcQsciLexerSQL_virtualbase_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerSQL_virtualbase_keywords".}
proc fcQsciLexerSQL_virtualbase_defaultStyle(self: pointer, ): cint {.importc: "QsciLexerSQL_virtualbase_defaultStyle".}
proc fcQsciLexerSQL_virtualbase_paper(self: pointer, style: cint): pointer {.importc: "QsciLexerSQL_virtualbase_paper".}
proc fcQsciLexerSQL_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerSQL_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerSQL_virtualbase_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerSQL_virtualbase_defaultEolFill".}
proc fcQsciLexerSQL_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerSQL_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerSQL_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerSQL_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerSQL_virtualbase_setEditor(self: pointer, editor: pointer): void {.importc: "QsciLexerSQL_virtualbase_setEditor".}
proc fcQsciLexerSQL_virtualbase_refreshProperties(self: pointer, ): void {.importc: "QsciLexerSQL_virtualbase_refreshProperties".}
proc fcQsciLexerSQL_virtualbase_styleBitsNeeded(self: pointer, ): cint {.importc: "QsciLexerSQL_virtualbase_styleBitsNeeded".}
proc fcQsciLexerSQL_virtualbase_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerSQL_virtualbase_wordCharacters".}
proc fcQsciLexerSQL_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void {.importc: "QsciLexerSQL_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerSQL_virtualbase_setColor(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerSQL_virtualbase_setColor".}
proc fcQsciLexerSQL_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void {.importc: "QsciLexerSQL_virtualbase_setEolFill".}
proc fcQsciLexerSQL_virtualbase_setFont(self: pointer, f: pointer, style: cint): void {.importc: "QsciLexerSQL_virtualbase_setFont".}
proc fcQsciLexerSQL_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerSQL_virtualbase_setPaper".}
proc fcQsciLexerSQL_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerSQL_virtualbase_readProperties".}
proc fcQsciLexerSQL_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerSQL_virtualbase_writeProperties".}
proc fcQsciLexerSQL_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QsciLexerSQL_virtualbase_event".}
proc fcQsciLexerSQL_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QsciLexerSQL_virtualbase_eventFilter".}
proc fcQsciLexerSQL_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QsciLexerSQL_virtualbase_timerEvent".}
proc fcQsciLexerSQL_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QsciLexerSQL_virtualbase_childEvent".}
proc fcQsciLexerSQL_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QsciLexerSQL_virtualbase_customEvent".}
proc fcQsciLexerSQL_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerSQL_virtualbase_connectNotify".}
proc fcQsciLexerSQL_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerSQL_virtualbase_disconnectNotify".}
proc fcQsciLexerSQL_new(vtbl: pointer, ): ptr cQsciLexerSQL {.importc: "QsciLexerSQL_new".}
proc fcQsciLexerSQL_new2(vtbl: pointer, parent: pointer): ptr cQsciLexerSQL {.importc: "QsciLexerSQL_new2".}
proc fcQsciLexerSQL_staticMetaObject(): pointer {.importc: "QsciLexerSQL_staticMetaObject".}
proc fcQsciLexerSQL_delete(self: pointer) {.importc: "QsciLexerSQL_delete".}

proc metaObject*(self: gen_qscilexersql_types.QsciLexerSQL, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerSQL_metaObject(self.h))

proc metacast*(self: gen_qscilexersql_types.QsciLexerSQL, param1: cstring): pointer =
  fcQsciLexerSQL_metacast(self.h, param1)

proc metacall*(self: gen_qscilexersql_types.QsciLexerSQL, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerSQL_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexersql_types.QsciLexerSQL, s: cstring): string =
  let v_ms = fcQsciLexerSQL_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexersql_types.QsciLexerSQL, s: cstring): string =
  let v_ms = fcQsciLexerSQL_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexersql_types.QsciLexerSQL, ): cstring =
  (fcQsciLexerSQL_language(self.h))

proc lexer*(self: gen_qscilexersql_types.QsciLexerSQL, ): cstring =
  (fcQsciLexerSQL_lexer(self.h))

proc braceStyle*(self: gen_qscilexersql_types.QsciLexerSQL, ): cint =
  fcQsciLexerSQL_braceStyle(self.h)

proc defaultColor*(self: gen_qscilexersql_types.QsciLexerSQL, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerSQL_defaultColor(self.h, style))

proc defaultEolFill*(self: gen_qscilexersql_types.QsciLexerSQL, style: cint): bool =
  fcQsciLexerSQL_defaultEolFill(self.h, style)

proc defaultFont*(self: gen_qscilexersql_types.QsciLexerSQL, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerSQL_defaultFont(self.h, style))

proc defaultPaper*(self: gen_qscilexersql_types.QsciLexerSQL, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerSQL_defaultPaper(self.h, style))

proc keywords*(self: gen_qscilexersql_types.QsciLexerSQL, set: cint): cstring =
  (fcQsciLexerSQL_keywords(self.h, set))

proc description*(self: gen_qscilexersql_types.QsciLexerSQL, style: cint): string =
  let v_ms = fcQsciLexerSQL_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: gen_qscilexersql_types.QsciLexerSQL, ): void =
  fcQsciLexerSQL_refreshProperties(self.h)

proc backslashEscapes*(self: gen_qscilexersql_types.QsciLexerSQL, ): bool =
  fcQsciLexerSQL_backslashEscapes(self.h)

proc setDottedWords*(self: gen_qscilexersql_types.QsciLexerSQL, enable: bool): void =
  fcQsciLexerSQL_setDottedWords(self.h, enable)

proc dottedWords*(self: gen_qscilexersql_types.QsciLexerSQL, ): bool =
  fcQsciLexerSQL_dottedWords(self.h)

proc setFoldAtElse*(self: gen_qscilexersql_types.QsciLexerSQL, fold: bool): void =
  fcQsciLexerSQL_setFoldAtElse(self.h, fold)

proc foldAtElse*(self: gen_qscilexersql_types.QsciLexerSQL, ): bool =
  fcQsciLexerSQL_foldAtElse(self.h)

proc foldComments*(self: gen_qscilexersql_types.QsciLexerSQL, ): bool =
  fcQsciLexerSQL_foldComments(self.h)

proc foldCompact*(self: gen_qscilexersql_types.QsciLexerSQL, ): bool =
  fcQsciLexerSQL_foldCompact(self.h)

proc setFoldOnlyBegin*(self: gen_qscilexersql_types.QsciLexerSQL, fold: bool): void =
  fcQsciLexerSQL_setFoldOnlyBegin(self.h, fold)

proc foldOnlyBegin*(self: gen_qscilexersql_types.QsciLexerSQL, ): bool =
  fcQsciLexerSQL_foldOnlyBegin(self.h)

proc setHashComments*(self: gen_qscilexersql_types.QsciLexerSQL, enable: bool): void =
  fcQsciLexerSQL_setHashComments(self.h, enable)

proc hashComments*(self: gen_qscilexersql_types.QsciLexerSQL, ): bool =
  fcQsciLexerSQL_hashComments(self.h)

proc setQuotedIdentifiers*(self: gen_qscilexersql_types.QsciLexerSQL, enable: bool): void =
  fcQsciLexerSQL_setQuotedIdentifiers(self.h, enable)

proc quotedIdentifiers*(self: gen_qscilexersql_types.QsciLexerSQL, ): bool =
  fcQsciLexerSQL_quotedIdentifiers(self.h)

proc setBackslashEscapes*(self: gen_qscilexersql_types.QsciLexerSQL, enable: bool): void =
  fcQsciLexerSQL_setBackslashEscapes(self.h, enable)

proc setFoldComments*(self: gen_qscilexersql_types.QsciLexerSQL, fold: bool): void =
  fcQsciLexerSQL_setFoldComments(self.h, fold)

proc setFoldCompact*(self: gen_qscilexersql_types.QsciLexerSQL, fold: bool): void =
  fcQsciLexerSQL_setFoldCompact(self.h, fold)

proc tr*(_: type gen_qscilexersql_types.QsciLexerSQL, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerSQL_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexersql_types.QsciLexerSQL, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerSQL_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexersql_types.QsciLexerSQL, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerSQL_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexersql_types.QsciLexerSQL, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerSQL_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QsciLexerSQLmetaObjectProc* = proc(self: QsciLexerSQL): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QsciLexerSQLmetacastProc* = proc(self: QsciLexerSQL, param1: cstring): pointer {.raises: [], gcsafe.}
type QsciLexerSQLmetacallProc* = proc(self: QsciLexerSQL, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QsciLexerSQLsetBackslashEscapesProc* = proc(self: QsciLexerSQL, enable: bool): void {.raises: [], gcsafe.}
type QsciLexerSQLsetFoldCommentsProc* = proc(self: QsciLexerSQL, fold: bool): void {.raises: [], gcsafe.}
type QsciLexerSQLsetFoldCompactProc* = proc(self: QsciLexerSQL, fold: bool): void {.raises: [], gcsafe.}
type QsciLexerSQLlanguageProc* = proc(self: QsciLexerSQL): cstring {.raises: [], gcsafe.}
type QsciLexerSQLlexerProc* = proc(self: QsciLexerSQL): cstring {.raises: [], gcsafe.}
type QsciLexerSQLlexerIdProc* = proc(self: QsciLexerSQL): cint {.raises: [], gcsafe.}
type QsciLexerSQLautoCompletionFillupsProc* = proc(self: QsciLexerSQL): cstring {.raises: [], gcsafe.}
type QsciLexerSQLautoCompletionWordSeparatorsProc* = proc(self: QsciLexerSQL): seq[string] {.raises: [], gcsafe.}
type QsciLexerSQLblockEndProc* = proc(self: QsciLexerSQL, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerSQLblockLookbackProc* = proc(self: QsciLexerSQL): cint {.raises: [], gcsafe.}
type QsciLexerSQLblockStartProc* = proc(self: QsciLexerSQL, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerSQLblockStartKeywordProc* = proc(self: QsciLexerSQL, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerSQLbraceStyleProc* = proc(self: QsciLexerSQL): cint {.raises: [], gcsafe.}
type QsciLexerSQLcaseSensitiveProc* = proc(self: QsciLexerSQL): bool {.raises: [], gcsafe.}
type QsciLexerSQLcolorProc* = proc(self: QsciLexerSQL, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerSQLeolFillProc* = proc(self: QsciLexerSQL, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerSQLfontProc* = proc(self: QsciLexerSQL, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerSQLindentationGuideViewProc* = proc(self: QsciLexerSQL): cint {.raises: [], gcsafe.}
type QsciLexerSQLkeywordsProc* = proc(self: QsciLexerSQL, set: cint): cstring {.raises: [], gcsafe.}
type QsciLexerSQLdefaultStyleProc* = proc(self: QsciLexerSQL): cint {.raises: [], gcsafe.}
type QsciLexerSQLdescriptionProc* = proc(self: QsciLexerSQL, style: cint): string {.raises: [], gcsafe.}
type QsciLexerSQLpaperProc* = proc(self: QsciLexerSQL, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerSQLdefaultColorProc* = proc(self: QsciLexerSQL, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerSQLdefaultEolFillProc* = proc(self: QsciLexerSQL, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerSQLdefaultFontProc* = proc(self: QsciLexerSQL, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerSQLdefaultPaperProc* = proc(self: QsciLexerSQL, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerSQLsetEditorProc* = proc(self: QsciLexerSQL, editor: gen_qsciscintilla_types.QsciScintilla): void {.raises: [], gcsafe.}
type QsciLexerSQLrefreshPropertiesProc* = proc(self: QsciLexerSQL): void {.raises: [], gcsafe.}
type QsciLexerSQLstyleBitsNeededProc* = proc(self: QsciLexerSQL): cint {.raises: [], gcsafe.}
type QsciLexerSQLwordCharactersProc* = proc(self: QsciLexerSQL): cstring {.raises: [], gcsafe.}
type QsciLexerSQLsetAutoIndentStyleProc* = proc(self: QsciLexerSQL, autoindentstyle: cint): void {.raises: [], gcsafe.}
type QsciLexerSQLsetColorProc* = proc(self: QsciLexerSQL, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerSQLsetEolFillProc* = proc(self: QsciLexerSQL, eoffill: bool, style: cint): void {.raises: [], gcsafe.}
type QsciLexerSQLsetFontProc* = proc(self: QsciLexerSQL, f: gen_qfont_types.QFont, style: cint): void {.raises: [], gcsafe.}
type QsciLexerSQLsetPaperProc* = proc(self: QsciLexerSQL, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerSQLreadPropertiesProc* = proc(self: QsciLexerSQL, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerSQLwritePropertiesProc* = proc(self: QsciLexerSQL, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerSQLeventProc* = proc(self: QsciLexerSQL, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerSQLeventFilterProc* = proc(self: QsciLexerSQL, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerSQLtimerEventProc* = proc(self: QsciLexerSQL, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QsciLexerSQLchildEventProc* = proc(self: QsciLexerSQL, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QsciLexerSQLcustomEventProc* = proc(self: QsciLexerSQL, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QsciLexerSQLconnectNotifyProc* = proc(self: QsciLexerSQL, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerSQLdisconnectNotifyProc* = proc(self: QsciLexerSQL, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerSQLVTable* = object
  vtbl: cQsciLexerSQLVTable
  metaObject*: QsciLexerSQLmetaObjectProc
  metacast*: QsciLexerSQLmetacastProc
  metacall*: QsciLexerSQLmetacallProc
  setBackslashEscapes*: QsciLexerSQLsetBackslashEscapesProc
  setFoldComments*: QsciLexerSQLsetFoldCommentsProc
  setFoldCompact*: QsciLexerSQLsetFoldCompactProc
  language*: QsciLexerSQLlanguageProc
  lexer*: QsciLexerSQLlexerProc
  lexerId*: QsciLexerSQLlexerIdProc
  autoCompletionFillups*: QsciLexerSQLautoCompletionFillupsProc
  autoCompletionWordSeparators*: QsciLexerSQLautoCompletionWordSeparatorsProc
  blockEnd*: QsciLexerSQLblockEndProc
  blockLookback*: QsciLexerSQLblockLookbackProc
  blockStart*: QsciLexerSQLblockStartProc
  blockStartKeyword*: QsciLexerSQLblockStartKeywordProc
  braceStyle*: QsciLexerSQLbraceStyleProc
  caseSensitive*: QsciLexerSQLcaseSensitiveProc
  color*: QsciLexerSQLcolorProc
  eolFill*: QsciLexerSQLeolFillProc
  font*: QsciLexerSQLfontProc
  indentationGuideView*: QsciLexerSQLindentationGuideViewProc
  keywords*: QsciLexerSQLkeywordsProc
  defaultStyle*: QsciLexerSQLdefaultStyleProc
  description*: QsciLexerSQLdescriptionProc
  paper*: QsciLexerSQLpaperProc
  defaultColor*: QsciLexerSQLdefaultColorProc
  defaultEolFill*: QsciLexerSQLdefaultEolFillProc
  defaultFont*: QsciLexerSQLdefaultFontProc
  defaultPaper*: QsciLexerSQLdefaultPaperProc
  setEditor*: QsciLexerSQLsetEditorProc
  refreshProperties*: QsciLexerSQLrefreshPropertiesProc
  styleBitsNeeded*: QsciLexerSQLstyleBitsNeededProc
  wordCharacters*: QsciLexerSQLwordCharactersProc
  setAutoIndentStyle*: QsciLexerSQLsetAutoIndentStyleProc
  setColor*: QsciLexerSQLsetColorProc
  setEolFill*: QsciLexerSQLsetEolFillProc
  setFont*: QsciLexerSQLsetFontProc
  setPaper*: QsciLexerSQLsetPaperProc
  readProperties*: QsciLexerSQLreadPropertiesProc
  writeProperties*: QsciLexerSQLwritePropertiesProc
  event*: QsciLexerSQLeventProc
  eventFilter*: QsciLexerSQLeventFilterProc
  timerEvent*: QsciLexerSQLtimerEventProc
  childEvent*: QsciLexerSQLchildEventProc
  customEvent*: QsciLexerSQLcustomEventProc
  connectNotify*: QsciLexerSQLconnectNotifyProc
  disconnectNotify*: QsciLexerSQLdisconnectNotifyProc
proc QsciLexerSQLmetaObject*(self: gen_qscilexersql_types.QsciLexerSQL, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerSQL_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQsciLexerSQL_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSQLVTable](vtbl)
  let self = QsciLexerSQL(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QsciLexerSQLmetacast*(self: gen_qscilexersql_types.QsciLexerSQL, param1: cstring): pointer =
  fcQsciLexerSQL_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQsciLexerSQL_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSQLVTable](vtbl)
  let self = QsciLexerSQL(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QsciLexerSQLmetacall*(self: gen_qscilexersql_types.QsciLexerSQL, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerSQL_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQsciLexerSQL_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSQLVTable](vtbl)
  let self = QsciLexerSQL(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QsciLexerSQLsetBackslashEscapes*(self: gen_qscilexersql_types.QsciLexerSQL, enable: bool): void =
  fcQsciLexerSQL_virtualbase_setBackslashEscapes(self.h, enable)

proc miqt_exec_callback_cQsciLexerSQL_setBackslashEscapes(vtbl: pointer, self: pointer, enable: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSQLVTable](vtbl)
  let self = QsciLexerSQL(h: self)
  let slotval1 = enable
  vtbl[].setBackslashEscapes(self, slotval1)

proc QsciLexerSQLsetFoldComments*(self: gen_qscilexersql_types.QsciLexerSQL, fold: bool): void =
  fcQsciLexerSQL_virtualbase_setFoldComments(self.h, fold)

proc miqt_exec_callback_cQsciLexerSQL_setFoldComments(vtbl: pointer, self: pointer, fold: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSQLVTable](vtbl)
  let self = QsciLexerSQL(h: self)
  let slotval1 = fold
  vtbl[].setFoldComments(self, slotval1)

proc QsciLexerSQLsetFoldCompact*(self: gen_qscilexersql_types.QsciLexerSQL, fold: bool): void =
  fcQsciLexerSQL_virtualbase_setFoldCompact(self.h, fold)

proc miqt_exec_callback_cQsciLexerSQL_setFoldCompact(vtbl: pointer, self: pointer, fold: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSQLVTable](vtbl)
  let self = QsciLexerSQL(h: self)
  let slotval1 = fold
  vtbl[].setFoldCompact(self, slotval1)

proc miqt_exec_callback_cQsciLexerSQL_language(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSQLVTable](vtbl)
  let self = QsciLexerSQL(h: self)
  let virtualReturn = vtbl[].language(self)
  virtualReturn

proc QsciLexerSQLlexer*(self: gen_qscilexersql_types.QsciLexerSQL, ): cstring =
  (fcQsciLexerSQL_virtualbase_lexer(self.h))

proc miqt_exec_callback_cQsciLexerSQL_lexer(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSQLVTable](vtbl)
  let self = QsciLexerSQL(h: self)
  let virtualReturn = vtbl[].lexer(self)
  virtualReturn

proc QsciLexerSQLlexerId*(self: gen_qscilexersql_types.QsciLexerSQL, ): cint =
  fcQsciLexerSQL_virtualbase_lexerId(self.h)

proc miqt_exec_callback_cQsciLexerSQL_lexerId(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSQLVTable](vtbl)
  let self = QsciLexerSQL(h: self)
  let virtualReturn = vtbl[].lexerId(self)
  virtualReturn

proc QsciLexerSQLautoCompletionFillups*(self: gen_qscilexersql_types.QsciLexerSQL, ): cstring =
  (fcQsciLexerSQL_virtualbase_autoCompletionFillups(self.h))

proc miqt_exec_callback_cQsciLexerSQL_autoCompletionFillups(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSQLVTable](vtbl)
  let self = QsciLexerSQL(h: self)
  let virtualReturn = vtbl[].autoCompletionFillups(self)
  virtualReturn

proc QsciLexerSQLautoCompletionWordSeparators*(self: gen_qscilexersql_types.QsciLexerSQL, ): seq[string] =
  var v_ma = fcQsciLexerSQL_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc miqt_exec_callback_cQsciLexerSQL_autoCompletionWordSeparators(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSQLVTable](vtbl)
  let self = QsciLexerSQL(h: self)
  let virtualReturn = vtbl[].autoCompletionWordSeparators(self)
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QsciLexerSQLblockEnd*(self: gen_qscilexersql_types.QsciLexerSQL, style: ptr cint): cstring =
  (fcQsciLexerSQL_virtualbase_blockEnd(self.h, style))

proc miqt_exec_callback_cQsciLexerSQL_blockEnd(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSQLVTable](vtbl)
  let self = QsciLexerSQL(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockEnd(self, slotval1)
  virtualReturn

proc QsciLexerSQLblockLookback*(self: gen_qscilexersql_types.QsciLexerSQL, ): cint =
  fcQsciLexerSQL_virtualbase_blockLookback(self.h)

proc miqt_exec_callback_cQsciLexerSQL_blockLookback(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSQLVTable](vtbl)
  let self = QsciLexerSQL(h: self)
  let virtualReturn = vtbl[].blockLookback(self)
  virtualReturn

proc QsciLexerSQLblockStart*(self: gen_qscilexersql_types.QsciLexerSQL, style: ptr cint): cstring =
  (fcQsciLexerSQL_virtualbase_blockStart(self.h, style))

proc miqt_exec_callback_cQsciLexerSQL_blockStart(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSQLVTable](vtbl)
  let self = QsciLexerSQL(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStart(self, slotval1)
  virtualReturn

proc QsciLexerSQLblockStartKeyword*(self: gen_qscilexersql_types.QsciLexerSQL, style: ptr cint): cstring =
  (fcQsciLexerSQL_virtualbase_blockStartKeyword(self.h, style))

proc miqt_exec_callback_cQsciLexerSQL_blockStartKeyword(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSQLVTable](vtbl)
  let self = QsciLexerSQL(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStartKeyword(self, slotval1)
  virtualReturn

proc QsciLexerSQLbraceStyle*(self: gen_qscilexersql_types.QsciLexerSQL, ): cint =
  fcQsciLexerSQL_virtualbase_braceStyle(self.h)

proc miqt_exec_callback_cQsciLexerSQL_braceStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSQLVTable](vtbl)
  let self = QsciLexerSQL(h: self)
  let virtualReturn = vtbl[].braceStyle(self)
  virtualReturn

proc QsciLexerSQLcaseSensitive*(self: gen_qscilexersql_types.QsciLexerSQL, ): bool =
  fcQsciLexerSQL_virtualbase_caseSensitive(self.h)

proc miqt_exec_callback_cQsciLexerSQL_caseSensitive(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSQLVTable](vtbl)
  let self = QsciLexerSQL(h: self)
  let virtualReturn = vtbl[].caseSensitive(self)
  virtualReturn

proc QsciLexerSQLcolor*(self: gen_qscilexersql_types.QsciLexerSQL, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerSQL_virtualbase_color(self.h, style))

proc miqt_exec_callback_cQsciLexerSQL_color(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSQLVTable](vtbl)
  let self = QsciLexerSQL(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].color(self, slotval1)
  virtualReturn.h

proc QsciLexerSQLeolFill*(self: gen_qscilexersql_types.QsciLexerSQL, style: cint): bool =
  fcQsciLexerSQL_virtualbase_eolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerSQL_eolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSQLVTable](vtbl)
  let self = QsciLexerSQL(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].eolFill(self, slotval1)
  virtualReturn

proc QsciLexerSQLfont*(self: gen_qscilexersql_types.QsciLexerSQL, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerSQL_virtualbase_font(self.h, style))

proc miqt_exec_callback_cQsciLexerSQL_font(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSQLVTable](vtbl)
  let self = QsciLexerSQL(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].font(self, slotval1)
  virtualReturn.h

proc QsciLexerSQLindentationGuideView*(self: gen_qscilexersql_types.QsciLexerSQL, ): cint =
  fcQsciLexerSQL_virtualbase_indentationGuideView(self.h)

proc miqt_exec_callback_cQsciLexerSQL_indentationGuideView(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSQLVTable](vtbl)
  let self = QsciLexerSQL(h: self)
  let virtualReturn = vtbl[].indentationGuideView(self)
  virtualReturn

proc QsciLexerSQLkeywords*(self: gen_qscilexersql_types.QsciLexerSQL, set: cint): cstring =
  (fcQsciLexerSQL_virtualbase_keywords(self.h, set))

proc miqt_exec_callback_cQsciLexerSQL_keywords(vtbl: pointer, self: pointer, set: cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSQLVTable](vtbl)
  let self = QsciLexerSQL(h: self)
  let slotval1 = set
  let virtualReturn = vtbl[].keywords(self, slotval1)
  virtualReturn

proc QsciLexerSQLdefaultStyle*(self: gen_qscilexersql_types.QsciLexerSQL, ): cint =
  fcQsciLexerSQL_virtualbase_defaultStyle(self.h)

proc miqt_exec_callback_cQsciLexerSQL_defaultStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSQLVTable](vtbl)
  let self = QsciLexerSQL(h: self)
  let virtualReturn = vtbl[].defaultStyle(self)
  virtualReturn

proc miqt_exec_callback_cQsciLexerSQL_description(vtbl: pointer, self: pointer, style: cint): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSQLVTable](vtbl)
  let self = QsciLexerSQL(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].description(self, slotval1)
  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))

proc QsciLexerSQLpaper*(self: gen_qscilexersql_types.QsciLexerSQL, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerSQL_virtualbase_paper(self.h, style))

proc miqt_exec_callback_cQsciLexerSQL_paper(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSQLVTable](vtbl)
  let self = QsciLexerSQL(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].paper(self, slotval1)
  virtualReturn.h

proc QsciLexerSQLdefaultColor*(self: gen_qscilexersql_types.QsciLexerSQL, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerSQL_virtualbase_defaultColorWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerSQL_defaultColorWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSQLVTable](vtbl)
  let self = QsciLexerSQL(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultColor(self, slotval1)
  virtualReturn.h

proc QsciLexerSQLdefaultEolFill*(self: gen_qscilexersql_types.QsciLexerSQL, style: cint): bool =
  fcQsciLexerSQL_virtualbase_defaultEolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerSQL_defaultEolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSQLVTable](vtbl)
  let self = QsciLexerSQL(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultEolFill(self, slotval1)
  virtualReturn

proc QsciLexerSQLdefaultFont*(self: gen_qscilexersql_types.QsciLexerSQL, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerSQL_virtualbase_defaultFontWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerSQL_defaultFontWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSQLVTable](vtbl)
  let self = QsciLexerSQL(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultFont(self, slotval1)
  virtualReturn.h

proc QsciLexerSQLdefaultPaper*(self: gen_qscilexersql_types.QsciLexerSQL, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerSQL_virtualbase_defaultPaperWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerSQL_defaultPaperWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSQLVTable](vtbl)
  let self = QsciLexerSQL(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultPaper(self, slotval1)
  virtualReturn.h

proc QsciLexerSQLsetEditor*(self: gen_qscilexersql_types.QsciLexerSQL, editor: gen_qsciscintilla_types.QsciScintilla): void =
  fcQsciLexerSQL_virtualbase_setEditor(self.h, editor.h)

proc miqt_exec_callback_cQsciLexerSQL_setEditor(vtbl: pointer, self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSQLVTable](vtbl)
  let self = QsciLexerSQL(h: self)
  let slotval1 = gen_qsciscintilla_types.QsciScintilla(h: editor)
  vtbl[].setEditor(self, slotval1)

proc QsciLexerSQLrefreshProperties*(self: gen_qscilexersql_types.QsciLexerSQL, ): void =
  fcQsciLexerSQL_virtualbase_refreshProperties(self.h)

proc miqt_exec_callback_cQsciLexerSQL_refreshProperties(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSQLVTable](vtbl)
  let self = QsciLexerSQL(h: self)
  vtbl[].refreshProperties(self)

proc QsciLexerSQLstyleBitsNeeded*(self: gen_qscilexersql_types.QsciLexerSQL, ): cint =
  fcQsciLexerSQL_virtualbase_styleBitsNeeded(self.h)

proc miqt_exec_callback_cQsciLexerSQL_styleBitsNeeded(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSQLVTable](vtbl)
  let self = QsciLexerSQL(h: self)
  let virtualReturn = vtbl[].styleBitsNeeded(self)
  virtualReturn

proc QsciLexerSQLwordCharacters*(self: gen_qscilexersql_types.QsciLexerSQL, ): cstring =
  (fcQsciLexerSQL_virtualbase_wordCharacters(self.h))

proc miqt_exec_callback_cQsciLexerSQL_wordCharacters(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSQLVTable](vtbl)
  let self = QsciLexerSQL(h: self)
  let virtualReturn = vtbl[].wordCharacters(self)
  virtualReturn

proc QsciLexerSQLsetAutoIndentStyle*(self: gen_qscilexersql_types.QsciLexerSQL, autoindentstyle: cint): void =
  fcQsciLexerSQL_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

proc miqt_exec_callback_cQsciLexerSQL_setAutoIndentStyle(vtbl: pointer, self: pointer, autoindentstyle: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSQLVTable](vtbl)
  let self = QsciLexerSQL(h: self)
  let slotval1 = autoindentstyle
  vtbl[].setAutoIndentStyle(self, slotval1)

proc QsciLexerSQLsetColor*(self: gen_qscilexersql_types.QsciLexerSQL, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerSQL_virtualbase_setColor(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerSQL_setColor(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSQLVTable](vtbl)
  let self = QsciLexerSQL(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setColor(self, slotval1, slotval2)

proc QsciLexerSQLsetEolFill*(self: gen_qscilexersql_types.QsciLexerSQL, eoffill: bool, style: cint): void =
  fcQsciLexerSQL_virtualbase_setEolFill(self.h, eoffill, style)

proc miqt_exec_callback_cQsciLexerSQL_setEolFill(vtbl: pointer, self: pointer, eoffill: bool, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSQLVTable](vtbl)
  let self = QsciLexerSQL(h: self)
  let slotval1 = eoffill
  let slotval2 = style
  vtbl[].setEolFill(self, slotval1, slotval2)

proc QsciLexerSQLsetFont*(self: gen_qscilexersql_types.QsciLexerSQL, f: gen_qfont_types.QFont, style: cint): void =
  fcQsciLexerSQL_virtualbase_setFont(self.h, f.h, style)

proc miqt_exec_callback_cQsciLexerSQL_setFont(vtbl: pointer, self: pointer, f: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSQLVTable](vtbl)
  let self = QsciLexerSQL(h: self)
  let slotval1 = gen_qfont_types.QFont(h: f)
  let slotval2 = style
  vtbl[].setFont(self, slotval1, slotval2)

proc QsciLexerSQLsetPaper*(self: gen_qscilexersql_types.QsciLexerSQL, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerSQL_virtualbase_setPaper(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerSQL_setPaper(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSQLVTable](vtbl)
  let self = QsciLexerSQL(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setPaper(self, slotval1, slotval2)

proc QsciLexerSQLreadProperties*(self: gen_qscilexersql_types.QsciLexerSQL, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerSQL_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerSQL_readProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSQLVTable](vtbl)
  let self = QsciLexerSQL(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].readProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerSQLwriteProperties*(self: gen_qscilexersql_types.QsciLexerSQL, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerSQL_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerSQL_writeProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSQLVTable](vtbl)
  let self = QsciLexerSQL(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].writeProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerSQLevent*(self: gen_qscilexersql_types.QsciLexerSQL, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerSQL_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQsciLexerSQL_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSQLVTable](vtbl)
  let self = QsciLexerSQL(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QsciLexerSQLeventFilter*(self: gen_qscilexersql_types.QsciLexerSQL, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerSQL_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQsciLexerSQL_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSQLVTable](vtbl)
  let self = QsciLexerSQL(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerSQLtimerEvent*(self: gen_qscilexersql_types.QsciLexerSQL, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQsciLexerSQL_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerSQL_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSQLVTable](vtbl)
  let self = QsciLexerSQL(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QsciLexerSQLchildEvent*(self: gen_qscilexersql_types.QsciLexerSQL, event: gen_qcoreevent_types.QChildEvent): void =
  fcQsciLexerSQL_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerSQL_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSQLVTable](vtbl)
  let self = QsciLexerSQL(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QsciLexerSQLcustomEvent*(self: gen_qscilexersql_types.QsciLexerSQL, event: gen_qcoreevent_types.QEvent): void =
  fcQsciLexerSQL_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerSQL_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSQLVTable](vtbl)
  let self = QsciLexerSQL(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QsciLexerSQLconnectNotify*(self: gen_qscilexersql_types.QsciLexerSQL, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerSQL_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerSQL_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSQLVTable](vtbl)
  let self = QsciLexerSQL(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QsciLexerSQLdisconnectNotify*(self: gen_qscilexersql_types.QsciLexerSQL, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerSQL_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerSQL_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSQLVTable](vtbl)
  let self = QsciLexerSQL(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qscilexersql_types.QsciLexerSQL,
    vtbl: ref QsciLexerSQLVTable = nil): gen_qscilexersql_types.QsciLexerSQL =
  let vtbl = if vtbl == nil: new QsciLexerSQLVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerSQLVTable, _: ptr cQsciLexerSQL) {.cdecl.} =
    let vtbl = cast[ref QsciLexerSQLVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerSQL_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerSQL_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerSQL_metacall
  if not isNil(vtbl.setBackslashEscapes):
    vtbl[].vtbl.setBackslashEscapes = miqt_exec_callback_cQsciLexerSQL_setBackslashEscapes
  if not isNil(vtbl.setFoldComments):
    vtbl[].vtbl.setFoldComments = miqt_exec_callback_cQsciLexerSQL_setFoldComments
  if not isNil(vtbl.setFoldCompact):
    vtbl[].vtbl.setFoldCompact = miqt_exec_callback_cQsciLexerSQL_setFoldCompact
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerSQL_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerSQL_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerSQL_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerSQL_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerSQL_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerSQL_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerSQL_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerSQL_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerSQL_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerSQL_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerSQL_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerSQL_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerSQL_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerSQL_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerSQL_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerSQL_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerSQL_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerSQL_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerSQL_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerSQL_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerSQL_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerSQL_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerSQL_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerSQL_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerSQL_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerSQL_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerSQL_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerSQL_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerSQL_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerSQL_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerSQL_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerSQL_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerSQL_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerSQL_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerSQL_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerSQL_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerSQL_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerSQL_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerSQL_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerSQL_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerSQL_disconnectNotify
  gen_qscilexersql_types.QsciLexerSQL(h: fcQsciLexerSQL_new(addr(vtbl[]), ))

proc create*(T: type gen_qscilexersql_types.QsciLexerSQL,
    parent: gen_qobject_types.QObject,
    vtbl: ref QsciLexerSQLVTable = nil): gen_qscilexersql_types.QsciLexerSQL =
  let vtbl = if vtbl == nil: new QsciLexerSQLVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerSQLVTable, _: ptr cQsciLexerSQL) {.cdecl.} =
    let vtbl = cast[ref QsciLexerSQLVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerSQL_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerSQL_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerSQL_metacall
  if not isNil(vtbl.setBackslashEscapes):
    vtbl[].vtbl.setBackslashEscapes = miqt_exec_callback_cQsciLexerSQL_setBackslashEscapes
  if not isNil(vtbl.setFoldComments):
    vtbl[].vtbl.setFoldComments = miqt_exec_callback_cQsciLexerSQL_setFoldComments
  if not isNil(vtbl.setFoldCompact):
    vtbl[].vtbl.setFoldCompact = miqt_exec_callback_cQsciLexerSQL_setFoldCompact
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerSQL_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerSQL_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerSQL_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerSQL_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerSQL_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerSQL_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerSQL_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerSQL_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerSQL_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerSQL_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerSQL_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerSQL_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerSQL_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerSQL_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerSQL_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerSQL_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerSQL_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerSQL_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerSQL_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerSQL_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerSQL_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerSQL_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerSQL_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerSQL_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerSQL_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerSQL_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerSQL_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerSQL_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerSQL_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerSQL_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerSQL_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerSQL_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerSQL_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerSQL_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerSQL_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerSQL_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerSQL_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerSQL_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerSQL_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerSQL_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerSQL_disconnectNotify
  gen_qscilexersql_types.QsciLexerSQL(h: fcQsciLexerSQL_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qscilexersql_types.QsciLexerSQL): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerSQL_staticMetaObject())
proc delete*(self: gen_qscilexersql_types.QsciLexerSQL) =
  fcQsciLexerSQL_delete(self.h)
