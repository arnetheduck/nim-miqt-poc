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


type QsciLexerSQLEnum* = cint
const
  QsciLexerSQLDefault* = 0
  QsciLexerSQLComment* = 1
  QsciLexerSQLCommentLine* = 2
  QsciLexerSQLCommentDoc* = 3
  QsciLexerSQLNumber* = 4
  QsciLexerSQLKeyword* = 5
  QsciLexerSQLDoubleQuotedString* = 6
  QsciLexerSQLSingleQuotedString* = 7
  QsciLexerSQLPlusKeyword* = 8
  QsciLexerSQLPlusPrompt* = 9
  QsciLexerSQLOperator* = 10
  QsciLexerSQLIdentifier* = 11
  QsciLexerSQLPlusComment* = 13
  QsciLexerSQLCommentLineHash* = 15
  QsciLexerSQLCommentDocKeyword* = 17
  QsciLexerSQLCommentDocKeywordError* = 18
  QsciLexerSQLKeywordSet5* = 19
  QsciLexerSQLKeywordSet6* = 20
  QsciLexerSQLKeywordSet7* = 21
  QsciLexerSQLKeywordSet8* = 22
  QsciLexerSQLQuotedIdentifier* = 23
  QsciLexerSQLQuotedOperator* = 24



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


func init*(T: type QsciLexerSQL, h: ptr cQsciLexerSQL): QsciLexerSQL =
  T(h: h)
proc create*(T: type QsciLexerSQL, ): QsciLexerSQL =

  QsciLexerSQL.init(fcQsciLexerSQL_new())
proc create*(T: type QsciLexerSQL, parent: gen_qobject.QObject): QsciLexerSQL =

  QsciLexerSQL.init(fcQsciLexerSQL_new2(parent.h))
proc metaObject*(self: QsciLexerSQL, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQsciLexerSQL_metaObject(self.h))

proc metacast*(self: QsciLexerSQL, param1: cstring): pointer =

  fcQsciLexerSQL_metacast(self.h, param1)

proc metacall*(self: QsciLexerSQL, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQsciLexerSQL_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QsciLexerSQL, s: cstring): string =

  let v_ms = fcQsciLexerSQL_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: QsciLexerSQL, ): cstring =

  (fcQsciLexerSQL_language(self.h))

proc lexer*(self: QsciLexerSQL, ): cstring =

  (fcQsciLexerSQL_lexer(self.h))

proc braceStyle*(self: QsciLexerSQL, ): cint =

  fcQsciLexerSQL_braceStyle(self.h)

proc defaultColor*(self: QsciLexerSQL, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerSQL_defaultColor(self.h, style))

proc defaultEolFill*(self: QsciLexerSQL, style: cint): bool =

  fcQsciLexerSQL_defaultEolFill(self.h, style)

proc defaultFont*(self: QsciLexerSQL, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQsciLexerSQL_defaultFont(self.h, style))

proc defaultPaper*(self: QsciLexerSQL, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerSQL_defaultPaper(self.h, style))

proc keywords*(self: QsciLexerSQL, set: cint): cstring =

  (fcQsciLexerSQL_keywords(self.h, set))

proc description*(self: QsciLexerSQL, style: cint): string =

  let v_ms = fcQsciLexerSQL_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: QsciLexerSQL, ): void =

  fcQsciLexerSQL_refreshProperties(self.h)

proc backslashEscapes*(self: QsciLexerSQL, ): bool =

  fcQsciLexerSQL_backslashEscapes(self.h)

proc setDottedWords*(self: QsciLexerSQL, enable: bool): void =

  fcQsciLexerSQL_setDottedWords(self.h, enable)

proc dottedWords*(self: QsciLexerSQL, ): bool =

  fcQsciLexerSQL_dottedWords(self.h)

proc setFoldAtElse*(self: QsciLexerSQL, fold: bool): void =

  fcQsciLexerSQL_setFoldAtElse(self.h, fold)

proc foldAtElse*(self: QsciLexerSQL, ): bool =

  fcQsciLexerSQL_foldAtElse(self.h)

proc foldComments*(self: QsciLexerSQL, ): bool =

  fcQsciLexerSQL_foldComments(self.h)

proc foldCompact*(self: QsciLexerSQL, ): bool =

  fcQsciLexerSQL_foldCompact(self.h)

proc setFoldOnlyBegin*(self: QsciLexerSQL, fold: bool): void =

  fcQsciLexerSQL_setFoldOnlyBegin(self.h, fold)

