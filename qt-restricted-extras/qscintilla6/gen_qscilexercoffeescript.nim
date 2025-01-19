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
{.compile("gen_qscilexercoffeescript.cpp", cflags).}


type QsciLexerCoffeeScriptEnum* = cint
const
  QsciLexerCoffeeScriptDefault* = 0
  QsciLexerCoffeeScriptComment* = 1
  QsciLexerCoffeeScriptCommentLine* = 2
  QsciLexerCoffeeScriptCommentDoc* = 3
  QsciLexerCoffeeScriptNumber* = 4
  QsciLexerCoffeeScriptKeyword* = 5
  QsciLexerCoffeeScriptDoubleQuotedString* = 6
  QsciLexerCoffeeScriptSingleQuotedString* = 7
  QsciLexerCoffeeScriptUUID* = 8
  QsciLexerCoffeeScriptPreProcessor* = 9
  QsciLexerCoffeeScriptOperator* = 10
  QsciLexerCoffeeScriptIdentifier* = 11
  QsciLexerCoffeeScriptUnclosedString* = 12
  QsciLexerCoffeeScriptVerbatimString* = 13
  QsciLexerCoffeeScriptRegex* = 14
  QsciLexerCoffeeScriptCommentLineDoc* = 15
  QsciLexerCoffeeScriptKeywordSet2* = 16
  QsciLexerCoffeeScriptCommentDocKeyword* = 17
  QsciLexerCoffeeScriptCommentDocKeywordError* = 18
  QsciLexerCoffeeScriptGlobalClass* = 19
  QsciLexerCoffeeScriptCommentBlock* = 22
  QsciLexerCoffeeScriptBlockRegex* = 23
  QsciLexerCoffeeScriptBlockRegexComment* = 24
  QsciLexerCoffeeScriptInstanceProperty* = 25



import gen_qscilexercoffeescript_types
export gen_qscilexercoffeescript_types

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

type cQsciLexerCoffeeScript*{.exportc: "QsciLexerCoffeeScript", incompleteStruct.} = object

