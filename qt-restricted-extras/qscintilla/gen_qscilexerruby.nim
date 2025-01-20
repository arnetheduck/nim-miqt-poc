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
{.compile("gen_qscilexerruby.cpp", cflags).}


type QsciLexerRubyEnum* = cint
const
  QsciLexerRubyDefault* = 0
  QsciLexerRubyError* = 1
  QsciLexerRubyComment* = 2
  QsciLexerRubyPOD* = 3
  QsciLexerRubyNumber* = 4
  QsciLexerRubyKeyword* = 5
  QsciLexerRubyDoubleQuotedString* = 6
  QsciLexerRubySingleQuotedString* = 7
  QsciLexerRubyClassName* = 8
  QsciLexerRubyFunctionMethodName* = 9
  QsciLexerRubyOperator* = 10
  QsciLexerRubyIdentifier* = 11
  QsciLexerRubyRegex* = 12
  QsciLexerRubyGlobal* = 13
  QsciLexerRubySymbol* = 14
  QsciLexerRubyModuleName* = 15
  QsciLexerRubyInstanceVariable* = 16
  QsciLexerRubyClassVariable* = 17
  QsciLexerRubyBackticks* = 18
  QsciLexerRubyDataSection* = 19
  QsciLexerRubyHereDocumentDelimiter* = 20
  QsciLexerRubyHereDocument* = 21
  QsciLexerRubyPercentStringq* = 24
  QsciLexerRubyPercentStringQ2* = 25
  QsciLexerRubyPercentStringx* = 26
  QsciLexerRubyPercentStringr* = 27
  QsciLexerRubyPercentStringw* = 28
  QsciLexerRubyDemotedKeyword* = 29
  QsciLexerRubyStdin* = 30
  QsciLexerRubyStdout* = 31
  QsciLexerRubyStderr* = 40



import gen_qscilexerruby_types
export gen_qscilexerruby_types

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

type cQsciLexerRuby*{.exportc: "QsciLexerRuby", incompleteStruct.} = object