proc foldOnlyBegin*(self: QsciLexerSQL, ): bool =

  fcQsciLexerSQL_foldOnlyBegin(self.h)

proc setHashComments*(self: QsciLexerSQL, enable: bool): void =

  fcQsciLexerSQL_setHashComments(self.h, enable)

proc hashComments*(self: QsciLexerSQL, ): bool =

  fcQsciLexerSQL_hashComments(self.h)

proc setQuotedIdentifiers*(self: QsciLexerSQL, enable: bool): void =

  fcQsciLexerSQL_setQuotedIdentifiers(self.h, enable)

proc quotedIdentifiers*(self: QsciLexerSQL, ): bool =

  fcQsciLexerSQL_quotedIdentifiers(self.h)

proc setBackslashEscapes*(self: QsciLexerSQL, enable: bool): void =

  fcQsciLexerSQL_setBackslashEscapes(self.h, enable)

proc setFoldComments*(self: QsciLexerSQL, fold: bool): void =

  fcQsciLexerSQL_setFoldComments(self.h, fold)

proc setFoldCompact*(self: QsciLexerSQL, fold: bool): void =

  fcQsciLexerSQL_setFoldCompact(self.h, fold)

proc tr2*(_: type QsciLexerSQL, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerSQL_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QsciLexerSQL, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerSQL_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QsciLexerSQL, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQsciLexerSQL_virtualbase_metaObject(self.h))

type QsciLexerSQLmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QsciLexerSQL, slot: proc(super: QsciLexerSQLmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSQLmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_metaObject(self: ptr cQsciLexerSQL, slot: int): pointer {.exportc: "miqt_exec_callback_QsciLexerSQL_metaObject ".} =
  type Cb = proc(super: QsciLexerSQLmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QsciLexerSQL(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QsciLexerSQL, param1: cstring): pointer =


  fQsciLexerSQL_virtualbase_metacast(self.h, param1)

type QsciLexerSQLmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QsciLexerSQL, slot: proc(super: QsciLexerSQLmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSQLmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_metacast(self: ptr cQsciLexerSQL, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciLexerSQL_metacast ".} =
  type Cb = proc(super: QsciLexerSQLmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QsciLexerSQL(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QsciLexerSQL, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQsciLexerSQL_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerSQLmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QsciLexerSQL, slot: proc(super: QsciLexerSQLmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSQLmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_metacall(self: ptr cQsciLexerSQL, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerSQL_metacall ".} =
  type Cb = proc(super: QsciLexerSQLmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QsciLexerSQL(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_setBackslashEscapes(self: QsciLexerSQL, enable: bool): void =


  fQsciLexerSQL_virtualbase_setBackslashEscapes(self.h, enable)

type QsciLexerSQLsetBackslashEscapesBase* = proc(enable: bool): void
proc onsetBackslashEscapes*(self: QsciLexerSQL, slot: proc(super: QsciLexerSQLsetBackslashEscapesBase, enable: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSQLsetBackslashEscapesBase, enable: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_setBackslashEscapes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_setBackslashEscapes(self: ptr cQsciLexerSQL, slot: int, enable: bool): void {.exportc: "miqt_exec_callback_QsciLexerSQL_setBackslashEscapes ".} =
  type Cb = proc(super: QsciLexerSQLsetBackslashEscapesBase, enable: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(enable: bool): auto =
    callVirtualBase_setBackslashEscapes(QsciLexerSQL(h: self), enable)
  let slotval1 = enable


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setFoldComments(self: QsciLexerSQL, fold: bool): void =


  fQsciLexerSQL_virtualbase_setFoldComments(self.h, fold)

type QsciLexerSQLsetFoldCommentsBase* = proc(fold: bool): void
proc onsetFoldComments*(self: QsciLexerSQL, slot: proc(super: QsciLexerSQLsetFoldCommentsBase, fold: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSQLsetFoldCommentsBase, fold: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_setFoldComments(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_setFoldComments(self: ptr cQsciLexerSQL, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerSQL_setFoldComments ".} =
  type Cb = proc(super: QsciLexerSQLsetFoldCommentsBase, fold: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: bool): auto =
    callVirtualBase_setFoldComments(QsciLexerSQL(h: self), fold)
  let slotval1 = fold


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setFoldCompact(self: QsciLexerSQL, fold: bool): void =


  fQsciLexerSQL_virtualbase_setFoldCompact(self.h, fold)

type QsciLexerSQLsetFoldCompactBase* = proc(fold: bool): void
proc onsetFoldCompact*(self: QsciLexerSQL, slot: proc(super: QsciLexerSQLsetFoldCompactBase, fold: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSQLsetFoldCompactBase, fold: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_setFoldCompact(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_setFoldCompact(self: ptr cQsciLexerSQL, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerSQL_setFoldCompact ".} =
  type Cb = proc(super: QsciLexerSQLsetFoldCompactBase, fold: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: bool): auto =
    callVirtualBase_setFoldCompact(QsciLexerSQL(h: self), fold)
  let slotval1 = fold


  nimfunc[](superCall, slotval1)
type QsciLexerSQLlanguageBase* = proc(): cstring
proc onlanguage*(self: QsciLexerSQL, slot: proc(): cstring) =
  # TODO check subclass
  type Cb = proc(): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_language(self: ptr cQsciLexerSQL, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerSQL_language ".} =
  type Cb = proc(): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc callVirtualBase_lexer(self: QsciLexerSQL, ): cstring =


  (fQsciLexerSQL_virtualbase_lexer(self.h))

type QsciLexerSQLlexerBase* = proc(): cstring
proc onlexer*(self: QsciLexerSQL, slot: proc(super: QsciLexerSQLlexerBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSQLlexerBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_lexer(self: ptr cQsciLexerSQL, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerSQL_lexer ".} =
  type Cb = proc(super: QsciLexerSQLlexerBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexer(QsciLexerSQL(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_lexerId(self: QsciLexerSQL, ): cint =


  fQsciLexerSQL_virtualbase_lexerId(self.h)

type QsciLexerSQLlexerIdBase* = proc(): cint
proc onlexerId*(self: QsciLexerSQL, slot: proc(super: QsciLexerSQLlexerIdBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSQLlexerIdBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_lexerId(self: ptr cQsciLexerSQL, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerSQL_lexerId ".} =
  type Cb = proc(super: QsciLexerSQLlexerIdBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexerId(QsciLexerSQL(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionFillups(self: QsciLexerSQL, ): cstring =


  (fQsciLexerSQL_virtualbase_autoCompletionFillups(self.h))

type QsciLexerSQLautoCompletionFillupsBase* = proc(): cstring
proc onautoCompletionFillups*(self: QsciLexerSQL, slot: proc(super: QsciLexerSQLautoCompletionFillupsBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSQLautoCompletionFillupsBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_autoCompletionFillups(self: ptr cQsciLexerSQL, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerSQL_autoCompletionFillups ".} =
  type Cb = proc(super: QsciLexerSQLautoCompletionFillupsBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionFillups(QsciLexerSQL(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionWordSeparators(self: QsciLexerSQL, ): seq[string] =


  var v_ma = fQsciLexerSQL_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerSQLautoCompletionWordSeparatorsBase* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: QsciLexerSQL, slot: proc(super: QsciLexerSQLautoCompletionWordSeparatorsBase): seq[string]) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSQLautoCompletionWordSeparatorsBase): seq[string]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_autoCompletionWordSeparators(self: ptr cQsciLexerSQL, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerSQL_autoCompletionWordSeparators ".} =
  type Cb = proc(super: QsciLexerSQLautoCompletionWordSeparatorsBase): seq[string]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionWordSeparators(QsciLexerSQL(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_blockEnd(self: QsciLexerSQL, style: ptr cint): cstring =


  (fQsciLexerSQL_virtualbase_blockEnd(self.h, style))

type QsciLexerSQLblockEndBase* = proc(style: ptr cint): cstring
proc onblockEnd*(self: QsciLexerSQL, slot: proc(super: QsciLexerSQLblockEndBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSQLblockEndBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_blockEnd(self: ptr cQsciLexerSQL, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerSQL_blockEnd ".} =
  type Cb = proc(super: QsciLexerSQLblockEndBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockEnd(QsciLexerSQL(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockLookback(self: QsciLexerSQL, ): cint =


  fQsciLexerSQL_virtualbase_blockLookback(self.h)

type QsciLexerSQLblockLookbackBase* = proc(): cint
proc onblockLookback*(self: QsciLexerSQL, slot: proc(super: QsciLexerSQLblockLookbackBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSQLblockLookbackBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_blockLookback(self: ptr cQsciLexerSQL, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerSQL_blockLookback ".} =
  type Cb = proc(super: QsciLexerSQLblockLookbackBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_blockLookback(QsciLexerSQL(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_blockStart(self: QsciLexerSQL, style: ptr cint): cstring =


  (fQsciLexerSQL_virtualbase_blockStart(self.h, style))

type QsciLexerSQLblockStartBase* = proc(style: ptr cint): cstring
proc onblockStart*(self: QsciLexerSQL, slot: proc(super: QsciLexerSQLblockStartBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSQLblockStartBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_blockStart(self: ptr cQsciLexerSQL, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerSQL_blockStart ".} =
  type Cb = proc(super: QsciLexerSQLblockStartBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStart(QsciLexerSQL(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockStartKeyword(self: QsciLexerSQL, style: ptr cint): cstring =


  (fQsciLexerSQL_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerSQLblockStartKeywordBase* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: QsciLexerSQL, slot: proc(super: QsciLexerSQLblockStartKeywordBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSQLblockStartKeywordBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_blockStartKeyword(self: ptr cQsciLexerSQL, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerSQL_blockStartKeyword ".} =
  type Cb = proc(super: QsciLexerSQLblockStartKeywordBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStartKeyword(QsciLexerSQL(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_braceStyle(self: QsciLexerSQL, ): cint =


  fQsciLexerSQL_virtualbase_braceStyle(self.h)

type QsciLexerSQLbraceStyleBase* = proc(): cint
proc onbraceStyle*(self: QsciLexerSQL, slot: proc(super: QsciLexerSQLbraceStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSQLbraceStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_braceStyle(self: ptr cQsciLexerSQL, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerSQL_braceStyle ".} =
  type Cb = proc(super: QsciLexerSQLbraceStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_braceStyle(QsciLexerSQL(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_caseSensitive(self: QsciLexerSQL, ): bool =


  fQsciLexerSQL_virtualbase_caseSensitive(self.h)

type QsciLexerSQLcaseSensitiveBase* = proc(): bool
proc oncaseSensitive*(self: QsciLexerSQL, slot: proc(super: QsciLexerSQLcaseSensitiveBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSQLcaseSensitiveBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_caseSensitive(self: ptr cQsciLexerSQL, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerSQL_caseSensitive ".} =
  type Cb = proc(super: QsciLexerSQLcaseSensitiveBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_caseSensitive(QsciLexerSQL(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_color(self: QsciLexerSQL, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerSQL_virtualbase_color(self.h, style))

type QsciLexerSQLcolorBase* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: QsciLexerSQL, slot: proc(super: QsciLexerSQLcolorBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSQLcolorBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_color(self: ptr cQsciLexerSQL, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerSQL_color ".} =
  type Cb = proc(super: QsciLexerSQLcolorBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_color(QsciLexerSQL(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_eolFill(self: QsciLexerSQL, style: cint): bool =


  fQsciLexerSQL_virtualbase_eolFill(self.h, style)

type QsciLexerSQLeolFillBase* = proc(style: cint): bool
proc oneolFill*(self: QsciLexerSQL, slot: proc(super: QsciLexerSQLeolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSQLeolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_eolFill(self: ptr cQsciLexerSQL, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerSQL_eolFill ".} =
  type Cb = proc(super: QsciLexerSQLeolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_eolFill(QsciLexerSQL(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_font(self: QsciLexerSQL, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerSQL_virtualbase_font(self.h, style))

type QsciLexerSQLfontBase* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: QsciLexerSQL, slot: proc(super: QsciLexerSQLfontBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSQLfontBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_font(self: ptr cQsciLexerSQL, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerSQL_font ".} =
  type Cb = proc(super: QsciLexerSQLfontBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_font(QsciLexerSQL(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_indentationGuideView(self: QsciLexerSQL, ): cint =


  fQsciLexerSQL_virtualbase_indentationGuideView(self.h)

type QsciLexerSQLindentationGuideViewBase* = proc(): cint
proc onindentationGuideView*(self: QsciLexerSQL, slot: proc(super: QsciLexerSQLindentationGuideViewBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSQLindentationGuideViewBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_indentationGuideView(self: ptr cQsciLexerSQL, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerSQL_indentationGuideView ".} =
  type Cb = proc(super: QsciLexerSQLindentationGuideViewBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_indentationGuideView(QsciLexerSQL(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_keywords(self: QsciLexerSQL, set: cint): cstring =


  (fQsciLexerSQL_virtualbase_keywords(self.h, set))

type QsciLexerSQLkeywordsBase* = proc(set: cint): cstring
proc onkeywords*(self: QsciLexerSQL, slot: proc(super: QsciLexerSQLkeywordsBase, set: cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSQLkeywordsBase, set: cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_keywords(self: ptr cQsciLexerSQL, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerSQL_keywords ".} =
  type Cb = proc(super: QsciLexerSQLkeywordsBase, set: cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(set: cint): auto =
    callVirtualBase_keywords(QsciLexerSQL(h: self), set)
  let slotval1 = set


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultStyle(self: QsciLexerSQL, ): cint =


  fQsciLexerSQL_virtualbase_defaultStyle(self.h)

type QsciLexerSQLdefaultStyleBase* = proc(): cint
proc ondefaultStyle*(self: QsciLexerSQL, slot: proc(super: QsciLexerSQLdefaultStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSQLdefaultStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_defaultStyle(self: ptr cQsciLexerSQL, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerSQL_defaultStyle ".} =
  type Cb = proc(super: QsciLexerSQLdefaultStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_defaultStyle(QsciLexerSQL(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
type QsciLexerSQLdescriptionBase* = proc(style: cint): string
proc ondescription*(self: QsciLexerSQL, slot: proc(style: cint): string) =
  # TODO check subclass
  type Cb = proc(style: cint): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_description(self: ptr cQsciLexerSQL, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerSQL_description ".} =
  type Cb = proc(style: cint): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc callVirtualBase_paper(self: QsciLexerSQL, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerSQL_virtualbase_paper(self.h, style))

type QsciLexerSQLpaperBase* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: QsciLexerSQL, slot: proc(super: QsciLexerSQLpaperBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSQLpaperBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_paper(self: ptr cQsciLexerSQL, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerSQL_paper ".} =
  type Cb = proc(super: QsciLexerSQLpaperBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_paper(QsciLexerSQL(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultColorWithStyle(self: QsciLexerSQL, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerSQL_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerSQLdefaultColorWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColorWithStyle*(self: QsciLexerSQL, slot: proc(super: QsciLexerSQLdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSQLdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_defaultColorWithStyle(self: ptr cQsciLexerSQL, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerSQL_defaultColorWithStyle ".} =
  type Cb = proc(super: QsciLexerSQLdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultColorWithStyle(QsciLexerSQL(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultEolFill(self: QsciLexerSQL, style: cint): bool =


  fQsciLexerSQL_virtualbase_defaultEolFill(self.h, style)

type QsciLexerSQLdefaultEolFillBase* = proc(style: cint): bool
proc ondefaultEolFill*(self: QsciLexerSQL, slot: proc(super: QsciLexerSQLdefaultEolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSQLdefaultEolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_defaultEolFill(self: ptr cQsciLexerSQL, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerSQL_defaultEolFill ".} =
  type Cb = proc(super: QsciLexerSQLdefaultEolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultEolFill(QsciLexerSQL(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultFontWithStyle(self: QsciLexerSQL, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerSQL_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerSQLdefaultFontWithStyleBase* = proc(style: cint): gen_qfont.QFont
proc ondefaultFontWithStyle*(self: QsciLexerSQL, slot: proc(super: QsciLexerSQLdefaultFontWithStyleBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSQLdefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_defaultFontWithStyle(self: ptr cQsciLexerSQL, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerSQL_defaultFontWithStyle ".} =
  type Cb = proc(super: QsciLexerSQLdefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultFontWithStyle(QsciLexerSQL(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultPaperWithStyle(self: QsciLexerSQL, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerSQL_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerSQLdefaultPaperWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaperWithStyle*(self: QsciLexerSQL, slot: proc(super: QsciLexerSQLdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSQLdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_defaultPaperWithStyle(self: ptr cQsciLexerSQL, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerSQL_defaultPaperWithStyle ".} =
  type Cb = proc(super: QsciLexerSQLdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultPaperWithStyle(QsciLexerSQL(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_setEditor(self: QsciLexerSQL, editor: gen_qsciscintilla.QsciScintilla): void =


  fQsciLexerSQL_virtualbase_setEditor(self.h, editor.h)

type QsciLexerSQLsetEditorBase* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: QsciLexerSQL, slot: proc(super: QsciLexerSQLsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSQLsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_setEditor(self: ptr cQsciLexerSQL, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerSQL_setEditor ".} =
  type Cb = proc(super: QsciLexerSQLsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qsciscintilla.QsciScintilla): auto =
    callVirtualBase_setEditor(QsciLexerSQL(h: self), editor)
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_refreshProperties(self: QsciLexerSQL, ): void =


  fQsciLexerSQL_virtualbase_refreshProperties(self.h)

type QsciLexerSQLrefreshPropertiesBase* = proc(): void
proc onrefreshProperties*(self: QsciLexerSQL, slot: proc(super: QsciLexerSQLrefreshPropertiesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSQLrefreshPropertiesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_refreshProperties(self: ptr cQsciLexerSQL, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerSQL_refreshProperties ".} =
  type Cb = proc(super: QsciLexerSQLrefreshPropertiesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_refreshProperties(QsciLexerSQL(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_styleBitsNeeded(self: QsciLexerSQL, ): cint =


  fQsciLexerSQL_virtualbase_styleBitsNeeded(self.h)

type QsciLexerSQLstyleBitsNeededBase* = proc(): cint
proc onstyleBitsNeeded*(self: QsciLexerSQL, slot: proc(super: QsciLexerSQLstyleBitsNeededBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSQLstyleBitsNeededBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_styleBitsNeeded(self: ptr cQsciLexerSQL, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerSQL_styleBitsNeeded ".} =
  type Cb = proc(super: QsciLexerSQLstyleBitsNeededBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_styleBitsNeeded(QsciLexerSQL(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_wordCharacters(self: QsciLexerSQL, ): cstring =


  (fQsciLexerSQL_virtualbase_wordCharacters(self.h))

type QsciLexerSQLwordCharactersBase* = proc(): cstring
proc onwordCharacters*(self: QsciLexerSQL, slot: proc(super: QsciLexerSQLwordCharactersBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSQLwordCharactersBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_wordCharacters(self: ptr cQsciLexerSQL, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerSQL_wordCharacters ".} =
  type Cb = proc(super: QsciLexerSQLwordCharactersBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_wordCharacters(QsciLexerSQL(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setAutoIndentStyle(self: QsciLexerSQL, autoindentstyle: cint): void =


  fQsciLexerSQL_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerSQLsetAutoIndentStyleBase* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: QsciLexerSQL, slot: proc(super: QsciLexerSQLsetAutoIndentStyleBase, autoindentstyle: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSQLsetAutoIndentStyleBase, autoindentstyle: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_setAutoIndentStyle(self: ptr cQsciLexerSQL, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerSQL_setAutoIndentStyle ".} =
  type Cb = proc(super: QsciLexerSQLsetAutoIndentStyleBase, autoindentstyle: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(autoindentstyle: cint): auto =
    callVirtualBase_setAutoIndentStyle(QsciLexerSQL(h: self), autoindentstyle)
  let slotval1 = autoindentstyle


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setColor(self: QsciLexerSQL, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerSQL_virtualbase_setColor(self.h, c.h, style)

type QsciLexerSQLsetColorBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: QsciLexerSQL, slot: proc(super: QsciLexerSQLsetColorBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSQLsetColorBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_setColor(self: ptr cQsciLexerSQL, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerSQL_setColor ".} =
  type Cb = proc(super: QsciLexerSQLsetColorBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setColor(QsciLexerSQL(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setEolFill(self: QsciLexerSQL, eoffill: bool, style: cint): void =


  fQsciLexerSQL_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerSQLsetEolFillBase* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: QsciLexerSQL, slot: proc(super: QsciLexerSQLsetEolFillBase, eoffill: bool, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSQLsetEolFillBase, eoffill: bool, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_setEolFill(self: ptr cQsciLexerSQL, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerSQL_setEolFill ".} =
  type Cb = proc(super: QsciLexerSQLsetEolFillBase, eoffill: bool, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eoffill: bool, style: cint): auto =
    callVirtualBase_setEolFill(QsciLexerSQL(h: self), eoffill, style)
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setFont(self: QsciLexerSQL, f: gen_qfont.QFont, style: cint): void =


  fQsciLexerSQL_virtualbase_setFont(self.h, f.h, style)

type QsciLexerSQLsetFontBase* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: QsciLexerSQL, slot: proc(super: QsciLexerSQLsetFontBase, f: gen_qfont.QFont, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSQLsetFontBase, f: gen_qfont.QFont, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_setFont(self: ptr cQsciLexerSQL, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerSQL_setFont ".} =
  type Cb = proc(super: QsciLexerSQLsetFontBase, f: gen_qfont.QFont, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(f: gen_qfont.QFont, style: cint): auto =
    callVirtualBase_setFont(QsciLexerSQL(h: self), f, style)
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setPaper(self: QsciLexerSQL, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerSQL_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerSQLsetPaperBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: QsciLexerSQL, slot: proc(super: QsciLexerSQLsetPaperBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSQLsetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_setPaper(self: ptr cQsciLexerSQL, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerSQL_setPaper ".} =
  type Cb = proc(super: QsciLexerSQLsetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setPaper(QsciLexerSQL(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_readProperties(self: QsciLexerSQL, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerSQL_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerSQLreadPropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: QsciLexerSQL, slot: proc(super: QsciLexerSQLreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSQLreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_readProperties(self: ptr cQsciLexerSQL, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerSQL_readProperties ".} =
  type Cb = proc(super: QsciLexerSQLreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_readProperties(QsciLexerSQL(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_writeProperties(self: QsciLexerSQL, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerSQL_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerSQLwritePropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: QsciLexerSQL, slot: proc(super: QsciLexerSQLwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSQLwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_writeProperties(self: ptr cQsciLexerSQL, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerSQL_writeProperties ".} =
  type Cb = proc(super: QsciLexerSQLwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_writeProperties(QsciLexerSQL(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_event(self: QsciLexerSQL, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerSQL_virtualbase_event(self.h, event.h)

type QsciLexerSQLeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QsciLexerSQL, slot: proc(super: QsciLexerSQLeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSQLeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_event(self: ptr cQsciLexerSQL, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerSQL_event ".} =
  type Cb = proc(super: QsciLexerSQLeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QsciLexerSQL(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QsciLexerSQL, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerSQL_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerSQLeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QsciLexerSQL, slot: proc(super: QsciLexerSQLeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSQLeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_eventFilter(self: ptr cQsciLexerSQL, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerSQL_eventFilter ".} =
  type Cb = proc(super: QsciLexerSQLeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QsciLexerSQL(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QsciLexerSQL, event: gen_qcoreevent.QTimerEvent): void =


  fQsciLexerSQL_virtualbase_timerEvent(self.h, event.h)

type QsciLexerSQLtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QsciLexerSQL, slot: proc(super: QsciLexerSQLtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSQLtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_timerEvent(self: ptr cQsciLexerSQL, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerSQL_timerEvent ".} =
  type Cb = proc(super: QsciLexerSQLtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QsciLexerSQL(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QsciLexerSQL, event: gen_qcoreevent.QChildEvent): void =


  fQsciLexerSQL_virtualbase_childEvent(self.h, event.h)

type QsciLexerSQLchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QsciLexerSQL, slot: proc(super: QsciLexerSQLchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSQLchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_childEvent(self: ptr cQsciLexerSQL, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerSQL_childEvent ".} =
  type Cb = proc(super: QsciLexerSQLchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QsciLexerSQL(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QsciLexerSQL, event: gen_qcoreevent.QEvent): void =


  fQsciLexerSQL_virtualbase_customEvent(self.h, event.h)

type QsciLexerSQLcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QsciLexerSQL, slot: proc(super: QsciLexerSQLcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSQLcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_customEvent(self: ptr cQsciLexerSQL, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerSQL_customEvent ".} =
  type Cb = proc(super: QsciLexerSQLcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QsciLexerSQL(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QsciLexerSQL, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerSQL_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerSQLconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QsciLexerSQL, slot: proc(super: QsciLexerSQLconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSQLconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_connectNotify(self: ptr cQsciLexerSQL, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerSQL_connectNotify ".} =
  type Cb = proc(super: QsciLexerSQLconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QsciLexerSQL(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QsciLexerSQL, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerSQL_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerSQLdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QsciLexerSQL, slot: proc(super: QsciLexerSQLdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSQLdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSQL_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSQL_disconnectNotify(self: ptr cQsciLexerSQL, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerSQL_disconnectNotify ".} =
  type Cb = proc(super: QsciLexerSQLdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QsciLexerSQL(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QsciLexerSQL): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerSQL_staticMetaObject())
proc delete*(self: QsciLexerSQL) =
  fcQsciLexerSQL_delete(self.h)
