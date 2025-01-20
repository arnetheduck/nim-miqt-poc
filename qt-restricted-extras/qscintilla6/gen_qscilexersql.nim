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

type cQsciLexerSQL*{.exportc: "QsciLexerSQL", incompleteStruct.} = object

proc fcQsciLexerSQL_new(): ptr cQsciLexerSQL {.importc: "QsciLexerSQL_new".}
proc fcQsciLexerSQL_new2(parent: pointer): ptr cQsciLexerSQL {.importc: "QsciLexerSQL_new2".}
proc fcQsciLexerSQL_metaObject(self: pointer, ): pointer {.importc: "QsciLexerSQL_metaObject".}
proc fcQsciLexerSQL_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerSQL_metacast".}
proc fcQsciLexerSQL_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerSQL_metacall".}
proc fcQsciLexerSQL_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerSQL_tr".}
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
proc fQsciLexerSQL_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QsciLexerSQL_virtualbase_metaObject".}
proc fcQsciLexerSQL_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QsciLexerSQL_override_virtual_metaObject".}
proc fQsciLexerSQL_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QsciLexerSQL_virtualbase_metacast".}
proc fcQsciLexerSQL_override_virtual_metacast(self: pointer, slot: int) {.importc: "QsciLexerSQL_override_virtual_metacast".}
proc fQsciLexerSQL_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciLexerSQL_virtualbase_metacall".}
proc fcQsciLexerSQL_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciLexerSQL_override_virtual_metacall".}
proc fQsciLexerSQL_virtualbase_setBackslashEscapes(self: pointer, enable: bool): void{.importc: "QsciLexerSQL_virtualbase_setBackslashEscapes".}
proc fcQsciLexerSQL_override_virtual_setBackslashEscapes(self: pointer, slot: int) {.importc: "QsciLexerSQL_override_virtual_setBackslashEscapes".}
proc fQsciLexerSQL_virtualbase_setFoldComments(self: pointer, fold: bool): void{.importc: "QsciLexerSQL_virtualbase_setFoldComments".}
proc fcQsciLexerSQL_override_virtual_setFoldComments(self: pointer, slot: int) {.importc: "QsciLexerSQL_override_virtual_setFoldComments".}
proc fQsciLexerSQL_virtualbase_setFoldCompact(self: pointer, fold: bool): void{.importc: "QsciLexerSQL_virtualbase_setFoldCompact".}
proc fcQsciLexerSQL_override_virtual_setFoldCompact(self: pointer, slot: int) {.importc: "QsciLexerSQL_override_virtual_setFoldCompact".}
proc fcQsciLexerSQL_override_virtual_language(self: pointer, slot: int) {.importc: "QsciLexerSQL_override_virtual_language".}
proc fQsciLexerSQL_virtualbase_lexer(self: pointer, ): cstring{.importc: "QsciLexerSQL_virtualbase_lexer".}
proc fcQsciLexerSQL_override_virtual_lexer(self: pointer, slot: int) {.importc: "QsciLexerSQL_override_virtual_lexer".}
proc fQsciLexerSQL_virtualbase_lexerId(self: pointer, ): cint{.importc: "QsciLexerSQL_virtualbase_lexerId".}
proc fcQsciLexerSQL_override_virtual_lexerId(self: pointer, slot: int) {.importc: "QsciLexerSQL_override_virtual_lexerId".}
proc fQsciLexerSQL_virtualbase_autoCompletionFillups(self: pointer, ): cstring{.importc: "QsciLexerSQL_virtualbase_autoCompletionFillups".}
proc fcQsciLexerSQL_override_virtual_autoCompletionFillups(self: pointer, slot: int) {.importc: "QsciLexerSQL_override_virtual_autoCompletionFillups".}
proc fQsciLexerSQL_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array{.importc: "QsciLexerSQL_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerSQL_override_virtual_autoCompletionWordSeparators(self: pointer, slot: int) {.importc: "QsciLexerSQL_override_virtual_autoCompletionWordSeparators".}
proc fQsciLexerSQL_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerSQL_virtualbase_blockEnd".}
proc fcQsciLexerSQL_override_virtual_blockEnd(self: pointer, slot: int) {.importc: "QsciLexerSQL_override_virtual_blockEnd".}
proc fQsciLexerSQL_virtualbase_blockLookback(self: pointer, ): cint{.importc: "QsciLexerSQL_virtualbase_blockLookback".}
proc fcQsciLexerSQL_override_virtual_blockLookback(self: pointer, slot: int) {.importc: "QsciLexerSQL_override_virtual_blockLookback".}
proc fQsciLexerSQL_virtualbase_blockStart(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerSQL_virtualbase_blockStart".}
proc fcQsciLexerSQL_override_virtual_blockStart(self: pointer, slot: int) {.importc: "QsciLexerSQL_override_virtual_blockStart".}
proc fQsciLexerSQL_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerSQL_virtualbase_blockStartKeyword".}
proc fcQsciLexerSQL_override_virtual_blockStartKeyword(self: pointer, slot: int) {.importc: "QsciLexerSQL_override_virtual_blockStartKeyword".}
proc fQsciLexerSQL_virtualbase_braceStyle(self: pointer, ): cint{.importc: "QsciLexerSQL_virtualbase_braceStyle".}
proc fcQsciLexerSQL_override_virtual_braceStyle(self: pointer, slot: int) {.importc: "QsciLexerSQL_override_virtual_braceStyle".}
proc fQsciLexerSQL_virtualbase_caseSensitive(self: pointer, ): bool{.importc: "QsciLexerSQL_virtualbase_caseSensitive".}
proc fcQsciLexerSQL_override_virtual_caseSensitive(self: pointer, slot: int) {.importc: "QsciLexerSQL_override_virtual_caseSensitive".}
proc fQsciLexerSQL_virtualbase_color(self: pointer, style: cint): pointer{.importc: "QsciLexerSQL_virtualbase_color".}
proc fcQsciLexerSQL_override_virtual_color(self: pointer, slot: int) {.importc: "QsciLexerSQL_override_virtual_color".}
proc fQsciLexerSQL_virtualbase_eolFill(self: pointer, style: cint): bool{.importc: "QsciLexerSQL_virtualbase_eolFill".}
proc fcQsciLexerSQL_override_virtual_eolFill(self: pointer, slot: int) {.importc: "QsciLexerSQL_override_virtual_eolFill".}
proc fQsciLexerSQL_virtualbase_font(self: pointer, style: cint): pointer{.importc: "QsciLexerSQL_virtualbase_font".}
proc fcQsciLexerSQL_override_virtual_font(self: pointer, slot: int) {.importc: "QsciLexerSQL_override_virtual_font".}
proc fQsciLexerSQL_virtualbase_indentationGuideView(self: pointer, ): cint{.importc: "QsciLexerSQL_virtualbase_indentationGuideView".}
proc fcQsciLexerSQL_override_virtual_indentationGuideView(self: pointer, slot: int) {.importc: "QsciLexerSQL_override_virtual_indentationGuideView".}
proc fQsciLexerSQL_virtualbase_keywords(self: pointer, set: cint): cstring{.importc: "QsciLexerSQL_virtualbase_keywords".}
proc fcQsciLexerSQL_override_virtual_keywords(self: pointer, slot: int) {.importc: "QsciLexerSQL_override_virtual_keywords".}
proc fQsciLexerSQL_virtualbase_defaultStyle(self: pointer, ): cint{.importc: "QsciLexerSQL_virtualbase_defaultStyle".}
proc fcQsciLexerSQL_override_virtual_defaultStyle(self: pointer, slot: int) {.importc: "QsciLexerSQL_override_virtual_defaultStyle".}
proc fcQsciLexerSQL_override_virtual_description(self: pointer, slot: int) {.importc: "QsciLexerSQL_override_virtual_description".}
proc fQsciLexerSQL_virtualbase_paper(self: pointer, style: cint): pointer{.importc: "QsciLexerSQL_virtualbase_paper".}
proc fcQsciLexerSQL_override_virtual_paper(self: pointer, slot: int) {.importc: "QsciLexerSQL_override_virtual_paper".}
proc fQsciLexerSQL_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerSQL_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerSQL_override_virtual_defaultColorWithStyle(self: pointer, slot: int) {.importc: "QsciLexerSQL_override_virtual_defaultColorWithStyle".}
proc fQsciLexerSQL_virtualbase_defaultEolFill(self: pointer, style: cint): bool{.importc: "QsciLexerSQL_virtualbase_defaultEolFill".}
proc fcQsciLexerSQL_override_virtual_defaultEolFill(self: pointer, slot: int) {.importc: "QsciLexerSQL_override_virtual_defaultEolFill".}
proc fQsciLexerSQL_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerSQL_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerSQL_override_virtual_defaultFontWithStyle(self: pointer, slot: int) {.importc: "QsciLexerSQL_override_virtual_defaultFontWithStyle".}
proc fQsciLexerSQL_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerSQL_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerSQL_override_virtual_defaultPaperWithStyle(self: pointer, slot: int) {.importc: "QsciLexerSQL_override_virtual_defaultPaperWithStyle".}
proc fQsciLexerSQL_virtualbase_setEditor(self: pointer, editor: pointer): void{.importc: "QsciLexerSQL_virtualbase_setEditor".}
proc fcQsciLexerSQL_override_virtual_setEditor(self: pointer, slot: int) {.importc: "QsciLexerSQL_override_virtual_setEditor".}
proc fQsciLexerSQL_virtualbase_refreshProperties(self: pointer, ): void{.importc: "QsciLexerSQL_virtualbase_refreshProperties".}
proc fcQsciLexerSQL_override_virtual_refreshProperties(self: pointer, slot: int) {.importc: "QsciLexerSQL_override_virtual_refreshProperties".}
proc fQsciLexerSQL_virtualbase_styleBitsNeeded(self: pointer, ): cint{.importc: "QsciLexerSQL_virtualbase_styleBitsNeeded".}
proc fcQsciLexerSQL_override_virtual_styleBitsNeeded(self: pointer, slot: int) {.importc: "QsciLexerSQL_override_virtual_styleBitsNeeded".}
proc fQsciLexerSQL_virtualbase_wordCharacters(self: pointer, ): cstring{.importc: "QsciLexerSQL_virtualbase_wordCharacters".}
proc fcQsciLexerSQL_override_virtual_wordCharacters(self: pointer, slot: int) {.importc: "QsciLexerSQL_override_virtual_wordCharacters".}
proc fQsciLexerSQL_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void{.importc: "QsciLexerSQL_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerSQL_override_virtual_setAutoIndentStyle(self: pointer, slot: int) {.importc: "QsciLexerSQL_override_virtual_setAutoIndentStyle".}
proc fQsciLexerSQL_virtualbase_setColor(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerSQL_virtualbase_setColor".}
proc fcQsciLexerSQL_override_virtual_setColor(self: pointer, slot: int) {.importc: "QsciLexerSQL_override_virtual_setColor".}
proc fQsciLexerSQL_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void{.importc: "QsciLexerSQL_virtualbase_setEolFill".}
proc fcQsciLexerSQL_override_virtual_setEolFill(self: pointer, slot: int) {.importc: "QsciLexerSQL_override_virtual_setEolFill".}
proc fQsciLexerSQL_virtualbase_setFont(self: pointer, f: pointer, style: cint): void{.importc: "QsciLexerSQL_virtualbase_setFont".}
proc fcQsciLexerSQL_override_virtual_setFont(self: pointer, slot: int) {.importc: "QsciLexerSQL_override_virtual_setFont".}
proc fQsciLexerSQL_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerSQL_virtualbase_setPaper".}
proc fcQsciLexerSQL_override_virtual_setPaper(self: pointer, slot: int) {.importc: "QsciLexerSQL_override_virtual_setPaper".}
proc fQsciLexerSQL_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerSQL_virtualbase_readProperties".}
proc fcQsciLexerSQL_override_virtual_readProperties(self: pointer, slot: int) {.importc: "QsciLexerSQL_override_virtual_readProperties".}
proc fQsciLexerSQL_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerSQL_virtualbase_writeProperties".}
proc fcQsciLexerSQL_override_virtual_writeProperties(self: pointer, slot: int) {.importc: "QsciLexerSQL_override_virtual_writeProperties".}
proc fQsciLexerSQL_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QsciLexerSQL_virtualbase_event".}
proc fcQsciLexerSQL_override_virtual_event(self: pointer, slot: int) {.importc: "QsciLexerSQL_override_virtual_event".}
proc fQsciLexerSQL_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciLexerSQL_virtualbase_eventFilter".}
proc fcQsciLexerSQL_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciLexerSQL_override_virtual_eventFilter".}
proc fQsciLexerSQL_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciLexerSQL_virtualbase_timerEvent".}
proc fcQsciLexerSQL_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciLexerSQL_override_virtual_timerEvent".}
proc fQsciLexerSQL_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciLexerSQL_virtualbase_childEvent".}
proc fcQsciLexerSQL_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciLexerSQL_override_virtual_childEvent".}
proc fQsciLexerSQL_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciLexerSQL_virtualbase_customEvent".}
proc fcQsciLexerSQL_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciLexerSQL_override_virtual_customEvent".}
proc fQsciLexerSQL_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerSQL_virtualbase_connectNotify".}
proc fcQsciLexerSQL_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciLexerSQL_override_virtual_connectNotify".}
proc fQsciLexerSQL_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerSQL_virtualbase_disconnectNotify".}
proc fcQsciLexerSQL_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciLexerSQL_override_virtual_disconnectNotify".}
proc fcQsciLexerSQL_staticMetaObject(): pointer {.importc: "QsciLexerSQL_staticMetaObject".}
proc fcQsciLexerSQL_delete(self: pointer) {.importc: "QsciLexerSQL_delete".}


func init*(T: type gen_qscilexersql_types.QsciLexerSQL, h: ptr cQsciLexerSQL): gen_qscilexersql_types.QsciLexerSQL =
  T(h: h)
proc create*(T: type gen_qscilexersql_types.QsciLexerSQL, ): gen_qscilexersql_types.QsciLexerSQL =
  gen_qscilexersql_types.QsciLexerSQL.init(fcQsciLexerSQL_new())

proc create*(T: type gen_qscilexersql_types.QsciLexerSQL, parent: gen_qobject.QObject): gen_qscilexersql_types.QsciLexerSQL =
  gen_qscilexersql_types.QsciLexerSQL.init(fcQsciLexerSQL_new2(parent.h))

proc metaObject*(self: gen_qscilexersql_types.QsciLexerSQL, ): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerSQL_metaObject(self.h))

proc metacast*(self: gen_qscilexersql_types.QsciLexerSQL, param1: cstring): pointer =
  fcQsciLexerSQL_metacast(self.h, param1)

proc metacall*(self: gen_qscilexersql_types.QsciLexerSQL, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerSQL_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexersql_types.QsciLexerSQL, s: cstring): string =
  let v_ms = fcQsciLexerSQL_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexersql_types.QsciLexerSQL, ): cstring =
  (fcQsciLexerSQL_language(self.h))

proc lexer*(self: gen_qscilexersql_types.QsciLexerSQL, ): cstring =
  (fcQsciLexerSQL_lexer(self.h))

proc braceStyle*(self: gen_qscilexersql_types.QsciLexerSQL, ): cint =
  fcQsciLexerSQL_braceStyle(self.h)

proc defaultColor*(self: gen_qscilexersql_types.QsciLexerSQL, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fcQsciLexerSQL_defaultColor(self.h, style))

proc defaultEolFill*(self: gen_qscilexersql_types.QsciLexerSQL, style: cint): bool =
  fcQsciLexerSQL_defaultEolFill(self.h, style)

proc defaultFont*(self: gen_qscilexersql_types.QsciLexerSQL, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fcQsciLexerSQL_defaultFont(self.h, style))

proc defaultPaper*(self: gen_qscilexersql_types.QsciLexerSQL, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fcQsciLexerSQL_defaultPaper(self.h, style))

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

proc QsciLexerSQLmetaObject*(self: gen_qscilexersql_types.QsciLexerSQL, ): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fQsciLexerSQL_virtualbase_metaObject(self.h))

type QsciLexerSQLmetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qscilexersql_types.QsciLexerSQL, slot: QsciLexerSQLmetaObjectProc) =
  # TODO check subclass
  var tmp = new QsciLexerSQLmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_metaObject(self: ptr cQsciLexerSQL, slot: int): pointer {.exportc: "miqt_exec_callback_QsciLexerSQL_metaObject ".} =
  var nimfunc = cast[ptr QsciLexerSQLmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QsciLexerSQLmetacast*(self: gen_qscilexersql_types.QsciLexerSQL, param1: cstring): pointer =
  fQsciLexerSQL_virtualbase_metacast(self.h, param1)

type QsciLexerSQLmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qscilexersql_types.QsciLexerSQL, slot: QsciLexerSQLmetacastProc) =
  # TODO check subclass
  var tmp = new QsciLexerSQLmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_metacast(self: ptr cQsciLexerSQL, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciLexerSQL_metacast ".} =
  var nimfunc = cast[ptr QsciLexerSQLmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerSQLmetacall*(self: gen_qscilexersql_types.QsciLexerSQL, param1: cint, param2: cint, param3: pointer): cint =
  fQsciLexerSQL_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerSQLmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qscilexersql_types.QsciLexerSQL, slot: QsciLexerSQLmetacallProc) =
  # TODO check subclass
  var tmp = new QsciLexerSQLmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_metacall(self: ptr cQsciLexerSQL, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerSQL_metacall ".} =
  var nimfunc = cast[ptr QsciLexerSQLmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QsciLexerSQLsetBackslashEscapes*(self: gen_qscilexersql_types.QsciLexerSQL, enable: bool): void =
  fQsciLexerSQL_virtualbase_setBackslashEscapes(self.h, enable)

type QsciLexerSQLsetBackslashEscapesProc* = proc(enable: bool): void
proc onsetBackslashEscapes*(self: gen_qscilexersql_types.QsciLexerSQL, slot: QsciLexerSQLsetBackslashEscapesProc) =
  # TODO check subclass
  var tmp = new QsciLexerSQLsetBackslashEscapesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_setBackslashEscapes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_setBackslashEscapes(self: ptr cQsciLexerSQL, slot: int, enable: bool): void {.exportc: "miqt_exec_callback_QsciLexerSQL_setBackslashEscapes ".} =
  var nimfunc = cast[ptr QsciLexerSQLsetBackslashEscapesProc](cast[pointer](slot))
  let slotval1 = enable


  nimfunc[](slotval1)
proc QsciLexerSQLsetFoldComments*(self: gen_qscilexersql_types.QsciLexerSQL, fold: bool): void =
  fQsciLexerSQL_virtualbase_setFoldComments(self.h, fold)

type QsciLexerSQLsetFoldCommentsProc* = proc(fold: bool): void
proc onsetFoldComments*(self: gen_qscilexersql_types.QsciLexerSQL, slot: QsciLexerSQLsetFoldCommentsProc) =
  # TODO check subclass
  var tmp = new QsciLexerSQLsetFoldCommentsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_setFoldComments(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_setFoldComments(self: ptr cQsciLexerSQL, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerSQL_setFoldComments ".} =
  var nimfunc = cast[ptr QsciLexerSQLsetFoldCommentsProc](cast[pointer](slot))
  let slotval1 = fold


  nimfunc[](slotval1)
proc QsciLexerSQLsetFoldCompact*(self: gen_qscilexersql_types.QsciLexerSQL, fold: bool): void =
  fQsciLexerSQL_virtualbase_setFoldCompact(self.h, fold)

type QsciLexerSQLsetFoldCompactProc* = proc(fold: bool): void
proc onsetFoldCompact*(self: gen_qscilexersql_types.QsciLexerSQL, slot: QsciLexerSQLsetFoldCompactProc) =
  # TODO check subclass
  var tmp = new QsciLexerSQLsetFoldCompactProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_setFoldCompact(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_setFoldCompact(self: ptr cQsciLexerSQL, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerSQL_setFoldCompact ".} =
  var nimfunc = cast[ptr QsciLexerSQLsetFoldCompactProc](cast[pointer](slot))
  let slotval1 = fold


  nimfunc[](slotval1)
type QsciLexerSQLlanguageProc* = proc(): cstring
proc onlanguage*(self: gen_qscilexersql_types.QsciLexerSQL, slot: QsciLexerSQLlanguageProc) =
  # TODO check subclass
  var tmp = new QsciLexerSQLlanguageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_language(self: ptr cQsciLexerSQL, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerSQL_language ".} =
  var nimfunc = cast[ptr QsciLexerSQLlanguageProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerSQLlexer*(self: gen_qscilexersql_types.QsciLexerSQL, ): cstring =
  (fQsciLexerSQL_virtualbase_lexer(self.h))

type QsciLexerSQLlexerProc* = proc(): cstring
proc onlexer*(self: gen_qscilexersql_types.QsciLexerSQL, slot: QsciLexerSQLlexerProc) =
  # TODO check subclass
  var tmp = new QsciLexerSQLlexerProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_lexer(self: ptr cQsciLexerSQL, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerSQL_lexer ".} =
  var nimfunc = cast[ptr QsciLexerSQLlexerProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerSQLlexerId*(self: gen_qscilexersql_types.QsciLexerSQL, ): cint =
  fQsciLexerSQL_virtualbase_lexerId(self.h)

type QsciLexerSQLlexerIdProc* = proc(): cint
proc onlexerId*(self: gen_qscilexersql_types.QsciLexerSQL, slot: QsciLexerSQLlexerIdProc) =
  # TODO check subclass
  var tmp = new QsciLexerSQLlexerIdProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_lexerId(self: ptr cQsciLexerSQL, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerSQL_lexerId ".} =
  var nimfunc = cast[ptr QsciLexerSQLlexerIdProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerSQLautoCompletionFillups*(self: gen_qscilexersql_types.QsciLexerSQL, ): cstring =
  (fQsciLexerSQL_virtualbase_autoCompletionFillups(self.h))

type QsciLexerSQLautoCompletionFillupsProc* = proc(): cstring
proc onautoCompletionFillups*(self: gen_qscilexersql_types.QsciLexerSQL, slot: QsciLexerSQLautoCompletionFillupsProc) =
  # TODO check subclass
  var tmp = new QsciLexerSQLautoCompletionFillupsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_autoCompletionFillups(self: ptr cQsciLexerSQL, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerSQL_autoCompletionFillups ".} =
  var nimfunc = cast[ptr QsciLexerSQLautoCompletionFillupsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerSQLautoCompletionWordSeparators*(self: gen_qscilexersql_types.QsciLexerSQL, ): seq[string] =
  var v_ma = fQsciLexerSQL_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerSQLautoCompletionWordSeparatorsProc* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: gen_qscilexersql_types.QsciLexerSQL, slot: QsciLexerSQLautoCompletionWordSeparatorsProc) =
  # TODO check subclass
  var tmp = new QsciLexerSQLautoCompletionWordSeparatorsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_autoCompletionWordSeparators(self: ptr cQsciLexerSQL, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerSQL_autoCompletionWordSeparators ".} =
  var nimfunc = cast[ptr QsciLexerSQLautoCompletionWordSeparatorsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QsciLexerSQLblockEnd*(self: gen_qscilexersql_types.QsciLexerSQL, style: ptr cint): cstring =
  (fQsciLexerSQL_virtualbase_blockEnd(self.h, style))

type QsciLexerSQLblockEndProc* = proc(style: ptr cint): cstring
proc onblockEnd*(self: gen_qscilexersql_types.QsciLexerSQL, slot: QsciLexerSQLblockEndProc) =
  # TODO check subclass
  var tmp = new QsciLexerSQLblockEndProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_blockEnd(self: ptr cQsciLexerSQL, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerSQL_blockEnd ".} =
  var nimfunc = cast[ptr QsciLexerSQLblockEndProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerSQLblockLookback*(self: gen_qscilexersql_types.QsciLexerSQL, ): cint =
  fQsciLexerSQL_virtualbase_blockLookback(self.h)

type QsciLexerSQLblockLookbackProc* = proc(): cint
proc onblockLookback*(self: gen_qscilexersql_types.QsciLexerSQL, slot: QsciLexerSQLblockLookbackProc) =
  # TODO check subclass
  var tmp = new QsciLexerSQLblockLookbackProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_blockLookback(self: ptr cQsciLexerSQL, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerSQL_blockLookback ".} =
  var nimfunc = cast[ptr QsciLexerSQLblockLookbackProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerSQLblockStart*(self: gen_qscilexersql_types.QsciLexerSQL, style: ptr cint): cstring =
  (fQsciLexerSQL_virtualbase_blockStart(self.h, style))

type QsciLexerSQLblockStartProc* = proc(style: ptr cint): cstring
proc onblockStart*(self: gen_qscilexersql_types.QsciLexerSQL, slot: QsciLexerSQLblockStartProc) =
  # TODO check subclass
  var tmp = new QsciLexerSQLblockStartProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_blockStart(self: ptr cQsciLexerSQL, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerSQL_blockStart ".} =
  var nimfunc = cast[ptr QsciLexerSQLblockStartProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerSQLblockStartKeyword*(self: gen_qscilexersql_types.QsciLexerSQL, style: ptr cint): cstring =
  (fQsciLexerSQL_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerSQLblockStartKeywordProc* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: gen_qscilexersql_types.QsciLexerSQL, slot: QsciLexerSQLblockStartKeywordProc) =
  # TODO check subclass
  var tmp = new QsciLexerSQLblockStartKeywordProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_blockStartKeyword(self: ptr cQsciLexerSQL, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerSQL_blockStartKeyword ".} =
  var nimfunc = cast[ptr QsciLexerSQLblockStartKeywordProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerSQLbraceStyle*(self: gen_qscilexersql_types.QsciLexerSQL, ): cint =
  fQsciLexerSQL_virtualbase_braceStyle(self.h)

type QsciLexerSQLbraceStyleProc* = proc(): cint
proc onbraceStyle*(self: gen_qscilexersql_types.QsciLexerSQL, slot: QsciLexerSQLbraceStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerSQLbraceStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_braceStyle(self: ptr cQsciLexerSQL, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerSQL_braceStyle ".} =
  var nimfunc = cast[ptr QsciLexerSQLbraceStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerSQLcaseSensitive*(self: gen_qscilexersql_types.QsciLexerSQL, ): bool =
  fQsciLexerSQL_virtualbase_caseSensitive(self.h)

type QsciLexerSQLcaseSensitiveProc* = proc(): bool
proc oncaseSensitive*(self: gen_qscilexersql_types.QsciLexerSQL, slot: QsciLexerSQLcaseSensitiveProc) =
  # TODO check subclass
  var tmp = new QsciLexerSQLcaseSensitiveProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_caseSensitive(self: ptr cQsciLexerSQL, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerSQL_caseSensitive ".} =
  var nimfunc = cast[ptr QsciLexerSQLcaseSensitiveProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerSQLcolor*(self: gen_qscilexersql_types.QsciLexerSQL, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerSQL_virtualbase_color(self.h, style))

type QsciLexerSQLcolorProc* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: gen_qscilexersql_types.QsciLexerSQL, slot: QsciLexerSQLcolorProc) =
  # TODO check subclass
  var tmp = new QsciLexerSQLcolorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_color(self: ptr cQsciLexerSQL, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerSQL_color ".} =
  var nimfunc = cast[ptr QsciLexerSQLcolorProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerSQLeolFill*(self: gen_qscilexersql_types.QsciLexerSQL, style: cint): bool =
  fQsciLexerSQL_virtualbase_eolFill(self.h, style)

type QsciLexerSQLeolFillProc* = proc(style: cint): bool
proc oneolFill*(self: gen_qscilexersql_types.QsciLexerSQL, slot: QsciLexerSQLeolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerSQLeolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_eolFill(self: ptr cQsciLexerSQL, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerSQL_eolFill ".} =
  var nimfunc = cast[ptr QsciLexerSQLeolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerSQLfont*(self: gen_qscilexersql_types.QsciLexerSQL, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fQsciLexerSQL_virtualbase_font(self.h, style))

type QsciLexerSQLfontProc* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: gen_qscilexersql_types.QsciLexerSQL, slot: QsciLexerSQLfontProc) =
  # TODO check subclass
  var tmp = new QsciLexerSQLfontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_font(self: ptr cQsciLexerSQL, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerSQL_font ".} =
  var nimfunc = cast[ptr QsciLexerSQLfontProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerSQLindentationGuideView*(self: gen_qscilexersql_types.QsciLexerSQL, ): cint =
  fQsciLexerSQL_virtualbase_indentationGuideView(self.h)

type QsciLexerSQLindentationGuideViewProc* = proc(): cint
proc onindentationGuideView*(self: gen_qscilexersql_types.QsciLexerSQL, slot: QsciLexerSQLindentationGuideViewProc) =
  # TODO check subclass
  var tmp = new QsciLexerSQLindentationGuideViewProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_indentationGuideView(self: ptr cQsciLexerSQL, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerSQL_indentationGuideView ".} =
  var nimfunc = cast[ptr QsciLexerSQLindentationGuideViewProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerSQLkeywords*(self: gen_qscilexersql_types.QsciLexerSQL, set: cint): cstring =
  (fQsciLexerSQL_virtualbase_keywords(self.h, set))

type QsciLexerSQLkeywordsProc* = proc(set: cint): cstring
proc onkeywords*(self: gen_qscilexersql_types.QsciLexerSQL, slot: QsciLexerSQLkeywordsProc) =
  # TODO check subclass
  var tmp = new QsciLexerSQLkeywordsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_keywords(self: ptr cQsciLexerSQL, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerSQL_keywords ".} =
  var nimfunc = cast[ptr QsciLexerSQLkeywordsProc](cast[pointer](slot))
  let slotval1 = set


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerSQLdefaultStyle*(self: gen_qscilexersql_types.QsciLexerSQL, ): cint =
  fQsciLexerSQL_virtualbase_defaultStyle(self.h)

type QsciLexerSQLdefaultStyleProc* = proc(): cint
proc ondefaultStyle*(self: gen_qscilexersql_types.QsciLexerSQL, slot: QsciLexerSQLdefaultStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerSQLdefaultStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_defaultStyle(self: ptr cQsciLexerSQL, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerSQL_defaultStyle ".} =
  var nimfunc = cast[ptr QsciLexerSQLdefaultStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QsciLexerSQLdescriptionProc* = proc(style: cint): string
proc ondescription*(self: gen_qscilexersql_types.QsciLexerSQL, slot: QsciLexerSQLdescriptionProc) =
  # TODO check subclass
  var tmp = new QsciLexerSQLdescriptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_description(self: ptr cQsciLexerSQL, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerSQL_description ".} =
  var nimfunc = cast[ptr QsciLexerSQLdescriptionProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc QsciLexerSQLpaper*(self: gen_qscilexersql_types.QsciLexerSQL, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerSQL_virtualbase_paper(self.h, style))

type QsciLexerSQLpaperProc* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: gen_qscilexersql_types.QsciLexerSQL, slot: QsciLexerSQLpaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerSQLpaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_paper(self: ptr cQsciLexerSQL, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerSQL_paper ".} =
  var nimfunc = cast[ptr QsciLexerSQLpaperProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerSQLdefaultColor*(self: gen_qscilexersql_types.QsciLexerSQL, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerSQL_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerSQLdefaultColorWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColor*(self: gen_qscilexersql_types.QsciLexerSQL, slot: QsciLexerSQLdefaultColorWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerSQLdefaultColorWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_defaultColorWithStyle(self: ptr cQsciLexerSQL, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerSQL_defaultColorWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerSQLdefaultColorWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerSQLdefaultEolFill*(self: gen_qscilexersql_types.QsciLexerSQL, style: cint): bool =
  fQsciLexerSQL_virtualbase_defaultEolFill(self.h, style)

type QsciLexerSQLdefaultEolFillProc* = proc(style: cint): bool
proc ondefaultEolFill*(self: gen_qscilexersql_types.QsciLexerSQL, slot: QsciLexerSQLdefaultEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerSQLdefaultEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_defaultEolFill(self: ptr cQsciLexerSQL, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerSQL_defaultEolFill ".} =
  var nimfunc = cast[ptr QsciLexerSQLdefaultEolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerSQLdefaultFont*(self: gen_qscilexersql_types.QsciLexerSQL, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fQsciLexerSQL_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerSQLdefaultFontWithStyleProc* = proc(style: cint): gen_qfont.QFont
proc ondefaultFont*(self: gen_qscilexersql_types.QsciLexerSQL, slot: QsciLexerSQLdefaultFontWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerSQLdefaultFontWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_defaultFontWithStyle(self: ptr cQsciLexerSQL, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerSQL_defaultFontWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerSQLdefaultFontWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerSQLdefaultPaper*(self: gen_qscilexersql_types.QsciLexerSQL, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerSQL_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerSQLdefaultPaperWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaper*(self: gen_qscilexersql_types.QsciLexerSQL, slot: QsciLexerSQLdefaultPaperWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerSQLdefaultPaperWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_defaultPaperWithStyle(self: ptr cQsciLexerSQL, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerSQL_defaultPaperWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerSQLdefaultPaperWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerSQLsetEditor*(self: gen_qscilexersql_types.QsciLexerSQL, editor: gen_qsciscintilla.QsciScintilla): void =
  fQsciLexerSQL_virtualbase_setEditor(self.h, editor.h)

type QsciLexerSQLsetEditorProc* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: gen_qscilexersql_types.QsciLexerSQL, slot: QsciLexerSQLsetEditorProc) =
  # TODO check subclass
  var tmp = new QsciLexerSQLsetEditorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_setEditor(self: ptr cQsciLexerSQL, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerSQL_setEditor ".} =
  var nimfunc = cast[ptr QsciLexerSQLsetEditorProc](cast[pointer](slot))
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](slotval1)
proc QsciLexerSQLrefreshProperties*(self: gen_qscilexersql_types.QsciLexerSQL, ): void =
  fQsciLexerSQL_virtualbase_refreshProperties(self.h)

type QsciLexerSQLrefreshPropertiesProc* = proc(): void
proc onrefreshProperties*(self: gen_qscilexersql_types.QsciLexerSQL, slot: QsciLexerSQLrefreshPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerSQLrefreshPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_refreshProperties(self: ptr cQsciLexerSQL, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerSQL_refreshProperties ".} =
  var nimfunc = cast[ptr QsciLexerSQLrefreshPropertiesProc](cast[pointer](slot))

  nimfunc[]()
proc QsciLexerSQLstyleBitsNeeded*(self: gen_qscilexersql_types.QsciLexerSQL, ): cint =
  fQsciLexerSQL_virtualbase_styleBitsNeeded(self.h)

type QsciLexerSQLstyleBitsNeededProc* = proc(): cint
proc onstyleBitsNeeded*(self: gen_qscilexersql_types.QsciLexerSQL, slot: QsciLexerSQLstyleBitsNeededProc) =
  # TODO check subclass
  var tmp = new QsciLexerSQLstyleBitsNeededProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_styleBitsNeeded(self: ptr cQsciLexerSQL, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerSQL_styleBitsNeeded ".} =
  var nimfunc = cast[ptr QsciLexerSQLstyleBitsNeededProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerSQLwordCharacters*(self: gen_qscilexersql_types.QsciLexerSQL, ): cstring =
  (fQsciLexerSQL_virtualbase_wordCharacters(self.h))

type QsciLexerSQLwordCharactersProc* = proc(): cstring
proc onwordCharacters*(self: gen_qscilexersql_types.QsciLexerSQL, slot: QsciLexerSQLwordCharactersProc) =
  # TODO check subclass
  var tmp = new QsciLexerSQLwordCharactersProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_wordCharacters(self: ptr cQsciLexerSQL, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerSQL_wordCharacters ".} =
  var nimfunc = cast[ptr QsciLexerSQLwordCharactersProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerSQLsetAutoIndentStyle*(self: gen_qscilexersql_types.QsciLexerSQL, autoindentstyle: cint): void =
  fQsciLexerSQL_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerSQLsetAutoIndentStyleProc* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: gen_qscilexersql_types.QsciLexerSQL, slot: QsciLexerSQLsetAutoIndentStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerSQLsetAutoIndentStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_setAutoIndentStyle(self: ptr cQsciLexerSQL, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerSQL_setAutoIndentStyle ".} =
  var nimfunc = cast[ptr QsciLexerSQLsetAutoIndentStyleProc](cast[pointer](slot))
  let slotval1 = autoindentstyle


  nimfunc[](slotval1)
proc QsciLexerSQLsetColor*(self: gen_qscilexersql_types.QsciLexerSQL, c: gen_qcolor.QColor, style: cint): void =
  fQsciLexerSQL_virtualbase_setColor(self.h, c.h, style)

type QsciLexerSQLsetColorProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: gen_qscilexersql_types.QsciLexerSQL, slot: QsciLexerSQLsetColorProc) =
  # TODO check subclass
  var tmp = new QsciLexerSQLsetColorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_setColor(self: ptr cQsciLexerSQL, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerSQL_setColor ".} =
  var nimfunc = cast[ptr QsciLexerSQLsetColorProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerSQLsetEolFill*(self: gen_qscilexersql_types.QsciLexerSQL, eoffill: bool, style: cint): void =
  fQsciLexerSQL_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerSQLsetEolFillProc* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: gen_qscilexersql_types.QsciLexerSQL, slot: QsciLexerSQLsetEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerSQLsetEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_setEolFill(self: ptr cQsciLexerSQL, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerSQL_setEolFill ".} =
  var nimfunc = cast[ptr QsciLexerSQLsetEolFillProc](cast[pointer](slot))
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerSQLsetFont*(self: gen_qscilexersql_types.QsciLexerSQL, f: gen_qfont.QFont, style: cint): void =
  fQsciLexerSQL_virtualbase_setFont(self.h, f.h, style)

type QsciLexerSQLsetFontProc* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: gen_qscilexersql_types.QsciLexerSQL, slot: QsciLexerSQLsetFontProc) =
  # TODO check subclass
  var tmp = new QsciLexerSQLsetFontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_setFont(self: ptr cQsciLexerSQL, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerSQL_setFont ".} =
  var nimfunc = cast[ptr QsciLexerSQLsetFontProc](cast[pointer](slot))
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerSQLsetPaper*(self: gen_qscilexersql_types.QsciLexerSQL, c: gen_qcolor.QColor, style: cint): void =
  fQsciLexerSQL_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerSQLsetPaperProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: gen_qscilexersql_types.QsciLexerSQL, slot: QsciLexerSQLsetPaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerSQLsetPaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_setPaper(self: ptr cQsciLexerSQL, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerSQL_setPaper ".} =
  var nimfunc = cast[ptr QsciLexerSQLsetPaperProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerSQLreadProperties*(self: gen_qscilexersql_types.QsciLexerSQL, qs: gen_qsettings.QSettings, prefix: string): bool =
  fQsciLexerSQL_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerSQLreadPropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: gen_qscilexersql_types.QsciLexerSQL, slot: QsciLexerSQLreadPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerSQLreadPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_readProperties(self: ptr cQsciLexerSQL, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerSQL_readProperties ".} =
  var nimfunc = cast[ptr QsciLexerSQLreadPropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerSQLwriteProperties*(self: gen_qscilexersql_types.QsciLexerSQL, qs: gen_qsettings.QSettings, prefix: string): bool =
  fQsciLexerSQL_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerSQLwritePropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: gen_qscilexersql_types.QsciLexerSQL, slot: QsciLexerSQLwritePropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerSQLwritePropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_writeProperties(self: ptr cQsciLexerSQL, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerSQL_writeProperties ".} =
  var nimfunc = cast[ptr QsciLexerSQLwritePropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerSQLevent*(self: gen_qscilexersql_types.QsciLexerSQL, event: gen_qcoreevent.QEvent): bool =
  fQsciLexerSQL_virtualbase_event(self.h, event.h)

type QsciLexerSQLeventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qscilexersql_types.QsciLexerSQL, slot: QsciLexerSQLeventProc) =
  # TODO check subclass
  var tmp = new QsciLexerSQLeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_event(self: ptr cQsciLexerSQL, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerSQL_event ".} =
  var nimfunc = cast[ptr QsciLexerSQLeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerSQLeventFilter*(self: gen_qscilexersql_types.QsciLexerSQL, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =
  fQsciLexerSQL_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerSQLeventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qscilexersql_types.QsciLexerSQL, slot: QsciLexerSQLeventFilterProc) =
  # TODO check subclass
  var tmp = new QsciLexerSQLeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_eventFilter(self: ptr cQsciLexerSQL, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerSQL_eventFilter ".} =
  var nimfunc = cast[ptr QsciLexerSQLeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerSQLtimerEvent*(self: gen_qscilexersql_types.QsciLexerSQL, event: gen_qcoreevent.QTimerEvent): void =
  fQsciLexerSQL_virtualbase_timerEvent(self.h, event.h)

type QsciLexerSQLtimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qscilexersql_types.QsciLexerSQL, slot: QsciLexerSQLtimerEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerSQLtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_timerEvent(self: ptr cQsciLexerSQL, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerSQL_timerEvent ".} =
  var nimfunc = cast[ptr QsciLexerSQLtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerSQLchildEvent*(self: gen_qscilexersql_types.QsciLexerSQL, event: gen_qcoreevent.QChildEvent): void =
  fQsciLexerSQL_virtualbase_childEvent(self.h, event.h)

type QsciLexerSQLchildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qscilexersql_types.QsciLexerSQL, slot: QsciLexerSQLchildEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerSQLchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_childEvent(self: ptr cQsciLexerSQL, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerSQL_childEvent ".} =
  var nimfunc = cast[ptr QsciLexerSQLchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerSQLcustomEvent*(self: gen_qscilexersql_types.QsciLexerSQL, event: gen_qcoreevent.QEvent): void =
  fQsciLexerSQL_virtualbase_customEvent(self.h, event.h)

type QsciLexerSQLcustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qscilexersql_types.QsciLexerSQL, slot: QsciLexerSQLcustomEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerSQLcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_customEvent(self: ptr cQsciLexerSQL, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerSQL_customEvent ".} =
  var nimfunc = cast[ptr QsciLexerSQLcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerSQLconnectNotify*(self: gen_qscilexersql_types.QsciLexerSQL, signal: gen_qmetaobject.QMetaMethod): void =
  fQsciLexerSQL_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerSQLconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qscilexersql_types.QsciLexerSQL, slot: QsciLexerSQLconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerSQLconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_connectNotify(self: ptr cQsciLexerSQL, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerSQL_connectNotify ".} =
  var nimfunc = cast[ptr QsciLexerSQLconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QsciLexerSQLdisconnectNotify*(self: gen_qscilexersql_types.QsciLexerSQL, signal: gen_qmetaobject.QMetaMethod): void =
  fQsciLexerSQL_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerSQLdisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qscilexersql_types.QsciLexerSQL, slot: QsciLexerSQLdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerSQLdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_disconnectNotify(self: ptr cQsciLexerSQL, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerSQL_disconnectNotify ".} =
  var nimfunc = cast[ptr QsciLexerSQLdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qscilexersql_types.QsciLexerSQL): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerSQL_staticMetaObject())
proc delete*(self: gen_qscilexersql_types.QsciLexerSQL) =
  fcQsciLexerSQL_delete(self.h)