proc fcQsciLexerRuby_new(): ptr cQsciLexerRuby {.importc: "QsciLexerRuby_new".}
proc fcQsciLexerRuby_new2(parent: pointer): ptr cQsciLexerRuby {.importc: "QsciLexerRuby_new2".}
proc fcQsciLexerRuby_metaObject(self: pointer, ): pointer {.importc: "QsciLexerRuby_metaObject".}
proc fcQsciLexerRuby_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerRuby_metacast".}
proc fcQsciLexerRuby_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerRuby_metacall".}
proc fcQsciLexerRuby_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerRuby_tr".}
proc fcQsciLexerRuby_trUtf8(s: cstring): struct_miqt_string {.importc: "QsciLexerRuby_trUtf8".}
proc fcQsciLexerRuby_language(self: pointer, ): cstring {.importc: "QsciLexerRuby_language".}
proc fcQsciLexerRuby_lexer(self: pointer, ): cstring {.importc: "QsciLexerRuby_lexer".}
proc fcQsciLexerRuby_blockEnd(self: pointer, ): cstring {.importc: "QsciLexerRuby_blockEnd".}
proc fcQsciLexerRuby_blockStart(self: pointer, ): cstring {.importc: "QsciLexerRuby_blockStart".}
proc fcQsciLexerRuby_blockStartKeyword(self: pointer, ): cstring {.importc: "QsciLexerRuby_blockStartKeyword".}
proc fcQsciLexerRuby_braceStyle(self: pointer, ): cint {.importc: "QsciLexerRuby_braceStyle".}
proc fcQsciLexerRuby_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerRuby_defaultColor".}
proc fcQsciLexerRuby_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerRuby_defaultEolFill".}
proc fcQsciLexerRuby_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerRuby_defaultFont".}
proc fcQsciLexerRuby_defaultPaper(self: pointer, style: cint): pointer {.importc: "QsciLexerRuby_defaultPaper".}
proc fcQsciLexerRuby_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerRuby_keywords".}
proc fcQsciLexerRuby_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerRuby_description".}
proc fcQsciLexerRuby_refreshProperties(self: pointer, ): void {.importc: "QsciLexerRuby_refreshProperties".}
proc fcQsciLexerRuby_setFoldComments(self: pointer, fold: bool): void {.importc: "QsciLexerRuby_setFoldComments".}
proc fcQsciLexerRuby_foldComments(self: pointer, ): bool {.importc: "QsciLexerRuby_foldComments".}
proc fcQsciLexerRuby_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerRuby_setFoldCompact".}
proc fcQsciLexerRuby_foldCompact(self: pointer, ): bool {.importc: "QsciLexerRuby_foldCompact".}
proc fcQsciLexerRuby_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerRuby_tr2".}
proc fcQsciLexerRuby_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerRuby_tr3".}
proc fcQsciLexerRuby_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerRuby_trUtf82".}
proc fcQsciLexerRuby_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerRuby_trUtf83".}
proc fcQsciLexerRuby_blockEnd1(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerRuby_blockEnd1".}
proc fcQsciLexerRuby_blockStart1(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerRuby_blockStart1".}
proc fcQsciLexerRuby_blockStartKeyword1(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerRuby_blockStartKeyword1".}
proc fQsciLexerRuby_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QsciLexerRuby_virtualbase_metaObject".}
proc fcQsciLexerRuby_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QsciLexerRuby_override_virtual_metaObject".}
proc fQsciLexerRuby_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QsciLexerRuby_virtualbase_metacast".}
proc fcQsciLexerRuby_override_virtual_metacast(self: pointer, slot: int) {.importc: "QsciLexerRuby_override_virtual_metacast".}
proc fQsciLexerRuby_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciLexerRuby_virtualbase_metacall".}
proc fcQsciLexerRuby_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciLexerRuby_override_virtual_metacall".}
proc fcQsciLexerRuby_override_virtual_language(self: pointer, slot: int) {.importc: "QsciLexerRuby_override_virtual_language".}
proc fQsciLexerRuby_virtualbase_lexer(self: pointer, ): cstring{.importc: "QsciLexerRuby_virtualbase_lexer".}
proc fcQsciLexerRuby_override_virtual_lexer(self: pointer, slot: int) {.importc: "QsciLexerRuby_override_virtual_lexer".}
proc fQsciLexerRuby_virtualbase_lexerId(self: pointer, ): cint{.importc: "QsciLexerRuby_virtualbase_lexerId".}
proc fcQsciLexerRuby_override_virtual_lexerId(self: pointer, slot: int) {.importc: "QsciLexerRuby_override_virtual_lexerId".}
proc fQsciLexerRuby_virtualbase_autoCompletionFillups(self: pointer, ): cstring{.importc: "QsciLexerRuby_virtualbase_autoCompletionFillups".}
proc fcQsciLexerRuby_override_virtual_autoCompletionFillups(self: pointer, slot: int) {.importc: "QsciLexerRuby_override_virtual_autoCompletionFillups".}
proc fQsciLexerRuby_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array{.importc: "QsciLexerRuby_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerRuby_override_virtual_autoCompletionWordSeparators(self: pointer, slot: int) {.importc: "QsciLexerRuby_override_virtual_autoCompletionWordSeparators".}
proc fQsciLexerRuby_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerRuby_virtualbase_blockEnd".}
proc fcQsciLexerRuby_override_virtual_blockEnd(self: pointer, slot: int) {.importc: "QsciLexerRuby_override_virtual_blockEnd".}
proc fQsciLexerRuby_virtualbase_blockLookback(self: pointer, ): cint{.importc: "QsciLexerRuby_virtualbase_blockLookback".}
proc fcQsciLexerRuby_override_virtual_blockLookback(self: pointer, slot: int) {.importc: "QsciLexerRuby_override_virtual_blockLookback".}
proc fQsciLexerRuby_virtualbase_blockStart(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerRuby_virtualbase_blockStart".}
proc fcQsciLexerRuby_override_virtual_blockStart(self: pointer, slot: int) {.importc: "QsciLexerRuby_override_virtual_blockStart".}
proc fQsciLexerRuby_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerRuby_virtualbase_blockStartKeyword".}
proc fcQsciLexerRuby_override_virtual_blockStartKeyword(self: pointer, slot: int) {.importc: "QsciLexerRuby_override_virtual_blockStartKeyword".}
proc fQsciLexerRuby_virtualbase_braceStyle(self: pointer, ): cint{.importc: "QsciLexerRuby_virtualbase_braceStyle".}
proc fcQsciLexerRuby_override_virtual_braceStyle(self: pointer, slot: int) {.importc: "QsciLexerRuby_override_virtual_braceStyle".}
proc fQsciLexerRuby_virtualbase_caseSensitive(self: pointer, ): bool{.importc: "QsciLexerRuby_virtualbase_caseSensitive".}
proc fcQsciLexerRuby_override_virtual_caseSensitive(self: pointer, slot: int) {.importc: "QsciLexerRuby_override_virtual_caseSensitive".}
proc fQsciLexerRuby_virtualbase_color(self: pointer, style: cint): pointer{.importc: "QsciLexerRuby_virtualbase_color".}
proc fcQsciLexerRuby_override_virtual_color(self: pointer, slot: int) {.importc: "QsciLexerRuby_override_virtual_color".}
proc fQsciLexerRuby_virtualbase_eolFill(self: pointer, style: cint): bool{.importc: "QsciLexerRuby_virtualbase_eolFill".}
proc fcQsciLexerRuby_override_virtual_eolFill(self: pointer, slot: int) {.importc: "QsciLexerRuby_override_virtual_eolFill".}
proc fQsciLexerRuby_virtualbase_font(self: pointer, style: cint): pointer{.importc: "QsciLexerRuby_virtualbase_font".}
proc fcQsciLexerRuby_override_virtual_font(self: pointer, slot: int) {.importc: "QsciLexerRuby_override_virtual_font".}
proc fQsciLexerRuby_virtualbase_indentationGuideView(self: pointer, ): cint{.importc: "QsciLexerRuby_virtualbase_indentationGuideView".}
proc fcQsciLexerRuby_override_virtual_indentationGuideView(self: pointer, slot: int) {.importc: "QsciLexerRuby_override_virtual_indentationGuideView".}
proc fQsciLexerRuby_virtualbase_keywords(self: pointer, set: cint): cstring{.importc: "QsciLexerRuby_virtualbase_keywords".}
proc fcQsciLexerRuby_override_virtual_keywords(self: pointer, slot: int) {.importc: "QsciLexerRuby_override_virtual_keywords".}
proc fQsciLexerRuby_virtualbase_defaultStyle(self: pointer, ): cint{.importc: "QsciLexerRuby_virtualbase_defaultStyle".}
proc fcQsciLexerRuby_override_virtual_defaultStyle(self: pointer, slot: int) {.importc: "QsciLexerRuby_override_virtual_defaultStyle".}
proc fcQsciLexerRuby_override_virtual_description(self: pointer, slot: int) {.importc: "QsciLexerRuby_override_virtual_description".}
proc fQsciLexerRuby_virtualbase_paper(self: pointer, style: cint): pointer{.importc: "QsciLexerRuby_virtualbase_paper".}
proc fcQsciLexerRuby_override_virtual_paper(self: pointer, slot: int) {.importc: "QsciLexerRuby_override_virtual_paper".}
proc fQsciLexerRuby_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerRuby_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerRuby_override_virtual_defaultColorWithStyle(self: pointer, slot: int) {.importc: "QsciLexerRuby_override_virtual_defaultColorWithStyle".}
proc fQsciLexerRuby_virtualbase_defaultEolFill(self: pointer, style: cint): bool{.importc: "QsciLexerRuby_virtualbase_defaultEolFill".}
proc fcQsciLexerRuby_override_virtual_defaultEolFill(self: pointer, slot: int) {.importc: "QsciLexerRuby_override_virtual_defaultEolFill".}
proc fQsciLexerRuby_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerRuby_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerRuby_override_virtual_defaultFontWithStyle(self: pointer, slot: int) {.importc: "QsciLexerRuby_override_virtual_defaultFontWithStyle".}
proc fQsciLexerRuby_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerRuby_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerRuby_override_virtual_defaultPaperWithStyle(self: pointer, slot: int) {.importc: "QsciLexerRuby_override_virtual_defaultPaperWithStyle".}
proc fQsciLexerRuby_virtualbase_setEditor(self: pointer, editor: pointer): void{.importc: "QsciLexerRuby_virtualbase_setEditor".}
proc fcQsciLexerRuby_override_virtual_setEditor(self: pointer, slot: int) {.importc: "QsciLexerRuby_override_virtual_setEditor".}
proc fQsciLexerRuby_virtualbase_refreshProperties(self: pointer, ): void{.importc: "QsciLexerRuby_virtualbase_refreshProperties".}
proc fcQsciLexerRuby_override_virtual_refreshProperties(self: pointer, slot: int) {.importc: "QsciLexerRuby_override_virtual_refreshProperties".}
proc fQsciLexerRuby_virtualbase_styleBitsNeeded(self: pointer, ): cint{.importc: "QsciLexerRuby_virtualbase_styleBitsNeeded".}
proc fcQsciLexerRuby_override_virtual_styleBitsNeeded(self: pointer, slot: int) {.importc: "QsciLexerRuby_override_virtual_styleBitsNeeded".}
proc fQsciLexerRuby_virtualbase_wordCharacters(self: pointer, ): cstring{.importc: "QsciLexerRuby_virtualbase_wordCharacters".}
proc fcQsciLexerRuby_override_virtual_wordCharacters(self: pointer, slot: int) {.importc: "QsciLexerRuby_override_virtual_wordCharacters".}
proc fQsciLexerRuby_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void{.importc: "QsciLexerRuby_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerRuby_override_virtual_setAutoIndentStyle(self: pointer, slot: int) {.importc: "QsciLexerRuby_override_virtual_setAutoIndentStyle".}
proc fQsciLexerRuby_virtualbase_setColor(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerRuby_virtualbase_setColor".}
proc fcQsciLexerRuby_override_virtual_setColor(self: pointer, slot: int) {.importc: "QsciLexerRuby_override_virtual_setColor".}
proc fQsciLexerRuby_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void{.importc: "QsciLexerRuby_virtualbase_setEolFill".}
proc fcQsciLexerRuby_override_virtual_setEolFill(self: pointer, slot: int) {.importc: "QsciLexerRuby_override_virtual_setEolFill".}
proc fQsciLexerRuby_virtualbase_setFont(self: pointer, f: pointer, style: cint): void{.importc: "QsciLexerRuby_virtualbase_setFont".}
proc fcQsciLexerRuby_override_virtual_setFont(self: pointer, slot: int) {.importc: "QsciLexerRuby_override_virtual_setFont".}
proc fQsciLexerRuby_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerRuby_virtualbase_setPaper".}
proc fcQsciLexerRuby_override_virtual_setPaper(self: pointer, slot: int) {.importc: "QsciLexerRuby_override_virtual_setPaper".}
proc fQsciLexerRuby_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerRuby_virtualbase_readProperties".}
proc fcQsciLexerRuby_override_virtual_readProperties(self: pointer, slot: int) {.importc: "QsciLexerRuby_override_virtual_readProperties".}
proc fQsciLexerRuby_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerRuby_virtualbase_writeProperties".}
proc fcQsciLexerRuby_override_virtual_writeProperties(self: pointer, slot: int) {.importc: "QsciLexerRuby_override_virtual_writeProperties".}
proc fQsciLexerRuby_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QsciLexerRuby_virtualbase_event".}
proc fcQsciLexerRuby_override_virtual_event(self: pointer, slot: int) {.importc: "QsciLexerRuby_override_virtual_event".}
proc fQsciLexerRuby_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciLexerRuby_virtualbase_eventFilter".}
proc fcQsciLexerRuby_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciLexerRuby_override_virtual_eventFilter".}
proc fQsciLexerRuby_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciLexerRuby_virtualbase_timerEvent".}
proc fcQsciLexerRuby_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciLexerRuby_override_virtual_timerEvent".}
proc fQsciLexerRuby_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciLexerRuby_virtualbase_childEvent".}
proc fcQsciLexerRuby_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciLexerRuby_override_virtual_childEvent".}
proc fQsciLexerRuby_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciLexerRuby_virtualbase_customEvent".}
proc fcQsciLexerRuby_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciLexerRuby_override_virtual_customEvent".}
proc fQsciLexerRuby_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerRuby_virtualbase_connectNotify".}
proc fcQsciLexerRuby_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciLexerRuby_override_virtual_connectNotify".}
proc fQsciLexerRuby_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerRuby_virtualbase_disconnectNotify".}
proc fcQsciLexerRuby_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciLexerRuby_override_virtual_disconnectNotify".}
proc fcQsciLexerRuby_staticMetaObject(): pointer {.importc: "QsciLexerRuby_staticMetaObject".}
proc fcQsciLexerRuby_delete(self: pointer) {.importc: "QsciLexerRuby_delete".}


func init*(T: type QsciLexerRuby, h: ptr cQsciLexerRuby): QsciLexerRuby =
  T(h: h)
proc create*(T: type QsciLexerRuby, ): QsciLexerRuby =

  QsciLexerRuby.init(fcQsciLexerRuby_new())
proc create*(T: type QsciLexerRuby, parent: gen_qobject.QObject): QsciLexerRuby =

  QsciLexerRuby.init(fcQsciLexerRuby_new2(parent.h))
proc metaObject*(self: QsciLexerRuby, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQsciLexerRuby_metaObject(self.h))

proc metacast*(self: QsciLexerRuby, param1: cstring): pointer =

  fcQsciLexerRuby_metacast(self.h, param1)

proc metacall*(self: QsciLexerRuby, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQsciLexerRuby_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QsciLexerRuby, s: cstring): string =

  let v_ms = fcQsciLexerRuby_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QsciLexerRuby, s: cstring): string =

  let v_ms = fcQsciLexerRuby_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: QsciLexerRuby, ): cstring =

  (fcQsciLexerRuby_language(self.h))

proc lexer*(self: QsciLexerRuby, ): cstring =

  (fcQsciLexerRuby_lexer(self.h))

proc blockEnd*(self: QsciLexerRuby, ): cstring =

  (fcQsciLexerRuby_blockEnd(self.h))

proc blockStart*(self: QsciLexerRuby, ): cstring =

  (fcQsciLexerRuby_blockStart(self.h))

proc blockStartKeyword*(self: QsciLexerRuby, ): cstring =

  (fcQsciLexerRuby_blockStartKeyword(self.h))

proc braceStyle*(self: QsciLexerRuby, ): cint =

  fcQsciLexerRuby_braceStyle(self.h)

proc defaultColor*(self: QsciLexerRuby, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerRuby_defaultColor(self.h, style))

proc defaultEolFill*(self: QsciLexerRuby, style: cint): bool =

  fcQsciLexerRuby_defaultEolFill(self.h, style)

proc defaultFont*(self: QsciLexerRuby, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQsciLexerRuby_defaultFont(self.h, style))

proc defaultPaper*(self: QsciLexerRuby, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerRuby_defaultPaper(self.h, style))

proc keywords*(self: QsciLexerRuby, set: cint): cstring =

  (fcQsciLexerRuby_keywords(self.h, set))

proc description*(self: QsciLexerRuby, style: cint): string =

  let v_ms = fcQsciLexerRuby_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: QsciLexerRuby, ): void =

  fcQsciLexerRuby_refreshProperties(self.h)

proc setFoldComments*(self: QsciLexerRuby, fold: bool): void =

  fcQsciLexerRuby_setFoldComments(self.h, fold)

proc foldComments*(self: QsciLexerRuby, ): bool =

  fcQsciLexerRuby_foldComments(self.h)

proc setFoldCompact*(self: QsciLexerRuby, fold: bool): void =

  fcQsciLexerRuby_setFoldCompact(self.h, fold)

proc foldCompact*(self: QsciLexerRuby, ): bool =

  fcQsciLexerRuby_foldCompact(self.h)

proc tr2*(_: type QsciLexerRuby, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerRuby_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QsciLexerRuby, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerRuby_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QsciLexerRuby, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerRuby_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QsciLexerRuby, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerRuby_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc blockEnd1*(self: QsciLexerRuby, style: ptr cint): cstring =

  (fcQsciLexerRuby_blockEnd1(self.h, style))

proc blockStart1*(self: QsciLexerRuby, style: ptr cint): cstring =

  (fcQsciLexerRuby_blockStart1(self.h, style))

proc blockStartKeyword1*(self: QsciLexerRuby, style: ptr cint): cstring =

  (fcQsciLexerRuby_blockStartKeyword1(self.h, style))

proc callVirtualBase_metaObject(self: QsciLexerRuby, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQsciLexerRuby_virtualbase_metaObject(self.h))

type QsciLexerRubymetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QsciLexerRuby, slot: proc(super: QsciLexerRubymetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerRubymetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_metaObject(self: ptr cQsciLexerRuby, slot: int): pointer {.exportc: "miqt_exec_callback_QsciLexerRuby_metaObject ".} =
  type Cb = proc(super: QsciLexerRubymetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QsciLexerRuby(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QsciLexerRuby, param1: cstring): pointer =


  fQsciLexerRuby_virtualbase_metacast(self.h, param1)

type QsciLexerRubymetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QsciLexerRuby, slot: proc(super: QsciLexerRubymetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerRubymetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_metacast(self: ptr cQsciLexerRuby, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciLexerRuby_metacast ".} =
  type Cb = proc(super: QsciLexerRubymetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QsciLexerRuby(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QsciLexerRuby, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQsciLexerRuby_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerRubymetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QsciLexerRuby, slot: proc(super: QsciLexerRubymetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerRubymetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_metacall(self: ptr cQsciLexerRuby, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerRuby_metacall ".} =
  type Cb = proc(super: QsciLexerRubymetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QsciLexerRuby(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
type QsciLexerRubylanguageBase* = proc(): cstring
proc onlanguage*(self: QsciLexerRuby, slot: proc(): cstring) =
  # TODO check subclass
  type Cb = proc(): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_language(self: ptr cQsciLexerRuby, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerRuby_language ".} =
  type Cb = proc(): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc callVirtualBase_lexer(self: QsciLexerRuby, ): cstring =


  (fQsciLexerRuby_virtualbase_lexer(self.h))

type QsciLexerRubylexerBase* = proc(): cstring
proc onlexer*(self: QsciLexerRuby, slot: proc(super: QsciLexerRubylexerBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerRubylexerBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_lexer(self: ptr cQsciLexerRuby, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerRuby_lexer ".} =
  type Cb = proc(super: QsciLexerRubylexerBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexer(QsciLexerRuby(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_lexerId(self: QsciLexerRuby, ): cint =


  fQsciLexerRuby_virtualbase_lexerId(self.h)

type QsciLexerRubylexerIdBase* = proc(): cint
proc onlexerId*(self: QsciLexerRuby, slot: proc(super: QsciLexerRubylexerIdBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerRubylexerIdBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_lexerId(self: ptr cQsciLexerRuby, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerRuby_lexerId ".} =
  type Cb = proc(super: QsciLexerRubylexerIdBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexerId(QsciLexerRuby(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionFillups(self: QsciLexerRuby, ): cstring =


  (fQsciLexerRuby_virtualbase_autoCompletionFillups(self.h))

type QsciLexerRubyautoCompletionFillupsBase* = proc(): cstring
proc onautoCompletionFillups*(self: QsciLexerRuby, slot: proc(super: QsciLexerRubyautoCompletionFillupsBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerRubyautoCompletionFillupsBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_autoCompletionFillups(self: ptr cQsciLexerRuby, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerRuby_autoCompletionFillups ".} =
  type Cb = proc(super: QsciLexerRubyautoCompletionFillupsBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionFillups(QsciLexerRuby(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionWordSeparators(self: QsciLexerRuby, ): seq[string] =


  var v_ma = fQsciLexerRuby_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerRubyautoCompletionWordSeparatorsBase* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: QsciLexerRuby, slot: proc(super: QsciLexerRubyautoCompletionWordSeparatorsBase): seq[string]) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerRubyautoCompletionWordSeparatorsBase): seq[string]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_autoCompletionWordSeparators(self: ptr cQsciLexerRuby, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerRuby_autoCompletionWordSeparators ".} =
  type Cb = proc(super: QsciLexerRubyautoCompletionWordSeparatorsBase): seq[string]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionWordSeparators(QsciLexerRuby(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_blockEnd(self: QsciLexerRuby, style: ptr cint): cstring =


  (fQsciLexerRuby_virtualbase_blockEnd(self.h, style))

type QsciLexerRubyblockEndBase* = proc(style: ptr cint): cstring
proc onblockEnd*(self: QsciLexerRuby, slot: proc(super: QsciLexerRubyblockEndBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerRubyblockEndBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_blockEnd(self: ptr cQsciLexerRuby, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerRuby_blockEnd ".} =
  type Cb = proc(super: QsciLexerRubyblockEndBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockEnd(QsciLexerRuby(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockLookback(self: QsciLexerRuby, ): cint =


  fQsciLexerRuby_virtualbase_blockLookback(self.h)

type QsciLexerRubyblockLookbackBase* = proc(): cint
proc onblockLookback*(self: QsciLexerRuby, slot: proc(super: QsciLexerRubyblockLookbackBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerRubyblockLookbackBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_blockLookback(self: ptr cQsciLexerRuby, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerRuby_blockLookback ".} =
  type Cb = proc(super: QsciLexerRubyblockLookbackBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_blockLookback(QsciLexerRuby(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_blockStart(self: QsciLexerRuby, style: ptr cint): cstring =


  (fQsciLexerRuby_virtualbase_blockStart(self.h, style))

type QsciLexerRubyblockStartBase* = proc(style: ptr cint): cstring
proc onblockStart*(self: QsciLexerRuby, slot: proc(super: QsciLexerRubyblockStartBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerRubyblockStartBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_blockStart(self: ptr cQsciLexerRuby, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerRuby_blockStart ".} =
  type Cb = proc(super: QsciLexerRubyblockStartBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStart(QsciLexerRuby(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockStartKeyword(self: QsciLexerRuby, style: ptr cint): cstring =


  (fQsciLexerRuby_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerRubyblockStartKeywordBase* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: QsciLexerRuby, slot: proc(super: QsciLexerRubyblockStartKeywordBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerRubyblockStartKeywordBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_blockStartKeyword(self: ptr cQsciLexerRuby, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerRuby_blockStartKeyword ".} =
  type Cb = proc(super: QsciLexerRubyblockStartKeywordBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStartKeyword(QsciLexerRuby(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_braceStyle(self: QsciLexerRuby, ): cint =


  fQsciLexerRuby_virtualbase_braceStyle(self.h)

type QsciLexerRubybraceStyleBase* = proc(): cint
proc onbraceStyle*(self: QsciLexerRuby, slot: proc(super: QsciLexerRubybraceStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerRubybraceStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_braceStyle(self: ptr cQsciLexerRuby, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerRuby_braceStyle ".} =
  type Cb = proc(super: QsciLexerRubybraceStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_braceStyle(QsciLexerRuby(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_caseSensitive(self: QsciLexerRuby, ): bool =


  fQsciLexerRuby_virtualbase_caseSensitive(self.h)

type QsciLexerRubycaseSensitiveBase* = proc(): bool
proc oncaseSensitive*(self: QsciLexerRuby, slot: proc(super: QsciLexerRubycaseSensitiveBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerRubycaseSensitiveBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_caseSensitive(self: ptr cQsciLexerRuby, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerRuby_caseSensitive ".} =
  type Cb = proc(super: QsciLexerRubycaseSensitiveBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_caseSensitive(QsciLexerRuby(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_color(self: QsciLexerRuby, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerRuby_virtualbase_color(self.h, style))

type QsciLexerRubycolorBase* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: QsciLexerRuby, slot: proc(super: QsciLexerRubycolorBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerRubycolorBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_color(self: ptr cQsciLexerRuby, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerRuby_color ".} =
  type Cb = proc(super: QsciLexerRubycolorBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_color(QsciLexerRuby(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_eolFill(self: QsciLexerRuby, style: cint): bool =


  fQsciLexerRuby_virtualbase_eolFill(self.h, style)

type QsciLexerRubyeolFillBase* = proc(style: cint): bool
proc oneolFill*(self: QsciLexerRuby, slot: proc(super: QsciLexerRubyeolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerRubyeolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_eolFill(self: ptr cQsciLexerRuby, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerRuby_eolFill ".} =
  type Cb = proc(super: QsciLexerRubyeolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_eolFill(QsciLexerRuby(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_font(self: QsciLexerRuby, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerRuby_virtualbase_font(self.h, style))

type QsciLexerRubyfontBase* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: QsciLexerRuby, slot: proc(super: QsciLexerRubyfontBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerRubyfontBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_font(self: ptr cQsciLexerRuby, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerRuby_font ".} =
  type Cb = proc(super: QsciLexerRubyfontBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_font(QsciLexerRuby(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_indentationGuideView(self: QsciLexerRuby, ): cint =


  fQsciLexerRuby_virtualbase_indentationGuideView(self.h)

type QsciLexerRubyindentationGuideViewBase* = proc(): cint
proc onindentationGuideView*(self: QsciLexerRuby, slot: proc(super: QsciLexerRubyindentationGuideViewBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerRubyindentationGuideViewBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_indentationGuideView(self: ptr cQsciLexerRuby, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerRuby_indentationGuideView ".} =
  type Cb = proc(super: QsciLexerRubyindentationGuideViewBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_indentationGuideView(QsciLexerRuby(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_keywords(self: QsciLexerRuby, set: cint): cstring =


  (fQsciLexerRuby_virtualbase_keywords(self.h, set))

type QsciLexerRubykeywordsBase* = proc(set: cint): cstring
proc onkeywords*(self: QsciLexerRuby, slot: proc(super: QsciLexerRubykeywordsBase, set: cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerRubykeywordsBase, set: cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_keywords(self: ptr cQsciLexerRuby, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerRuby_keywords ".} =
  type Cb = proc(super: QsciLexerRubykeywordsBase, set: cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(set: cint): auto =
    callVirtualBase_keywords(QsciLexerRuby(h: self), set)
  let slotval1 = set


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultStyle(self: QsciLexerRuby, ): cint =


  fQsciLexerRuby_virtualbase_defaultStyle(self.h)

type QsciLexerRubydefaultStyleBase* = proc(): cint
proc ondefaultStyle*(self: QsciLexerRuby, slot: proc(super: QsciLexerRubydefaultStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerRubydefaultStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_defaultStyle(self: ptr cQsciLexerRuby, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerRuby_defaultStyle ".} =
  type Cb = proc(super: QsciLexerRubydefaultStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_defaultStyle(QsciLexerRuby(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
type QsciLexerRubydescriptionBase* = proc(style: cint): string
proc ondescription*(self: QsciLexerRuby, slot: proc(style: cint): string) =
  # TODO check subclass
  type Cb = proc(style: cint): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_description(self: ptr cQsciLexerRuby, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerRuby_description ".} =
  type Cb = proc(style: cint): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc callVirtualBase_paper(self: QsciLexerRuby, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerRuby_virtualbase_paper(self.h, style))

type QsciLexerRubypaperBase* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: QsciLexerRuby, slot: proc(super: QsciLexerRubypaperBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerRubypaperBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_paper(self: ptr cQsciLexerRuby, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerRuby_paper ".} =
  type Cb = proc(super: QsciLexerRubypaperBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_paper(QsciLexerRuby(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultColorWithStyle(self: QsciLexerRuby, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerRuby_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerRubydefaultColorWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColorWithStyle*(self: QsciLexerRuby, slot: proc(super: QsciLexerRubydefaultColorWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerRubydefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_defaultColorWithStyle(self: ptr cQsciLexerRuby, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerRuby_defaultColorWithStyle ".} =
  type Cb = proc(super: QsciLexerRubydefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultColorWithStyle(QsciLexerRuby(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultEolFill(self: QsciLexerRuby, style: cint): bool =


  fQsciLexerRuby_virtualbase_defaultEolFill(self.h, style)

type QsciLexerRubydefaultEolFillBase* = proc(style: cint): bool
proc ondefaultEolFill*(self: QsciLexerRuby, slot: proc(super: QsciLexerRubydefaultEolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerRubydefaultEolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_defaultEolFill(self: ptr cQsciLexerRuby, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerRuby_defaultEolFill ".} =
  type Cb = proc(super: QsciLexerRubydefaultEolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultEolFill(QsciLexerRuby(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultFontWithStyle(self: QsciLexerRuby, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerRuby_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerRubydefaultFontWithStyleBase* = proc(style: cint): gen_qfont.QFont
proc ondefaultFontWithStyle*(self: QsciLexerRuby, slot: proc(super: QsciLexerRubydefaultFontWithStyleBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerRubydefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_defaultFontWithStyle(self: ptr cQsciLexerRuby, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerRuby_defaultFontWithStyle ".} =
  type Cb = proc(super: QsciLexerRubydefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultFontWithStyle(QsciLexerRuby(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultPaperWithStyle(self: QsciLexerRuby, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerRuby_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerRubydefaultPaperWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaperWithStyle*(self: QsciLexerRuby, slot: proc(super: QsciLexerRubydefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerRubydefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_defaultPaperWithStyle(self: ptr cQsciLexerRuby, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerRuby_defaultPaperWithStyle ".} =
  type Cb = proc(super: QsciLexerRubydefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultPaperWithStyle(QsciLexerRuby(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_setEditor(self: QsciLexerRuby, editor: gen_qsciscintilla.QsciScintilla): void =


  fQsciLexerRuby_virtualbase_setEditor(self.h, editor.h)

type QsciLexerRubysetEditorBase* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: QsciLexerRuby, slot: proc(super: QsciLexerRubysetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerRubysetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_setEditor(self: ptr cQsciLexerRuby, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerRuby_setEditor ".} =
  type Cb = proc(super: QsciLexerRubysetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qsciscintilla.QsciScintilla): auto =
    callVirtualBase_setEditor(QsciLexerRuby(h: self), editor)
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_refreshProperties(self: QsciLexerRuby, ): void =


  fQsciLexerRuby_virtualbase_refreshProperties(self.h)

type QsciLexerRubyrefreshPropertiesBase* = proc(): void
proc onrefreshProperties*(self: QsciLexerRuby, slot: proc(super: QsciLexerRubyrefreshPropertiesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerRubyrefreshPropertiesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_refreshProperties(self: ptr cQsciLexerRuby, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerRuby_refreshProperties ".} =
  type Cb = proc(super: QsciLexerRubyrefreshPropertiesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_refreshProperties(QsciLexerRuby(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_styleBitsNeeded(self: QsciLexerRuby, ): cint =


  fQsciLexerRuby_virtualbase_styleBitsNeeded(self.h)

type QsciLexerRubystyleBitsNeededBase* = proc(): cint
proc onstyleBitsNeeded*(self: QsciLexerRuby, slot: proc(super: QsciLexerRubystyleBitsNeededBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerRubystyleBitsNeededBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_styleBitsNeeded(self: ptr cQsciLexerRuby, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerRuby_styleBitsNeeded ".} =
  type Cb = proc(super: QsciLexerRubystyleBitsNeededBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_styleBitsNeeded(QsciLexerRuby(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_wordCharacters(self: QsciLexerRuby, ): cstring =


  (fQsciLexerRuby_virtualbase_wordCharacters(self.h))

type QsciLexerRubywordCharactersBase* = proc(): cstring
proc onwordCharacters*(self: QsciLexerRuby, slot: proc(super: QsciLexerRubywordCharactersBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerRubywordCharactersBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_wordCharacters(self: ptr cQsciLexerRuby, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerRuby_wordCharacters ".} =
  type Cb = proc(super: QsciLexerRubywordCharactersBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_wordCharacters(QsciLexerRuby(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setAutoIndentStyle(self: QsciLexerRuby, autoindentstyle: cint): void =


  fQsciLexerRuby_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerRubysetAutoIndentStyleBase* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: QsciLexerRuby, slot: proc(super: QsciLexerRubysetAutoIndentStyleBase, autoindentstyle: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerRubysetAutoIndentStyleBase, autoindentstyle: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_setAutoIndentStyle(self: ptr cQsciLexerRuby, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerRuby_setAutoIndentStyle ".} =
  type Cb = proc(super: QsciLexerRubysetAutoIndentStyleBase, autoindentstyle: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(autoindentstyle: cint): auto =
    callVirtualBase_setAutoIndentStyle(QsciLexerRuby(h: self), autoindentstyle)
  let slotval1 = autoindentstyle


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setColor(self: QsciLexerRuby, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerRuby_virtualbase_setColor(self.h, c.h, style)

type QsciLexerRubysetColorBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: QsciLexerRuby, slot: proc(super: QsciLexerRubysetColorBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerRubysetColorBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_setColor(self: ptr cQsciLexerRuby, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerRuby_setColor ".} =
  type Cb = proc(super: QsciLexerRubysetColorBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setColor(QsciLexerRuby(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setEolFill(self: QsciLexerRuby, eoffill: bool, style: cint): void =


  fQsciLexerRuby_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerRubysetEolFillBase* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: QsciLexerRuby, slot: proc(super: QsciLexerRubysetEolFillBase, eoffill: bool, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerRubysetEolFillBase, eoffill: bool, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_setEolFill(self: ptr cQsciLexerRuby, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerRuby_setEolFill ".} =
  type Cb = proc(super: QsciLexerRubysetEolFillBase, eoffill: bool, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eoffill: bool, style: cint): auto =
    callVirtualBase_setEolFill(QsciLexerRuby(h: self), eoffill, style)
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setFont(self: QsciLexerRuby, f: gen_qfont.QFont, style: cint): void =


  fQsciLexerRuby_virtualbase_setFont(self.h, f.h, style)

type QsciLexerRubysetFontBase* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: QsciLexerRuby, slot: proc(super: QsciLexerRubysetFontBase, f: gen_qfont.QFont, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerRubysetFontBase, f: gen_qfont.QFont, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_setFont(self: ptr cQsciLexerRuby, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerRuby_setFont ".} =
  type Cb = proc(super: QsciLexerRubysetFontBase, f: gen_qfont.QFont, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(f: gen_qfont.QFont, style: cint): auto =
    callVirtualBase_setFont(QsciLexerRuby(h: self), f, style)
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setPaper(self: QsciLexerRuby, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerRuby_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerRubysetPaperBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: QsciLexerRuby, slot: proc(super: QsciLexerRubysetPaperBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerRubysetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_setPaper(self: ptr cQsciLexerRuby, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerRuby_setPaper ".} =
  type Cb = proc(super: QsciLexerRubysetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setPaper(QsciLexerRuby(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_readProperties(self: QsciLexerRuby, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerRuby_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerRubyreadPropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: QsciLexerRuby, slot: proc(super: QsciLexerRubyreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerRubyreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_readProperties(self: ptr cQsciLexerRuby, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerRuby_readProperties ".} =
  type Cb = proc(super: QsciLexerRubyreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_readProperties(QsciLexerRuby(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_writeProperties(self: QsciLexerRuby, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerRuby_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerRubywritePropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: QsciLexerRuby, slot: proc(super: QsciLexerRubywritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerRubywritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_writeProperties(self: ptr cQsciLexerRuby, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerRuby_writeProperties ".} =
  type Cb = proc(super: QsciLexerRubywritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_writeProperties(QsciLexerRuby(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_event(self: QsciLexerRuby, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerRuby_virtualbase_event(self.h, event.h)

type QsciLexerRubyeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QsciLexerRuby, slot: proc(super: QsciLexerRubyeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerRubyeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_event(self: ptr cQsciLexerRuby, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerRuby_event ".} =
  type Cb = proc(super: QsciLexerRubyeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QsciLexerRuby(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QsciLexerRuby, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerRuby_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerRubyeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QsciLexerRuby, slot: proc(super: QsciLexerRubyeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerRubyeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_eventFilter(self: ptr cQsciLexerRuby, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerRuby_eventFilter ".} =
  type Cb = proc(super: QsciLexerRubyeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QsciLexerRuby(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QsciLexerRuby, event: gen_qcoreevent.QTimerEvent): void =


  fQsciLexerRuby_virtualbase_timerEvent(self.h, event.h)

type QsciLexerRubytimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QsciLexerRuby, slot: proc(super: QsciLexerRubytimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerRubytimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_timerEvent(self: ptr cQsciLexerRuby, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerRuby_timerEvent ".} =
  type Cb = proc(super: QsciLexerRubytimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QsciLexerRuby(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QsciLexerRuby, event: gen_qcoreevent.QChildEvent): void =


  fQsciLexerRuby_virtualbase_childEvent(self.h, event.h)

type QsciLexerRubychildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QsciLexerRuby, slot: proc(super: QsciLexerRubychildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerRubychildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_childEvent(self: ptr cQsciLexerRuby, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerRuby_childEvent ".} =
  type Cb = proc(super: QsciLexerRubychildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QsciLexerRuby(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QsciLexerRuby, event: gen_qcoreevent.QEvent): void =


  fQsciLexerRuby_virtualbase_customEvent(self.h, event.h)

type QsciLexerRubycustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QsciLexerRuby, slot: proc(super: QsciLexerRubycustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerRubycustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_customEvent(self: ptr cQsciLexerRuby, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerRuby_customEvent ".} =
  type Cb = proc(super: QsciLexerRubycustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QsciLexerRuby(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QsciLexerRuby, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerRuby_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerRubyconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QsciLexerRuby, slot: proc(super: QsciLexerRubyconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerRubyconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_connectNotify(self: ptr cQsciLexerRuby, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerRuby_connectNotify ".} =
  type Cb = proc(super: QsciLexerRubyconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QsciLexerRuby(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QsciLexerRuby, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerRuby_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerRubydisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QsciLexerRuby, slot: proc(super: QsciLexerRubydisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerRubydisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_disconnectNotify(self: ptr cQsciLexerRuby, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerRuby_disconnectNotify ".} =
  type Cb = proc(super: QsciLexerRubydisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QsciLexerRuby(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QsciLexerRuby): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerRuby_staticMetaObject())
proc delete*(self: QsciLexerRuby) =
  fcQsciLexerRuby_delete(self.h)