proc fcQsciLexerCoffeeScript_new(): ptr cQsciLexerCoffeeScript {.importc: "QsciLexerCoffeeScript_new".}
proc fcQsciLexerCoffeeScript_new2(parent: pointer): ptr cQsciLexerCoffeeScript {.importc: "QsciLexerCoffeeScript_new2".}
proc fcQsciLexerCoffeeScript_metaObject(self: pointer, ): pointer {.importc: "QsciLexerCoffeeScript_metaObject".}
proc fcQsciLexerCoffeeScript_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerCoffeeScript_metacast".}
proc fcQsciLexerCoffeeScript_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerCoffeeScript_metacall".}
proc fcQsciLexerCoffeeScript_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerCoffeeScript_tr".}
proc fcQsciLexerCoffeeScript_language(self: pointer, ): cstring {.importc: "QsciLexerCoffeeScript_language".}
proc fcQsciLexerCoffeeScript_lexer(self: pointer, ): cstring {.importc: "QsciLexerCoffeeScript_lexer".}
proc fcQsciLexerCoffeeScript_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array {.importc: "QsciLexerCoffeeScript_autoCompletionWordSeparators".}
proc fcQsciLexerCoffeeScript_blockEnd(self: pointer, ): cstring {.importc: "QsciLexerCoffeeScript_blockEnd".}
proc fcQsciLexerCoffeeScript_blockStart(self: pointer, ): cstring {.importc: "QsciLexerCoffeeScript_blockStart".}
proc fcQsciLexerCoffeeScript_blockStartKeyword(self: pointer, ): cstring {.importc: "QsciLexerCoffeeScript_blockStartKeyword".}
proc fcQsciLexerCoffeeScript_braceStyle(self: pointer, ): cint {.importc: "QsciLexerCoffeeScript_braceStyle".}
proc fcQsciLexerCoffeeScript_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerCoffeeScript_wordCharacters".}
proc fcQsciLexerCoffeeScript_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerCoffeeScript_defaultColor".}
proc fcQsciLexerCoffeeScript_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerCoffeeScript_defaultEolFill".}
proc fcQsciLexerCoffeeScript_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerCoffeeScript_defaultFont".}
proc fcQsciLexerCoffeeScript_defaultPaper(self: pointer, style: cint): pointer {.importc: "QsciLexerCoffeeScript_defaultPaper".}
proc fcQsciLexerCoffeeScript_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerCoffeeScript_keywords".}
proc fcQsciLexerCoffeeScript_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerCoffeeScript_description".}
proc fcQsciLexerCoffeeScript_refreshProperties(self: pointer, ): void {.importc: "QsciLexerCoffeeScript_refreshProperties".}
proc fcQsciLexerCoffeeScript_dollarsAllowed(self: pointer, ): bool {.importc: "QsciLexerCoffeeScript_dollarsAllowed".}
proc fcQsciLexerCoffeeScript_setDollarsAllowed(self: pointer, allowed: bool): void {.importc: "QsciLexerCoffeeScript_setDollarsAllowed".}
proc fcQsciLexerCoffeeScript_foldComments(self: pointer, ): bool {.importc: "QsciLexerCoffeeScript_foldComments".}
proc fcQsciLexerCoffeeScript_setFoldComments(self: pointer, fold: bool): void {.importc: "QsciLexerCoffeeScript_setFoldComments".}
proc fcQsciLexerCoffeeScript_foldCompact(self: pointer, ): bool {.importc: "QsciLexerCoffeeScript_foldCompact".}
proc fcQsciLexerCoffeeScript_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerCoffeeScript_setFoldCompact".}
proc fcQsciLexerCoffeeScript_stylePreprocessor(self: pointer, ): bool {.importc: "QsciLexerCoffeeScript_stylePreprocessor".}
proc fcQsciLexerCoffeeScript_setStylePreprocessor(self: pointer, style: bool): void {.importc: "QsciLexerCoffeeScript_setStylePreprocessor".}
proc fcQsciLexerCoffeeScript_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerCoffeeScript_tr2".}
proc fcQsciLexerCoffeeScript_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerCoffeeScript_tr3".}
proc fcQsciLexerCoffeeScript_blockEnd1(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerCoffeeScript_blockEnd1".}
proc fcQsciLexerCoffeeScript_blockStart1(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerCoffeeScript_blockStart1".}
proc fcQsciLexerCoffeeScript_blockStartKeyword1(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerCoffeeScript_blockStartKeyword1".}
proc fQsciLexerCoffeeScript_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciLexerCoffeeScript_virtualbase_metacall".}
proc fcQsciLexerCoffeeScript_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciLexerCoffeeScript_override_virtual_metacall".}
proc fcQsciLexerCoffeeScript_override_virtual_language(self: pointer, slot: int) {.importc: "QsciLexerCoffeeScript_override_virtual_language".}
proc fQsciLexerCoffeeScript_virtualbase_lexer(self: pointer, ): cstring{.importc: "QsciLexerCoffeeScript_virtualbase_lexer".}
proc fcQsciLexerCoffeeScript_override_virtual_lexer(self: pointer, slot: int) {.importc: "QsciLexerCoffeeScript_override_virtual_lexer".}
proc fQsciLexerCoffeeScript_virtualbase_lexerId(self: pointer, ): cint{.importc: "QsciLexerCoffeeScript_virtualbase_lexerId".}
proc fcQsciLexerCoffeeScript_override_virtual_lexerId(self: pointer, slot: int) {.importc: "QsciLexerCoffeeScript_override_virtual_lexerId".}
proc fQsciLexerCoffeeScript_virtualbase_autoCompletionFillups(self: pointer, ): cstring{.importc: "QsciLexerCoffeeScript_virtualbase_autoCompletionFillups".}
proc fcQsciLexerCoffeeScript_override_virtual_autoCompletionFillups(self: pointer, slot: int) {.importc: "QsciLexerCoffeeScript_override_virtual_autoCompletionFillups".}
proc fQsciLexerCoffeeScript_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array{.importc: "QsciLexerCoffeeScript_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerCoffeeScript_override_virtual_autoCompletionWordSeparators(self: pointer, slot: int) {.importc: "QsciLexerCoffeeScript_override_virtual_autoCompletionWordSeparators".}
proc fQsciLexerCoffeeScript_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerCoffeeScript_virtualbase_blockEnd".}
proc fcQsciLexerCoffeeScript_override_virtual_blockEnd(self: pointer, slot: int) {.importc: "QsciLexerCoffeeScript_override_virtual_blockEnd".}
proc fQsciLexerCoffeeScript_virtualbase_blockLookback(self: pointer, ): cint{.importc: "QsciLexerCoffeeScript_virtualbase_blockLookback".}
proc fcQsciLexerCoffeeScript_override_virtual_blockLookback(self: pointer, slot: int) {.importc: "QsciLexerCoffeeScript_override_virtual_blockLookback".}
proc fQsciLexerCoffeeScript_virtualbase_blockStart(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerCoffeeScript_virtualbase_blockStart".}
proc fcQsciLexerCoffeeScript_override_virtual_blockStart(self: pointer, slot: int) {.importc: "QsciLexerCoffeeScript_override_virtual_blockStart".}
proc fQsciLexerCoffeeScript_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerCoffeeScript_virtualbase_blockStartKeyword".}
proc fcQsciLexerCoffeeScript_override_virtual_blockStartKeyword(self: pointer, slot: int) {.importc: "QsciLexerCoffeeScript_override_virtual_blockStartKeyword".}
proc fQsciLexerCoffeeScript_virtualbase_braceStyle(self: pointer, ): cint{.importc: "QsciLexerCoffeeScript_virtualbase_braceStyle".}
proc fcQsciLexerCoffeeScript_override_virtual_braceStyle(self: pointer, slot: int) {.importc: "QsciLexerCoffeeScript_override_virtual_braceStyle".}
proc fQsciLexerCoffeeScript_virtualbase_caseSensitive(self: pointer, ): bool{.importc: "QsciLexerCoffeeScript_virtualbase_caseSensitive".}
proc fcQsciLexerCoffeeScript_override_virtual_caseSensitive(self: pointer, slot: int) {.importc: "QsciLexerCoffeeScript_override_virtual_caseSensitive".}
proc fQsciLexerCoffeeScript_virtualbase_color(self: pointer, style: cint): pointer{.importc: "QsciLexerCoffeeScript_virtualbase_color".}
proc fcQsciLexerCoffeeScript_override_virtual_color(self: pointer, slot: int) {.importc: "QsciLexerCoffeeScript_override_virtual_color".}
proc fQsciLexerCoffeeScript_virtualbase_eolFill(self: pointer, style: cint): bool{.importc: "QsciLexerCoffeeScript_virtualbase_eolFill".}
proc fcQsciLexerCoffeeScript_override_virtual_eolFill(self: pointer, slot: int) {.importc: "QsciLexerCoffeeScript_override_virtual_eolFill".}
proc fQsciLexerCoffeeScript_virtualbase_font(self: pointer, style: cint): pointer{.importc: "QsciLexerCoffeeScript_virtualbase_font".}
proc fcQsciLexerCoffeeScript_override_virtual_font(self: pointer, slot: int) {.importc: "QsciLexerCoffeeScript_override_virtual_font".}
proc fQsciLexerCoffeeScript_virtualbase_indentationGuideView(self: pointer, ): cint{.importc: "QsciLexerCoffeeScript_virtualbase_indentationGuideView".}
proc fcQsciLexerCoffeeScript_override_virtual_indentationGuideView(self: pointer, slot: int) {.importc: "QsciLexerCoffeeScript_override_virtual_indentationGuideView".}
proc fQsciLexerCoffeeScript_virtualbase_keywords(self: pointer, set: cint): cstring{.importc: "QsciLexerCoffeeScript_virtualbase_keywords".}
proc fcQsciLexerCoffeeScript_override_virtual_keywords(self: pointer, slot: int) {.importc: "QsciLexerCoffeeScript_override_virtual_keywords".}
proc fQsciLexerCoffeeScript_virtualbase_defaultStyle(self: pointer, ): cint{.importc: "QsciLexerCoffeeScript_virtualbase_defaultStyle".}
proc fcQsciLexerCoffeeScript_override_virtual_defaultStyle(self: pointer, slot: int) {.importc: "QsciLexerCoffeeScript_override_virtual_defaultStyle".}
proc fcQsciLexerCoffeeScript_override_virtual_description(self: pointer, slot: int) {.importc: "QsciLexerCoffeeScript_override_virtual_description".}
proc fQsciLexerCoffeeScript_virtualbase_paper(self: pointer, style: cint): pointer{.importc: "QsciLexerCoffeeScript_virtualbase_paper".}
proc fcQsciLexerCoffeeScript_override_virtual_paper(self: pointer, slot: int) {.importc: "QsciLexerCoffeeScript_override_virtual_paper".}
proc fQsciLexerCoffeeScript_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerCoffeeScript_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerCoffeeScript_override_virtual_defaultColorWithStyle(self: pointer, slot: int) {.importc: "QsciLexerCoffeeScript_override_virtual_defaultColorWithStyle".}
proc fQsciLexerCoffeeScript_virtualbase_defaultEolFill(self: pointer, style: cint): bool{.importc: "QsciLexerCoffeeScript_virtualbase_defaultEolFill".}
proc fcQsciLexerCoffeeScript_override_virtual_defaultEolFill(self: pointer, slot: int) {.importc: "QsciLexerCoffeeScript_override_virtual_defaultEolFill".}
proc fQsciLexerCoffeeScript_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerCoffeeScript_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerCoffeeScript_override_virtual_defaultFontWithStyle(self: pointer, slot: int) {.importc: "QsciLexerCoffeeScript_override_virtual_defaultFontWithStyle".}
proc fQsciLexerCoffeeScript_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerCoffeeScript_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerCoffeeScript_override_virtual_defaultPaperWithStyle(self: pointer, slot: int) {.importc: "QsciLexerCoffeeScript_override_virtual_defaultPaperWithStyle".}
proc fQsciLexerCoffeeScript_virtualbase_setEditor(self: pointer, editor: pointer): void{.importc: "QsciLexerCoffeeScript_virtualbase_setEditor".}
proc fcQsciLexerCoffeeScript_override_virtual_setEditor(self: pointer, slot: int) {.importc: "QsciLexerCoffeeScript_override_virtual_setEditor".}
proc fQsciLexerCoffeeScript_virtualbase_refreshProperties(self: pointer, ): void{.importc: "QsciLexerCoffeeScript_virtualbase_refreshProperties".}
proc fcQsciLexerCoffeeScript_override_virtual_refreshProperties(self: pointer, slot: int) {.importc: "QsciLexerCoffeeScript_override_virtual_refreshProperties".}
proc fQsciLexerCoffeeScript_virtualbase_styleBitsNeeded(self: pointer, ): cint{.importc: "QsciLexerCoffeeScript_virtualbase_styleBitsNeeded".}
proc fcQsciLexerCoffeeScript_override_virtual_styleBitsNeeded(self: pointer, slot: int) {.importc: "QsciLexerCoffeeScript_override_virtual_styleBitsNeeded".}
proc fQsciLexerCoffeeScript_virtualbase_wordCharacters(self: pointer, ): cstring{.importc: "QsciLexerCoffeeScript_virtualbase_wordCharacters".}
proc fcQsciLexerCoffeeScript_override_virtual_wordCharacters(self: pointer, slot: int) {.importc: "QsciLexerCoffeeScript_override_virtual_wordCharacters".}
proc fQsciLexerCoffeeScript_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void{.importc: "QsciLexerCoffeeScript_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerCoffeeScript_override_virtual_setAutoIndentStyle(self: pointer, slot: int) {.importc: "QsciLexerCoffeeScript_override_virtual_setAutoIndentStyle".}
proc fQsciLexerCoffeeScript_virtualbase_setColor(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerCoffeeScript_virtualbase_setColor".}
proc fcQsciLexerCoffeeScript_override_virtual_setColor(self: pointer, slot: int) {.importc: "QsciLexerCoffeeScript_override_virtual_setColor".}
proc fQsciLexerCoffeeScript_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void{.importc: "QsciLexerCoffeeScript_virtualbase_setEolFill".}
proc fcQsciLexerCoffeeScript_override_virtual_setEolFill(self: pointer, slot: int) {.importc: "QsciLexerCoffeeScript_override_virtual_setEolFill".}
proc fQsciLexerCoffeeScript_virtualbase_setFont(self: pointer, f: pointer, style: cint): void{.importc: "QsciLexerCoffeeScript_virtualbase_setFont".}
proc fcQsciLexerCoffeeScript_override_virtual_setFont(self: pointer, slot: int) {.importc: "QsciLexerCoffeeScript_override_virtual_setFont".}
proc fQsciLexerCoffeeScript_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerCoffeeScript_virtualbase_setPaper".}
proc fcQsciLexerCoffeeScript_override_virtual_setPaper(self: pointer, slot: int) {.importc: "QsciLexerCoffeeScript_override_virtual_setPaper".}
proc fQsciLexerCoffeeScript_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerCoffeeScript_virtualbase_readProperties".}
proc fcQsciLexerCoffeeScript_override_virtual_readProperties(self: pointer, slot: int) {.importc: "QsciLexerCoffeeScript_override_virtual_readProperties".}
proc fQsciLexerCoffeeScript_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerCoffeeScript_virtualbase_writeProperties".}
proc fcQsciLexerCoffeeScript_override_virtual_writeProperties(self: pointer, slot: int) {.importc: "QsciLexerCoffeeScript_override_virtual_writeProperties".}
proc fQsciLexerCoffeeScript_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QsciLexerCoffeeScript_virtualbase_event".}
proc fcQsciLexerCoffeeScript_override_virtual_event(self: pointer, slot: int) {.importc: "QsciLexerCoffeeScript_override_virtual_event".}
proc fQsciLexerCoffeeScript_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciLexerCoffeeScript_virtualbase_eventFilter".}
proc fcQsciLexerCoffeeScript_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciLexerCoffeeScript_override_virtual_eventFilter".}
proc fQsciLexerCoffeeScript_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciLexerCoffeeScript_virtualbase_timerEvent".}
proc fcQsciLexerCoffeeScript_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciLexerCoffeeScript_override_virtual_timerEvent".}
proc fQsciLexerCoffeeScript_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciLexerCoffeeScript_virtualbase_childEvent".}
proc fcQsciLexerCoffeeScript_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciLexerCoffeeScript_override_virtual_childEvent".}
proc fQsciLexerCoffeeScript_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciLexerCoffeeScript_virtualbase_customEvent".}
proc fcQsciLexerCoffeeScript_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciLexerCoffeeScript_override_virtual_customEvent".}
proc fQsciLexerCoffeeScript_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerCoffeeScript_virtualbase_connectNotify".}
proc fcQsciLexerCoffeeScript_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciLexerCoffeeScript_override_virtual_connectNotify".}
proc fQsciLexerCoffeeScript_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerCoffeeScript_virtualbase_disconnectNotify".}
proc fcQsciLexerCoffeeScript_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciLexerCoffeeScript_override_virtual_disconnectNotify".}
proc fcQsciLexerCoffeeScript_staticMetaObject(): pointer {.importc: "QsciLexerCoffeeScript_staticMetaObject".}
proc fcQsciLexerCoffeeScript_delete(self: pointer) {.importc: "QsciLexerCoffeeScript_delete".}


func init*(T: type QsciLexerCoffeeScript, h: ptr cQsciLexerCoffeeScript): QsciLexerCoffeeScript =
  T(h: h)
proc create*(T: type QsciLexerCoffeeScript, ): QsciLexerCoffeeScript =

  QsciLexerCoffeeScript.init(fcQsciLexerCoffeeScript_new())
proc create*(T: type QsciLexerCoffeeScript, parent: gen_qobject.QObject): QsciLexerCoffeeScript =

  QsciLexerCoffeeScript.init(fcQsciLexerCoffeeScript_new2(parent.h))
proc metaObject*(self: QsciLexerCoffeeScript, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQsciLexerCoffeeScript_metaObject(self.h))

proc metacast*(self: QsciLexerCoffeeScript, param1: cstring): pointer =

  fcQsciLexerCoffeeScript_metacast(self.h, param1)

proc metacall*(self: QsciLexerCoffeeScript, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQsciLexerCoffeeScript_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QsciLexerCoffeeScript, s: cstring): string =

  let v_ms = fcQsciLexerCoffeeScript_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: QsciLexerCoffeeScript, ): cstring =

  (fcQsciLexerCoffeeScript_language(self.h))

proc lexer*(self: QsciLexerCoffeeScript, ): cstring =

  (fcQsciLexerCoffeeScript_lexer(self.h))

proc autoCompletionWordSeparators*(self: QsciLexerCoffeeScript, ): seq[string] =

  var v_ma = fcQsciLexerCoffeeScript_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc blockEnd*(self: QsciLexerCoffeeScript, ): cstring =

  (fcQsciLexerCoffeeScript_blockEnd(self.h))

proc blockStart*(self: QsciLexerCoffeeScript, ): cstring =

  (fcQsciLexerCoffeeScript_blockStart(self.h))

proc blockStartKeyword*(self: QsciLexerCoffeeScript, ): cstring =

  (fcQsciLexerCoffeeScript_blockStartKeyword(self.h))

proc braceStyle*(self: QsciLexerCoffeeScript, ): cint =

  fcQsciLexerCoffeeScript_braceStyle(self.h)

proc wordCharacters*(self: QsciLexerCoffeeScript, ): cstring =

  (fcQsciLexerCoffeeScript_wordCharacters(self.h))

proc defaultColor*(self: QsciLexerCoffeeScript, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerCoffeeScript_defaultColor(self.h, style))

proc defaultEolFill*(self: QsciLexerCoffeeScript, style: cint): bool =

  fcQsciLexerCoffeeScript_defaultEolFill(self.h, style)

proc defaultFont*(self: QsciLexerCoffeeScript, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQsciLexerCoffeeScript_defaultFont(self.h, style))

proc defaultPaper*(self: QsciLexerCoffeeScript, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerCoffeeScript_defaultPaper(self.h, style))

proc keywords*(self: QsciLexerCoffeeScript, set: cint): cstring =

  (fcQsciLexerCoffeeScript_keywords(self.h, set))

proc description*(self: QsciLexerCoffeeScript, style: cint): string =

  let v_ms = fcQsciLexerCoffeeScript_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: QsciLexerCoffeeScript, ): void =

  fcQsciLexerCoffeeScript_refreshProperties(self.h)

proc dollarsAllowed*(self: QsciLexerCoffeeScript, ): bool =

  fcQsciLexerCoffeeScript_dollarsAllowed(self.h)

proc setDollarsAllowed*(self: QsciLexerCoffeeScript, allowed: bool): void =

  fcQsciLexerCoffeeScript_setDollarsAllowed(self.h, allowed)

proc foldComments*(self: QsciLexerCoffeeScript, ): bool =

  fcQsciLexerCoffeeScript_foldComments(self.h)

proc setFoldComments*(self: QsciLexerCoffeeScript, fold: bool): void =

  fcQsciLexerCoffeeScript_setFoldComments(self.h, fold)

proc foldCompact*(self: QsciLexerCoffeeScript, ): bool =

  fcQsciLexerCoffeeScript_foldCompact(self.h)

proc setFoldCompact*(self: QsciLexerCoffeeScript, fold: bool): void =

  fcQsciLexerCoffeeScript_setFoldCompact(self.h, fold)

proc stylePreprocessor*(self: QsciLexerCoffeeScript, ): bool =

  fcQsciLexerCoffeeScript_stylePreprocessor(self.h)

proc setStylePreprocessor*(self: QsciLexerCoffeeScript, style: bool): void =

  fcQsciLexerCoffeeScript_setStylePreprocessor(self.h, style)

proc tr2*(_: type QsciLexerCoffeeScript, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerCoffeeScript_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QsciLexerCoffeeScript, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerCoffeeScript_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc blockEnd1*(self: QsciLexerCoffeeScript, style: ptr cint): cstring =

  (fcQsciLexerCoffeeScript_blockEnd1(self.h, style))

proc blockStart1*(self: QsciLexerCoffeeScript, style: ptr cint): cstring =

  (fcQsciLexerCoffeeScript_blockStart1(self.h, style))

proc blockStartKeyword1*(self: QsciLexerCoffeeScript, style: ptr cint): cstring =

  (fcQsciLexerCoffeeScript_blockStartKeyword1(self.h, style))

proc callVirtualBase_metacall(self: QsciLexerCoffeeScript, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQsciLexerCoffeeScript_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerCoffeeScriptmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QsciLexerCoffeeScript, slot: proc(super: QsciLexerCoffeeScriptmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCoffeeScriptmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_metacall(self: ptr cQsciLexerCoffeeScript, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_metacall ".} =
  type Cb = proc(super: QsciLexerCoffeeScriptmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QsciLexerCoffeeScript(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
type QsciLexerCoffeeScriptlanguageBase* = proc(): cstring
proc onlanguage*(self: QsciLexerCoffeeScript, slot: proc(): cstring) =
  # TODO check subclass
  type Cb = proc(): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_language(self: ptr cQsciLexerCoffeeScript, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_language ".} =
  type Cb = proc(): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc callVirtualBase_lexer(self: QsciLexerCoffeeScript, ): cstring =


  (fQsciLexerCoffeeScript_virtualbase_lexer(self.h))

type QsciLexerCoffeeScriptlexerBase* = proc(): cstring
proc onlexer*(self: QsciLexerCoffeeScript, slot: proc(super: QsciLexerCoffeeScriptlexerBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCoffeeScriptlexerBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_lexer(self: ptr cQsciLexerCoffeeScript, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_lexer ".} =
  type Cb = proc(super: QsciLexerCoffeeScriptlexerBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexer(QsciLexerCoffeeScript(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_lexerId(self: QsciLexerCoffeeScript, ): cint =


  fQsciLexerCoffeeScript_virtualbase_lexerId(self.h)

type QsciLexerCoffeeScriptlexerIdBase* = proc(): cint
proc onlexerId*(self: QsciLexerCoffeeScript, slot: proc(super: QsciLexerCoffeeScriptlexerIdBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCoffeeScriptlexerIdBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_lexerId(self: ptr cQsciLexerCoffeeScript, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_lexerId ".} =
  type Cb = proc(super: QsciLexerCoffeeScriptlexerIdBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexerId(QsciLexerCoffeeScript(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionFillups(self: QsciLexerCoffeeScript, ): cstring =


  (fQsciLexerCoffeeScript_virtualbase_autoCompletionFillups(self.h))

type QsciLexerCoffeeScriptautoCompletionFillupsBase* = proc(): cstring
proc onautoCompletionFillups*(self: QsciLexerCoffeeScript, slot: proc(super: QsciLexerCoffeeScriptautoCompletionFillupsBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCoffeeScriptautoCompletionFillupsBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_autoCompletionFillups(self: ptr cQsciLexerCoffeeScript, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_autoCompletionFillups ".} =
  type Cb = proc(super: QsciLexerCoffeeScriptautoCompletionFillupsBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionFillups(QsciLexerCoffeeScript(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionWordSeparators(self: QsciLexerCoffeeScript, ): seq[string] =


  var v_ma = fQsciLexerCoffeeScript_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerCoffeeScriptautoCompletionWordSeparatorsBase* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: QsciLexerCoffeeScript, slot: proc(super: QsciLexerCoffeeScriptautoCompletionWordSeparatorsBase): seq[string]) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCoffeeScriptautoCompletionWordSeparatorsBase): seq[string]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_autoCompletionWordSeparators(self: ptr cQsciLexerCoffeeScript, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_autoCompletionWordSeparators ".} =
  type Cb = proc(super: QsciLexerCoffeeScriptautoCompletionWordSeparatorsBase): seq[string]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionWordSeparators(QsciLexerCoffeeScript(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_blockEnd(self: QsciLexerCoffeeScript, style: ptr cint): cstring =


  (fQsciLexerCoffeeScript_virtualbase_blockEnd(self.h, style))

type QsciLexerCoffeeScriptblockEndBase* = proc(style: ptr cint): cstring
proc onblockEnd*(self: QsciLexerCoffeeScript, slot: proc(super: QsciLexerCoffeeScriptblockEndBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCoffeeScriptblockEndBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_blockEnd(self: ptr cQsciLexerCoffeeScript, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_blockEnd ".} =
  type Cb = proc(super: QsciLexerCoffeeScriptblockEndBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockEnd(QsciLexerCoffeeScript(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockLookback(self: QsciLexerCoffeeScript, ): cint =


  fQsciLexerCoffeeScript_virtualbase_blockLookback(self.h)

type QsciLexerCoffeeScriptblockLookbackBase* = proc(): cint
proc onblockLookback*(self: QsciLexerCoffeeScript, slot: proc(super: QsciLexerCoffeeScriptblockLookbackBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCoffeeScriptblockLookbackBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_blockLookback(self: ptr cQsciLexerCoffeeScript, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_blockLookback ".} =
  type Cb = proc(super: QsciLexerCoffeeScriptblockLookbackBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_blockLookback(QsciLexerCoffeeScript(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_blockStart(self: QsciLexerCoffeeScript, style: ptr cint): cstring =


  (fQsciLexerCoffeeScript_virtualbase_blockStart(self.h, style))

type QsciLexerCoffeeScriptblockStartBase* = proc(style: ptr cint): cstring
proc onblockStart*(self: QsciLexerCoffeeScript, slot: proc(super: QsciLexerCoffeeScriptblockStartBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCoffeeScriptblockStartBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_blockStart(self: ptr cQsciLexerCoffeeScript, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_blockStart ".} =
  type Cb = proc(super: QsciLexerCoffeeScriptblockStartBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStart(QsciLexerCoffeeScript(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockStartKeyword(self: QsciLexerCoffeeScript, style: ptr cint): cstring =


  (fQsciLexerCoffeeScript_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerCoffeeScriptblockStartKeywordBase* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: QsciLexerCoffeeScript, slot: proc(super: QsciLexerCoffeeScriptblockStartKeywordBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCoffeeScriptblockStartKeywordBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_blockStartKeyword(self: ptr cQsciLexerCoffeeScript, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_blockStartKeyword ".} =
  type Cb = proc(super: QsciLexerCoffeeScriptblockStartKeywordBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStartKeyword(QsciLexerCoffeeScript(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_braceStyle(self: QsciLexerCoffeeScript, ): cint =


  fQsciLexerCoffeeScript_virtualbase_braceStyle(self.h)

type QsciLexerCoffeeScriptbraceStyleBase* = proc(): cint
proc onbraceStyle*(self: QsciLexerCoffeeScript, slot: proc(super: QsciLexerCoffeeScriptbraceStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCoffeeScriptbraceStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_braceStyle(self: ptr cQsciLexerCoffeeScript, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_braceStyle ".} =
  type Cb = proc(super: QsciLexerCoffeeScriptbraceStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_braceStyle(QsciLexerCoffeeScript(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_caseSensitive(self: QsciLexerCoffeeScript, ): bool =


  fQsciLexerCoffeeScript_virtualbase_caseSensitive(self.h)

type QsciLexerCoffeeScriptcaseSensitiveBase* = proc(): bool
proc oncaseSensitive*(self: QsciLexerCoffeeScript, slot: proc(super: QsciLexerCoffeeScriptcaseSensitiveBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCoffeeScriptcaseSensitiveBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_caseSensitive(self: ptr cQsciLexerCoffeeScript, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_caseSensitive ".} =
  type Cb = proc(super: QsciLexerCoffeeScriptcaseSensitiveBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_caseSensitive(QsciLexerCoffeeScript(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_color(self: QsciLexerCoffeeScript, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerCoffeeScript_virtualbase_color(self.h, style))

type QsciLexerCoffeeScriptcolorBase* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: QsciLexerCoffeeScript, slot: proc(super: QsciLexerCoffeeScriptcolorBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCoffeeScriptcolorBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_color(self: ptr cQsciLexerCoffeeScript, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_color ".} =
  type Cb = proc(super: QsciLexerCoffeeScriptcolorBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_color(QsciLexerCoffeeScript(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_eolFill(self: QsciLexerCoffeeScript, style: cint): bool =


  fQsciLexerCoffeeScript_virtualbase_eolFill(self.h, style)

type QsciLexerCoffeeScripteolFillBase* = proc(style: cint): bool
proc oneolFill*(self: QsciLexerCoffeeScript, slot: proc(super: QsciLexerCoffeeScripteolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCoffeeScripteolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_eolFill(self: ptr cQsciLexerCoffeeScript, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_eolFill ".} =
  type Cb = proc(super: QsciLexerCoffeeScripteolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_eolFill(QsciLexerCoffeeScript(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_font(self: QsciLexerCoffeeScript, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerCoffeeScript_virtualbase_font(self.h, style))

type QsciLexerCoffeeScriptfontBase* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: QsciLexerCoffeeScript, slot: proc(super: QsciLexerCoffeeScriptfontBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCoffeeScriptfontBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_font(self: ptr cQsciLexerCoffeeScript, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_font ".} =
  type Cb = proc(super: QsciLexerCoffeeScriptfontBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_font(QsciLexerCoffeeScript(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_indentationGuideView(self: QsciLexerCoffeeScript, ): cint =


  fQsciLexerCoffeeScript_virtualbase_indentationGuideView(self.h)

type QsciLexerCoffeeScriptindentationGuideViewBase* = proc(): cint
proc onindentationGuideView*(self: QsciLexerCoffeeScript, slot: proc(super: QsciLexerCoffeeScriptindentationGuideViewBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCoffeeScriptindentationGuideViewBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_indentationGuideView(self: ptr cQsciLexerCoffeeScript, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_indentationGuideView ".} =
  type Cb = proc(super: QsciLexerCoffeeScriptindentationGuideViewBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_indentationGuideView(QsciLexerCoffeeScript(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_keywords(self: QsciLexerCoffeeScript, set: cint): cstring =


  (fQsciLexerCoffeeScript_virtualbase_keywords(self.h, set))

type QsciLexerCoffeeScriptkeywordsBase* = proc(set: cint): cstring
proc onkeywords*(self: QsciLexerCoffeeScript, slot: proc(super: QsciLexerCoffeeScriptkeywordsBase, set: cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCoffeeScriptkeywordsBase, set: cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_keywords(self: ptr cQsciLexerCoffeeScript, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_keywords ".} =
  type Cb = proc(super: QsciLexerCoffeeScriptkeywordsBase, set: cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(set: cint): auto =
    callVirtualBase_keywords(QsciLexerCoffeeScript(h: self), set)
  let slotval1 = set


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultStyle(self: QsciLexerCoffeeScript, ): cint =


  fQsciLexerCoffeeScript_virtualbase_defaultStyle(self.h)

type QsciLexerCoffeeScriptdefaultStyleBase* = proc(): cint
proc ondefaultStyle*(self: QsciLexerCoffeeScript, slot: proc(super: QsciLexerCoffeeScriptdefaultStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCoffeeScriptdefaultStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_defaultStyle(self: ptr cQsciLexerCoffeeScript, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_defaultStyle ".} =
  type Cb = proc(super: QsciLexerCoffeeScriptdefaultStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_defaultStyle(QsciLexerCoffeeScript(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
type QsciLexerCoffeeScriptdescriptionBase* = proc(style: cint): string
proc ondescription*(self: QsciLexerCoffeeScript, slot: proc(style: cint): string) =
  # TODO check subclass
  type Cb = proc(style: cint): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_description(self: ptr cQsciLexerCoffeeScript, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_description ".} =
  type Cb = proc(style: cint): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc callVirtualBase_paper(self: QsciLexerCoffeeScript, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerCoffeeScript_virtualbase_paper(self.h, style))

type QsciLexerCoffeeScriptpaperBase* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: QsciLexerCoffeeScript, slot: proc(super: QsciLexerCoffeeScriptpaperBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCoffeeScriptpaperBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_paper(self: ptr cQsciLexerCoffeeScript, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_paper ".} =
  type Cb = proc(super: QsciLexerCoffeeScriptpaperBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_paper(QsciLexerCoffeeScript(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultColorWithStyle(self: QsciLexerCoffeeScript, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerCoffeeScript_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerCoffeeScriptdefaultColorWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColorWithStyle*(self: QsciLexerCoffeeScript, slot: proc(super: QsciLexerCoffeeScriptdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCoffeeScriptdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_defaultColorWithStyle(self: ptr cQsciLexerCoffeeScript, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_defaultColorWithStyle ".} =
  type Cb = proc(super: QsciLexerCoffeeScriptdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultColorWithStyle(QsciLexerCoffeeScript(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultEolFill(self: QsciLexerCoffeeScript, style: cint): bool =


  fQsciLexerCoffeeScript_virtualbase_defaultEolFill(self.h, style)

type QsciLexerCoffeeScriptdefaultEolFillBase* = proc(style: cint): bool
proc ondefaultEolFill*(self: QsciLexerCoffeeScript, slot: proc(super: QsciLexerCoffeeScriptdefaultEolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCoffeeScriptdefaultEolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_defaultEolFill(self: ptr cQsciLexerCoffeeScript, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_defaultEolFill ".} =
  type Cb = proc(super: QsciLexerCoffeeScriptdefaultEolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultEolFill(QsciLexerCoffeeScript(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultFontWithStyle(self: QsciLexerCoffeeScript, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerCoffeeScript_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerCoffeeScriptdefaultFontWithStyleBase* = proc(style: cint): gen_qfont.QFont
proc ondefaultFontWithStyle*(self: QsciLexerCoffeeScript, slot: proc(super: QsciLexerCoffeeScriptdefaultFontWithStyleBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCoffeeScriptdefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_defaultFontWithStyle(self: ptr cQsciLexerCoffeeScript, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_defaultFontWithStyle ".} =
  type Cb = proc(super: QsciLexerCoffeeScriptdefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultFontWithStyle(QsciLexerCoffeeScript(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultPaperWithStyle(self: QsciLexerCoffeeScript, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerCoffeeScript_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerCoffeeScriptdefaultPaperWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaperWithStyle*(self: QsciLexerCoffeeScript, slot: proc(super: QsciLexerCoffeeScriptdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCoffeeScriptdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_defaultPaperWithStyle(self: ptr cQsciLexerCoffeeScript, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_defaultPaperWithStyle ".} =
  type Cb = proc(super: QsciLexerCoffeeScriptdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultPaperWithStyle(QsciLexerCoffeeScript(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_setEditor(self: QsciLexerCoffeeScript, editor: gen_qsciscintilla.QsciScintilla): void =


  fQsciLexerCoffeeScript_virtualbase_setEditor(self.h, editor.h)

type QsciLexerCoffeeScriptsetEditorBase* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: QsciLexerCoffeeScript, slot: proc(super: QsciLexerCoffeeScriptsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCoffeeScriptsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_setEditor(self: ptr cQsciLexerCoffeeScript, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_setEditor ".} =
  type Cb = proc(super: QsciLexerCoffeeScriptsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qsciscintilla.QsciScintilla): auto =
    callVirtualBase_setEditor(QsciLexerCoffeeScript(h: self), editor)
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_refreshProperties(self: QsciLexerCoffeeScript, ): void =


  fQsciLexerCoffeeScript_virtualbase_refreshProperties(self.h)

type QsciLexerCoffeeScriptrefreshPropertiesBase* = proc(): void
proc onrefreshProperties*(self: QsciLexerCoffeeScript, slot: proc(super: QsciLexerCoffeeScriptrefreshPropertiesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCoffeeScriptrefreshPropertiesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_refreshProperties(self: ptr cQsciLexerCoffeeScript, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_refreshProperties ".} =
  type Cb = proc(super: QsciLexerCoffeeScriptrefreshPropertiesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_refreshProperties(QsciLexerCoffeeScript(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_styleBitsNeeded(self: QsciLexerCoffeeScript, ): cint =


  fQsciLexerCoffeeScript_virtualbase_styleBitsNeeded(self.h)

type QsciLexerCoffeeScriptstyleBitsNeededBase* = proc(): cint
proc onstyleBitsNeeded*(self: QsciLexerCoffeeScript, slot: proc(super: QsciLexerCoffeeScriptstyleBitsNeededBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCoffeeScriptstyleBitsNeededBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_styleBitsNeeded(self: ptr cQsciLexerCoffeeScript, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_styleBitsNeeded ".} =
  type Cb = proc(super: QsciLexerCoffeeScriptstyleBitsNeededBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_styleBitsNeeded(QsciLexerCoffeeScript(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_wordCharacters(self: QsciLexerCoffeeScript, ): cstring =


  (fQsciLexerCoffeeScript_virtualbase_wordCharacters(self.h))

type QsciLexerCoffeeScriptwordCharactersBase* = proc(): cstring
proc onwordCharacters*(self: QsciLexerCoffeeScript, slot: proc(super: QsciLexerCoffeeScriptwordCharactersBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCoffeeScriptwordCharactersBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_wordCharacters(self: ptr cQsciLexerCoffeeScript, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_wordCharacters ".} =
  type Cb = proc(super: QsciLexerCoffeeScriptwordCharactersBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_wordCharacters(QsciLexerCoffeeScript(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setAutoIndentStyle(self: QsciLexerCoffeeScript, autoindentstyle: cint): void =


  fQsciLexerCoffeeScript_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerCoffeeScriptsetAutoIndentStyleBase* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: QsciLexerCoffeeScript, slot: proc(super: QsciLexerCoffeeScriptsetAutoIndentStyleBase, autoindentstyle: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCoffeeScriptsetAutoIndentStyleBase, autoindentstyle: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_setAutoIndentStyle(self: ptr cQsciLexerCoffeeScript, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_setAutoIndentStyle ".} =
  type Cb = proc(super: QsciLexerCoffeeScriptsetAutoIndentStyleBase, autoindentstyle: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(autoindentstyle: cint): auto =
    callVirtualBase_setAutoIndentStyle(QsciLexerCoffeeScript(h: self), autoindentstyle)
  let slotval1 = autoindentstyle


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setColor(self: QsciLexerCoffeeScript, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerCoffeeScript_virtualbase_setColor(self.h, c.h, style)

type QsciLexerCoffeeScriptsetColorBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: QsciLexerCoffeeScript, slot: proc(super: QsciLexerCoffeeScriptsetColorBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCoffeeScriptsetColorBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_setColor(self: ptr cQsciLexerCoffeeScript, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_setColor ".} =
  type Cb = proc(super: QsciLexerCoffeeScriptsetColorBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setColor(QsciLexerCoffeeScript(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setEolFill(self: QsciLexerCoffeeScript, eoffill: bool, style: cint): void =


  fQsciLexerCoffeeScript_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerCoffeeScriptsetEolFillBase* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: QsciLexerCoffeeScript, slot: proc(super: QsciLexerCoffeeScriptsetEolFillBase, eoffill: bool, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCoffeeScriptsetEolFillBase, eoffill: bool, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_setEolFill(self: ptr cQsciLexerCoffeeScript, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_setEolFill ".} =
  type Cb = proc(super: QsciLexerCoffeeScriptsetEolFillBase, eoffill: bool, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eoffill: bool, style: cint): auto =
    callVirtualBase_setEolFill(QsciLexerCoffeeScript(h: self), eoffill, style)
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setFont(self: QsciLexerCoffeeScript, f: gen_qfont.QFont, style: cint): void =


  fQsciLexerCoffeeScript_virtualbase_setFont(self.h, f.h, style)

type QsciLexerCoffeeScriptsetFontBase* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: QsciLexerCoffeeScript, slot: proc(super: QsciLexerCoffeeScriptsetFontBase, f: gen_qfont.QFont, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCoffeeScriptsetFontBase, f: gen_qfont.QFont, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_setFont(self: ptr cQsciLexerCoffeeScript, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_setFont ".} =
  type Cb = proc(super: QsciLexerCoffeeScriptsetFontBase, f: gen_qfont.QFont, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(f: gen_qfont.QFont, style: cint): auto =
    callVirtualBase_setFont(QsciLexerCoffeeScript(h: self), f, style)
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setPaper(self: QsciLexerCoffeeScript, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerCoffeeScript_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerCoffeeScriptsetPaperBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: QsciLexerCoffeeScript, slot: proc(super: QsciLexerCoffeeScriptsetPaperBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCoffeeScriptsetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_setPaper(self: ptr cQsciLexerCoffeeScript, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_setPaper ".} =
  type Cb = proc(super: QsciLexerCoffeeScriptsetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setPaper(QsciLexerCoffeeScript(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_readProperties(self: QsciLexerCoffeeScript, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerCoffeeScript_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerCoffeeScriptreadPropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: QsciLexerCoffeeScript, slot: proc(super: QsciLexerCoffeeScriptreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCoffeeScriptreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_readProperties(self: ptr cQsciLexerCoffeeScript, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_readProperties ".} =
  type Cb = proc(super: QsciLexerCoffeeScriptreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_readProperties(QsciLexerCoffeeScript(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_writeProperties(self: QsciLexerCoffeeScript, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerCoffeeScript_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerCoffeeScriptwritePropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: QsciLexerCoffeeScript, slot: proc(super: QsciLexerCoffeeScriptwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCoffeeScriptwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_writeProperties(self: ptr cQsciLexerCoffeeScript, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_writeProperties ".} =
  type Cb = proc(super: QsciLexerCoffeeScriptwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_writeProperties(QsciLexerCoffeeScript(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_event(self: QsciLexerCoffeeScript, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerCoffeeScript_virtualbase_event(self.h, event.h)

type QsciLexerCoffeeScripteventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QsciLexerCoffeeScript, slot: proc(super: QsciLexerCoffeeScripteventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCoffeeScripteventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_event(self: ptr cQsciLexerCoffeeScript, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_event ".} =
  type Cb = proc(super: QsciLexerCoffeeScripteventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QsciLexerCoffeeScript(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QsciLexerCoffeeScript, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerCoffeeScript_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerCoffeeScripteventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QsciLexerCoffeeScript, slot: proc(super: QsciLexerCoffeeScripteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCoffeeScripteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_eventFilter(self: ptr cQsciLexerCoffeeScript, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_eventFilter ".} =
  type Cb = proc(super: QsciLexerCoffeeScripteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QsciLexerCoffeeScript(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QsciLexerCoffeeScript, event: gen_qcoreevent.QTimerEvent): void =


  fQsciLexerCoffeeScript_virtualbase_timerEvent(self.h, event.h)

type QsciLexerCoffeeScripttimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QsciLexerCoffeeScript, slot: proc(super: QsciLexerCoffeeScripttimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCoffeeScripttimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_timerEvent(self: ptr cQsciLexerCoffeeScript, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_timerEvent ".} =
  type Cb = proc(super: QsciLexerCoffeeScripttimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QsciLexerCoffeeScript(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QsciLexerCoffeeScript, event: gen_qcoreevent.QChildEvent): void =


  fQsciLexerCoffeeScript_virtualbase_childEvent(self.h, event.h)

type QsciLexerCoffeeScriptchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QsciLexerCoffeeScript, slot: proc(super: QsciLexerCoffeeScriptchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCoffeeScriptchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_childEvent(self: ptr cQsciLexerCoffeeScript, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_childEvent ".} =
  type Cb = proc(super: QsciLexerCoffeeScriptchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QsciLexerCoffeeScript(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QsciLexerCoffeeScript, event: gen_qcoreevent.QEvent): void =


  fQsciLexerCoffeeScript_virtualbase_customEvent(self.h, event.h)

type QsciLexerCoffeeScriptcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QsciLexerCoffeeScript, slot: proc(super: QsciLexerCoffeeScriptcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCoffeeScriptcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_customEvent(self: ptr cQsciLexerCoffeeScript, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_customEvent ".} =
  type Cb = proc(super: QsciLexerCoffeeScriptcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QsciLexerCoffeeScript(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QsciLexerCoffeeScript, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerCoffeeScript_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerCoffeeScriptconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QsciLexerCoffeeScript, slot: proc(super: QsciLexerCoffeeScriptconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCoffeeScriptconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_connectNotify(self: ptr cQsciLexerCoffeeScript, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_connectNotify ".} =
  type Cb = proc(super: QsciLexerCoffeeScriptconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QsciLexerCoffeeScript(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QsciLexerCoffeeScript, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerCoffeeScript_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerCoffeeScriptdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QsciLexerCoffeeScript, slot: proc(super: QsciLexerCoffeeScriptdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCoffeeScriptdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_disconnectNotify(self: ptr cQsciLexerCoffeeScript, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_disconnectNotify ".} =
  type Cb = proc(super: QsciLexerCoffeeScriptdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QsciLexerCoffeeScript(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QsciLexerCoffeeScript): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerCoffeeScript_staticMetaObject())
proc delete*(self: QsciLexerCoffeeScript) =
  fcQsciLexerCoffeeScript_delete(self.h)
