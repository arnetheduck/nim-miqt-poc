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
{.compile("gen_qscilexerpostscript.cpp", cflags).}


type QsciLexerPostScriptEnumEnum* = distinct cint
template Default*(_: type QsciLexerPostScriptEnumEnum): untyped = 0
template Comment*(_: type QsciLexerPostScriptEnumEnum): untyped = 1
template DSCComment*(_: type QsciLexerPostScriptEnumEnum): untyped = 2
template DSCCommentValue*(_: type QsciLexerPostScriptEnumEnum): untyped = 3
template Number*(_: type QsciLexerPostScriptEnumEnum): untyped = 4
template Name*(_: type QsciLexerPostScriptEnumEnum): untyped = 5
template Keyword*(_: type QsciLexerPostScriptEnumEnum): untyped = 6
template Literal*(_: type QsciLexerPostScriptEnumEnum): untyped = 7
template ImmediateEvalLiteral*(_: type QsciLexerPostScriptEnumEnum): untyped = 8
template ArrayParenthesis*(_: type QsciLexerPostScriptEnumEnum): untyped = 9
template DictionaryParenthesis*(_: type QsciLexerPostScriptEnumEnum): untyped = 10
template ProcedureParenthesis*(_: type QsciLexerPostScriptEnumEnum): untyped = 11
template Text*(_: type QsciLexerPostScriptEnumEnum): untyped = 12
template HexString*(_: type QsciLexerPostScriptEnumEnum): untyped = 13
template Base85String*(_: type QsciLexerPostScriptEnumEnum): untyped = 14
template BadStringCharacter*(_: type QsciLexerPostScriptEnumEnum): untyped = 15


import gen_qscilexerpostscript_types
export gen_qscilexerpostscript_types

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

type cQsciLexerPostScript*{.exportc: "QsciLexerPostScript", incompleteStruct.} = object

proc fcQsciLexerPostScript_new(): ptr cQsciLexerPostScript {.importc: "QsciLexerPostScript_new".}
proc fcQsciLexerPostScript_new2(parent: pointer): ptr cQsciLexerPostScript {.importc: "QsciLexerPostScript_new2".}
proc fcQsciLexerPostScript_metaObject(self: pointer, ): pointer {.importc: "QsciLexerPostScript_metaObject".}
proc fcQsciLexerPostScript_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerPostScript_metacast".}
proc fcQsciLexerPostScript_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerPostScript_metacall".}
proc fcQsciLexerPostScript_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerPostScript_tr".}
proc fcQsciLexerPostScript_trUtf8(s: cstring): struct_miqt_string {.importc: "QsciLexerPostScript_trUtf8".}
proc fcQsciLexerPostScript_language(self: pointer, ): cstring {.importc: "QsciLexerPostScript_language".}
proc fcQsciLexerPostScript_lexer(self: pointer, ): cstring {.importc: "QsciLexerPostScript_lexer".}
proc fcQsciLexerPostScript_braceStyle(self: pointer, ): cint {.importc: "QsciLexerPostScript_braceStyle".}
proc fcQsciLexerPostScript_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerPostScript_defaultColor".}
proc fcQsciLexerPostScript_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerPostScript_defaultFont".}
proc fcQsciLexerPostScript_defaultPaper(self: pointer, style: cint): pointer {.importc: "QsciLexerPostScript_defaultPaper".}
proc fcQsciLexerPostScript_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerPostScript_keywords".}
proc fcQsciLexerPostScript_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerPostScript_description".}
proc fcQsciLexerPostScript_refreshProperties(self: pointer, ): void {.importc: "QsciLexerPostScript_refreshProperties".}
proc fcQsciLexerPostScript_tokenize(self: pointer, ): bool {.importc: "QsciLexerPostScript_tokenize".}
proc fcQsciLexerPostScript_level(self: pointer, ): cint {.importc: "QsciLexerPostScript_level".}
proc fcQsciLexerPostScript_foldCompact(self: pointer, ): bool {.importc: "QsciLexerPostScript_foldCompact".}
proc fcQsciLexerPostScript_foldAtElse(self: pointer, ): bool {.importc: "QsciLexerPostScript_foldAtElse".}
proc fcQsciLexerPostScript_setTokenize(self: pointer, tokenize: bool): void {.importc: "QsciLexerPostScript_setTokenize".}
proc fcQsciLexerPostScript_setLevel(self: pointer, level: cint): void {.importc: "QsciLexerPostScript_setLevel".}
proc fcQsciLexerPostScript_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerPostScript_setFoldCompact".}
proc fcQsciLexerPostScript_setFoldAtElse(self: pointer, fold: bool): void {.importc: "QsciLexerPostScript_setFoldAtElse".}
proc fcQsciLexerPostScript_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerPostScript_tr2".}
proc fcQsciLexerPostScript_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerPostScript_tr3".}
proc fcQsciLexerPostScript_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerPostScript_trUtf82".}
proc fcQsciLexerPostScript_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerPostScript_trUtf83".}
proc fQsciLexerPostScript_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QsciLexerPostScript_virtualbase_metaObject".}
proc fcQsciLexerPostScript_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QsciLexerPostScript_override_virtual_metaObject".}
proc fQsciLexerPostScript_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QsciLexerPostScript_virtualbase_metacast".}
proc fcQsciLexerPostScript_override_virtual_metacast(self: pointer, slot: int) {.importc: "QsciLexerPostScript_override_virtual_metacast".}
proc fQsciLexerPostScript_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciLexerPostScript_virtualbase_metacall".}
proc fcQsciLexerPostScript_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciLexerPostScript_override_virtual_metacall".}
proc fQsciLexerPostScript_virtualbase_setTokenize(self: pointer, tokenize: bool): void{.importc: "QsciLexerPostScript_virtualbase_setTokenize".}
proc fcQsciLexerPostScript_override_virtual_setTokenize(self: pointer, slot: int) {.importc: "QsciLexerPostScript_override_virtual_setTokenize".}
proc fQsciLexerPostScript_virtualbase_setLevel(self: pointer, level: cint): void{.importc: "QsciLexerPostScript_virtualbase_setLevel".}
proc fcQsciLexerPostScript_override_virtual_setLevel(self: pointer, slot: int) {.importc: "QsciLexerPostScript_override_virtual_setLevel".}
proc fQsciLexerPostScript_virtualbase_setFoldCompact(self: pointer, fold: bool): void{.importc: "QsciLexerPostScript_virtualbase_setFoldCompact".}
proc fcQsciLexerPostScript_override_virtual_setFoldCompact(self: pointer, slot: int) {.importc: "QsciLexerPostScript_override_virtual_setFoldCompact".}
proc fQsciLexerPostScript_virtualbase_setFoldAtElse(self: pointer, fold: bool): void{.importc: "QsciLexerPostScript_virtualbase_setFoldAtElse".}
proc fcQsciLexerPostScript_override_virtual_setFoldAtElse(self: pointer, slot: int) {.importc: "QsciLexerPostScript_override_virtual_setFoldAtElse".}
proc fcQsciLexerPostScript_override_virtual_language(self: pointer, slot: int) {.importc: "QsciLexerPostScript_override_virtual_language".}
proc fQsciLexerPostScript_virtualbase_lexer(self: pointer, ): cstring{.importc: "QsciLexerPostScript_virtualbase_lexer".}
proc fcQsciLexerPostScript_override_virtual_lexer(self: pointer, slot: int) {.importc: "QsciLexerPostScript_override_virtual_lexer".}
proc fQsciLexerPostScript_virtualbase_lexerId(self: pointer, ): cint{.importc: "QsciLexerPostScript_virtualbase_lexerId".}
proc fcQsciLexerPostScript_override_virtual_lexerId(self: pointer, slot: int) {.importc: "QsciLexerPostScript_override_virtual_lexerId".}
proc fQsciLexerPostScript_virtualbase_autoCompletionFillups(self: pointer, ): cstring{.importc: "QsciLexerPostScript_virtualbase_autoCompletionFillups".}
proc fcQsciLexerPostScript_override_virtual_autoCompletionFillups(self: pointer, slot: int) {.importc: "QsciLexerPostScript_override_virtual_autoCompletionFillups".}
proc fQsciLexerPostScript_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array{.importc: "QsciLexerPostScript_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerPostScript_override_virtual_autoCompletionWordSeparators(self: pointer, slot: int) {.importc: "QsciLexerPostScript_override_virtual_autoCompletionWordSeparators".}
proc fQsciLexerPostScript_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerPostScript_virtualbase_blockEnd".}
proc fcQsciLexerPostScript_override_virtual_blockEnd(self: pointer, slot: int) {.importc: "QsciLexerPostScript_override_virtual_blockEnd".}
proc fQsciLexerPostScript_virtualbase_blockLookback(self: pointer, ): cint{.importc: "QsciLexerPostScript_virtualbase_blockLookback".}
proc fcQsciLexerPostScript_override_virtual_blockLookback(self: pointer, slot: int) {.importc: "QsciLexerPostScript_override_virtual_blockLookback".}
proc fQsciLexerPostScript_virtualbase_blockStart(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerPostScript_virtualbase_blockStart".}
proc fcQsciLexerPostScript_override_virtual_blockStart(self: pointer, slot: int) {.importc: "QsciLexerPostScript_override_virtual_blockStart".}
proc fQsciLexerPostScript_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerPostScript_virtualbase_blockStartKeyword".}
proc fcQsciLexerPostScript_override_virtual_blockStartKeyword(self: pointer, slot: int) {.importc: "QsciLexerPostScript_override_virtual_blockStartKeyword".}
proc fQsciLexerPostScript_virtualbase_braceStyle(self: pointer, ): cint{.importc: "QsciLexerPostScript_virtualbase_braceStyle".}
proc fcQsciLexerPostScript_override_virtual_braceStyle(self: pointer, slot: int) {.importc: "QsciLexerPostScript_override_virtual_braceStyle".}
proc fQsciLexerPostScript_virtualbase_caseSensitive(self: pointer, ): bool{.importc: "QsciLexerPostScript_virtualbase_caseSensitive".}
proc fcQsciLexerPostScript_override_virtual_caseSensitive(self: pointer, slot: int) {.importc: "QsciLexerPostScript_override_virtual_caseSensitive".}
proc fQsciLexerPostScript_virtualbase_color(self: pointer, style: cint): pointer{.importc: "QsciLexerPostScript_virtualbase_color".}
proc fcQsciLexerPostScript_override_virtual_color(self: pointer, slot: int) {.importc: "QsciLexerPostScript_override_virtual_color".}
proc fQsciLexerPostScript_virtualbase_eolFill(self: pointer, style: cint): bool{.importc: "QsciLexerPostScript_virtualbase_eolFill".}
proc fcQsciLexerPostScript_override_virtual_eolFill(self: pointer, slot: int) {.importc: "QsciLexerPostScript_override_virtual_eolFill".}
proc fQsciLexerPostScript_virtualbase_font(self: pointer, style: cint): pointer{.importc: "QsciLexerPostScript_virtualbase_font".}
proc fcQsciLexerPostScript_override_virtual_font(self: pointer, slot: int) {.importc: "QsciLexerPostScript_override_virtual_font".}
proc fQsciLexerPostScript_virtualbase_indentationGuideView(self: pointer, ): cint{.importc: "QsciLexerPostScript_virtualbase_indentationGuideView".}
proc fcQsciLexerPostScript_override_virtual_indentationGuideView(self: pointer, slot: int) {.importc: "QsciLexerPostScript_override_virtual_indentationGuideView".}
proc fQsciLexerPostScript_virtualbase_keywords(self: pointer, set: cint): cstring{.importc: "QsciLexerPostScript_virtualbase_keywords".}
proc fcQsciLexerPostScript_override_virtual_keywords(self: pointer, slot: int) {.importc: "QsciLexerPostScript_override_virtual_keywords".}
proc fQsciLexerPostScript_virtualbase_defaultStyle(self: pointer, ): cint{.importc: "QsciLexerPostScript_virtualbase_defaultStyle".}
proc fcQsciLexerPostScript_override_virtual_defaultStyle(self: pointer, slot: int) {.importc: "QsciLexerPostScript_override_virtual_defaultStyle".}
proc fcQsciLexerPostScript_override_virtual_description(self: pointer, slot: int) {.importc: "QsciLexerPostScript_override_virtual_description".}
proc fQsciLexerPostScript_virtualbase_paper(self: pointer, style: cint): pointer{.importc: "QsciLexerPostScript_virtualbase_paper".}
proc fcQsciLexerPostScript_override_virtual_paper(self: pointer, slot: int) {.importc: "QsciLexerPostScript_override_virtual_paper".}
proc fQsciLexerPostScript_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerPostScript_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerPostScript_override_virtual_defaultColorWithStyle(self: pointer, slot: int) {.importc: "QsciLexerPostScript_override_virtual_defaultColorWithStyle".}
proc fQsciLexerPostScript_virtualbase_defaultEolFill(self: pointer, style: cint): bool{.importc: "QsciLexerPostScript_virtualbase_defaultEolFill".}
proc fcQsciLexerPostScript_override_virtual_defaultEolFill(self: pointer, slot: int) {.importc: "QsciLexerPostScript_override_virtual_defaultEolFill".}
proc fQsciLexerPostScript_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerPostScript_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerPostScript_override_virtual_defaultFontWithStyle(self: pointer, slot: int) {.importc: "QsciLexerPostScript_override_virtual_defaultFontWithStyle".}
proc fQsciLexerPostScript_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerPostScript_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerPostScript_override_virtual_defaultPaperWithStyle(self: pointer, slot: int) {.importc: "QsciLexerPostScript_override_virtual_defaultPaperWithStyle".}
proc fQsciLexerPostScript_virtualbase_setEditor(self: pointer, editor: pointer): void{.importc: "QsciLexerPostScript_virtualbase_setEditor".}
proc fcQsciLexerPostScript_override_virtual_setEditor(self: pointer, slot: int) {.importc: "QsciLexerPostScript_override_virtual_setEditor".}
proc fQsciLexerPostScript_virtualbase_refreshProperties(self: pointer, ): void{.importc: "QsciLexerPostScript_virtualbase_refreshProperties".}
proc fcQsciLexerPostScript_override_virtual_refreshProperties(self: pointer, slot: int) {.importc: "QsciLexerPostScript_override_virtual_refreshProperties".}
proc fQsciLexerPostScript_virtualbase_styleBitsNeeded(self: pointer, ): cint{.importc: "QsciLexerPostScript_virtualbase_styleBitsNeeded".}
proc fcQsciLexerPostScript_override_virtual_styleBitsNeeded(self: pointer, slot: int) {.importc: "QsciLexerPostScript_override_virtual_styleBitsNeeded".}
proc fQsciLexerPostScript_virtualbase_wordCharacters(self: pointer, ): cstring{.importc: "QsciLexerPostScript_virtualbase_wordCharacters".}
proc fcQsciLexerPostScript_override_virtual_wordCharacters(self: pointer, slot: int) {.importc: "QsciLexerPostScript_override_virtual_wordCharacters".}
proc fQsciLexerPostScript_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void{.importc: "QsciLexerPostScript_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerPostScript_override_virtual_setAutoIndentStyle(self: pointer, slot: int) {.importc: "QsciLexerPostScript_override_virtual_setAutoIndentStyle".}
proc fQsciLexerPostScript_virtualbase_setColor(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerPostScript_virtualbase_setColor".}
proc fcQsciLexerPostScript_override_virtual_setColor(self: pointer, slot: int) {.importc: "QsciLexerPostScript_override_virtual_setColor".}
proc fQsciLexerPostScript_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void{.importc: "QsciLexerPostScript_virtualbase_setEolFill".}
proc fcQsciLexerPostScript_override_virtual_setEolFill(self: pointer, slot: int) {.importc: "QsciLexerPostScript_override_virtual_setEolFill".}
proc fQsciLexerPostScript_virtualbase_setFont(self: pointer, f: pointer, style: cint): void{.importc: "QsciLexerPostScript_virtualbase_setFont".}
proc fcQsciLexerPostScript_override_virtual_setFont(self: pointer, slot: int) {.importc: "QsciLexerPostScript_override_virtual_setFont".}
proc fQsciLexerPostScript_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerPostScript_virtualbase_setPaper".}
proc fcQsciLexerPostScript_override_virtual_setPaper(self: pointer, slot: int) {.importc: "QsciLexerPostScript_override_virtual_setPaper".}
proc fQsciLexerPostScript_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerPostScript_virtualbase_readProperties".}
proc fcQsciLexerPostScript_override_virtual_readProperties(self: pointer, slot: int) {.importc: "QsciLexerPostScript_override_virtual_readProperties".}
proc fQsciLexerPostScript_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerPostScript_virtualbase_writeProperties".}
proc fcQsciLexerPostScript_override_virtual_writeProperties(self: pointer, slot: int) {.importc: "QsciLexerPostScript_override_virtual_writeProperties".}
proc fQsciLexerPostScript_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QsciLexerPostScript_virtualbase_event".}
proc fcQsciLexerPostScript_override_virtual_event(self: pointer, slot: int) {.importc: "QsciLexerPostScript_override_virtual_event".}
proc fQsciLexerPostScript_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciLexerPostScript_virtualbase_eventFilter".}
proc fcQsciLexerPostScript_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciLexerPostScript_override_virtual_eventFilter".}
proc fQsciLexerPostScript_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciLexerPostScript_virtualbase_timerEvent".}
proc fcQsciLexerPostScript_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciLexerPostScript_override_virtual_timerEvent".}
proc fQsciLexerPostScript_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciLexerPostScript_virtualbase_childEvent".}
proc fcQsciLexerPostScript_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciLexerPostScript_override_virtual_childEvent".}
proc fQsciLexerPostScript_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciLexerPostScript_virtualbase_customEvent".}
proc fcQsciLexerPostScript_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciLexerPostScript_override_virtual_customEvent".}
proc fQsciLexerPostScript_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerPostScript_virtualbase_connectNotify".}
proc fcQsciLexerPostScript_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciLexerPostScript_override_virtual_connectNotify".}
proc fQsciLexerPostScript_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerPostScript_virtualbase_disconnectNotify".}
proc fcQsciLexerPostScript_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciLexerPostScript_override_virtual_disconnectNotify".}
proc fcQsciLexerPostScript_staticMetaObject(): pointer {.importc: "QsciLexerPostScript_staticMetaObject".}
proc fcQsciLexerPostScript_delete(self: pointer) {.importc: "QsciLexerPostScript_delete".}


func init*(T: type gen_qscilexerpostscript_types.QsciLexerPostScript, h: ptr cQsciLexerPostScript): gen_qscilexerpostscript_types.QsciLexerPostScript =
  T(h: h)
proc create*(T: type gen_qscilexerpostscript_types.QsciLexerPostScript, ): gen_qscilexerpostscript_types.QsciLexerPostScript =
  gen_qscilexerpostscript_types.QsciLexerPostScript.init(fcQsciLexerPostScript_new())

proc create*(T: type gen_qscilexerpostscript_types.QsciLexerPostScript, parent: gen_qobject.QObject): gen_qscilexerpostscript_types.QsciLexerPostScript =
  gen_qscilexerpostscript_types.QsciLexerPostScript.init(fcQsciLexerPostScript_new2(parent.h))

proc metaObject*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, ): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerPostScript_metaObject(self.h))

proc metacast*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, param1: cstring): pointer =
  fcQsciLexerPostScript_metacast(self.h, param1)

proc metacall*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerPostScript_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexerpostscript_types.QsciLexerPostScript, s: cstring): string =
  let v_ms = fcQsciLexerPostScript_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexerpostscript_types.QsciLexerPostScript, s: cstring): string =
  let v_ms = fcQsciLexerPostScript_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, ): cstring =
  (fcQsciLexerPostScript_language(self.h))

proc lexer*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, ): cstring =
  (fcQsciLexerPostScript_lexer(self.h))

proc braceStyle*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, ): cint =
  fcQsciLexerPostScript_braceStyle(self.h)

proc defaultColor*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fcQsciLexerPostScript_defaultColor(self.h, style))

proc defaultFont*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fcQsciLexerPostScript_defaultFont(self.h, style))

proc defaultPaper*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fcQsciLexerPostScript_defaultPaper(self.h, style))

proc keywords*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, set: cint): cstring =
  (fcQsciLexerPostScript_keywords(self.h, set))

proc description*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, style: cint): string =
  let v_ms = fcQsciLexerPostScript_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, ): void =
  fcQsciLexerPostScript_refreshProperties(self.h)

proc tokenize*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, ): bool =
  fcQsciLexerPostScript_tokenize(self.h)

proc level*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, ): cint =
  fcQsciLexerPostScript_level(self.h)

proc foldCompact*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, ): bool =
  fcQsciLexerPostScript_foldCompact(self.h)

proc foldAtElse*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, ): bool =
  fcQsciLexerPostScript_foldAtElse(self.h)

proc setTokenize*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, tokenize: bool): void =
  fcQsciLexerPostScript_setTokenize(self.h, tokenize)

proc setLevel*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, level: cint): void =
  fcQsciLexerPostScript_setLevel(self.h, level)

proc setFoldCompact*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, fold: bool): void =
  fcQsciLexerPostScript_setFoldCompact(self.h, fold)

proc setFoldAtElse*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, fold: bool): void =
  fcQsciLexerPostScript_setFoldAtElse(self.h, fold)

proc tr*(_: type gen_qscilexerpostscript_types.QsciLexerPostScript, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerPostScript_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexerpostscript_types.QsciLexerPostScript, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerPostScript_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexerpostscript_types.QsciLexerPostScript, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerPostScript_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexerpostscript_types.QsciLexerPostScript, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerPostScript_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QsciLexerPostScriptmetaObject*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, ): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fQsciLexerPostScript_virtualbase_metaObject(self.h))

type QsciLexerPostScriptmetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, slot: QsciLexerPostScriptmetaObjectProc) =
  # TODO check subclass
  var tmp = new QsciLexerPostScriptmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_metaObject(self: ptr cQsciLexerPostScript, slot: int): pointer {.exportc: "miqt_exec_callback_QsciLexerPostScript_metaObject ".} =
  var nimfunc = cast[ptr QsciLexerPostScriptmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QsciLexerPostScriptmetacast*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, param1: cstring): pointer =
  fQsciLexerPostScript_virtualbase_metacast(self.h, param1)

type QsciLexerPostScriptmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, slot: QsciLexerPostScriptmetacastProc) =
  # TODO check subclass
  var tmp = new QsciLexerPostScriptmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_metacast(self: ptr cQsciLexerPostScript, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciLexerPostScript_metacast ".} =
  var nimfunc = cast[ptr QsciLexerPostScriptmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerPostScriptmetacall*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, param1: cint, param2: cint, param3: pointer): cint =
  fQsciLexerPostScript_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerPostScriptmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, slot: QsciLexerPostScriptmetacallProc) =
  # TODO check subclass
  var tmp = new QsciLexerPostScriptmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_metacall(self: ptr cQsciLexerPostScript, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerPostScript_metacall ".} =
  var nimfunc = cast[ptr QsciLexerPostScriptmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QsciLexerPostScriptsetTokenize*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, tokenize: bool): void =
  fQsciLexerPostScript_virtualbase_setTokenize(self.h, tokenize)

type QsciLexerPostScriptsetTokenizeProc* = proc(tokenize: bool): void
proc onsetTokenize*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, slot: QsciLexerPostScriptsetTokenizeProc) =
  # TODO check subclass
  var tmp = new QsciLexerPostScriptsetTokenizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_setTokenize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_setTokenize(self: ptr cQsciLexerPostScript, slot: int, tokenize: bool): void {.exportc: "miqt_exec_callback_QsciLexerPostScript_setTokenize ".} =
  var nimfunc = cast[ptr QsciLexerPostScriptsetTokenizeProc](cast[pointer](slot))
  let slotval1 = tokenize


  nimfunc[](slotval1)
proc QsciLexerPostScriptsetLevel*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, level: cint): void =
  fQsciLexerPostScript_virtualbase_setLevel(self.h, level)

type QsciLexerPostScriptsetLevelProc* = proc(level: cint): void
proc onsetLevel*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, slot: QsciLexerPostScriptsetLevelProc) =
  # TODO check subclass
  var tmp = new QsciLexerPostScriptsetLevelProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_setLevel(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_setLevel(self: ptr cQsciLexerPostScript, slot: int, level: cint): void {.exportc: "miqt_exec_callback_QsciLexerPostScript_setLevel ".} =
  var nimfunc = cast[ptr QsciLexerPostScriptsetLevelProc](cast[pointer](slot))
  let slotval1 = level


  nimfunc[](slotval1)
proc QsciLexerPostScriptsetFoldCompact*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, fold: bool): void =
  fQsciLexerPostScript_virtualbase_setFoldCompact(self.h, fold)

type QsciLexerPostScriptsetFoldCompactProc* = proc(fold: bool): void
proc onsetFoldCompact*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, slot: QsciLexerPostScriptsetFoldCompactProc) =
  # TODO check subclass
  var tmp = new QsciLexerPostScriptsetFoldCompactProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_setFoldCompact(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_setFoldCompact(self: ptr cQsciLexerPostScript, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerPostScript_setFoldCompact ".} =
  var nimfunc = cast[ptr QsciLexerPostScriptsetFoldCompactProc](cast[pointer](slot))
  let slotval1 = fold


  nimfunc[](slotval1)
proc QsciLexerPostScriptsetFoldAtElse*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, fold: bool): void =
  fQsciLexerPostScript_virtualbase_setFoldAtElse(self.h, fold)

type QsciLexerPostScriptsetFoldAtElseProc* = proc(fold: bool): void
proc onsetFoldAtElse*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, slot: QsciLexerPostScriptsetFoldAtElseProc) =
  # TODO check subclass
  var tmp = new QsciLexerPostScriptsetFoldAtElseProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_setFoldAtElse(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_setFoldAtElse(self: ptr cQsciLexerPostScript, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerPostScript_setFoldAtElse ".} =
  var nimfunc = cast[ptr QsciLexerPostScriptsetFoldAtElseProc](cast[pointer](slot))
  let slotval1 = fold


  nimfunc[](slotval1)
type QsciLexerPostScriptlanguageProc* = proc(): cstring
proc onlanguage*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, slot: QsciLexerPostScriptlanguageProc) =
  # TODO check subclass
  var tmp = new QsciLexerPostScriptlanguageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_language(self: ptr cQsciLexerPostScript, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerPostScript_language ".} =
  var nimfunc = cast[ptr QsciLexerPostScriptlanguageProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPostScriptlexer*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, ): cstring =
  (fQsciLexerPostScript_virtualbase_lexer(self.h))

type QsciLexerPostScriptlexerProc* = proc(): cstring
proc onlexer*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, slot: QsciLexerPostScriptlexerProc) =
  # TODO check subclass
  var tmp = new QsciLexerPostScriptlexerProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_lexer(self: ptr cQsciLexerPostScript, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerPostScript_lexer ".} =
  var nimfunc = cast[ptr QsciLexerPostScriptlexerProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPostScriptlexerId*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, ): cint =
  fQsciLexerPostScript_virtualbase_lexerId(self.h)

type QsciLexerPostScriptlexerIdProc* = proc(): cint
proc onlexerId*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, slot: QsciLexerPostScriptlexerIdProc) =
  # TODO check subclass
  var tmp = new QsciLexerPostScriptlexerIdProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_lexerId(self: ptr cQsciLexerPostScript, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPostScript_lexerId ".} =
  var nimfunc = cast[ptr QsciLexerPostScriptlexerIdProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPostScriptautoCompletionFillups*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, ): cstring =
  (fQsciLexerPostScript_virtualbase_autoCompletionFillups(self.h))

type QsciLexerPostScriptautoCompletionFillupsProc* = proc(): cstring
proc onautoCompletionFillups*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, slot: QsciLexerPostScriptautoCompletionFillupsProc) =
  # TODO check subclass
  var tmp = new QsciLexerPostScriptautoCompletionFillupsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_autoCompletionFillups(self: ptr cQsciLexerPostScript, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerPostScript_autoCompletionFillups ".} =
  var nimfunc = cast[ptr QsciLexerPostScriptautoCompletionFillupsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPostScriptautoCompletionWordSeparators*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, ): seq[string] =
  var v_ma = fQsciLexerPostScript_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerPostScriptautoCompletionWordSeparatorsProc* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, slot: QsciLexerPostScriptautoCompletionWordSeparatorsProc) =
  # TODO check subclass
  var tmp = new QsciLexerPostScriptautoCompletionWordSeparatorsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_autoCompletionWordSeparators(self: ptr cQsciLexerPostScript, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerPostScript_autoCompletionWordSeparators ".} =
  var nimfunc = cast[ptr QsciLexerPostScriptautoCompletionWordSeparatorsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QsciLexerPostScriptblockEnd*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, style: ptr cint): cstring =
  (fQsciLexerPostScript_virtualbase_blockEnd(self.h, style))

type QsciLexerPostScriptblockEndProc* = proc(style: ptr cint): cstring
proc onblockEnd*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, slot: QsciLexerPostScriptblockEndProc) =
  # TODO check subclass
  var tmp = new QsciLexerPostScriptblockEndProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_blockEnd(self: ptr cQsciLexerPostScript, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerPostScript_blockEnd ".} =
  var nimfunc = cast[ptr QsciLexerPostScriptblockEndProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerPostScriptblockLookback*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, ): cint =
  fQsciLexerPostScript_virtualbase_blockLookback(self.h)

type QsciLexerPostScriptblockLookbackProc* = proc(): cint
proc onblockLookback*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, slot: QsciLexerPostScriptblockLookbackProc) =
  # TODO check subclass
  var tmp = new QsciLexerPostScriptblockLookbackProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_blockLookback(self: ptr cQsciLexerPostScript, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPostScript_blockLookback ".} =
  var nimfunc = cast[ptr QsciLexerPostScriptblockLookbackProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPostScriptblockStart*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, style: ptr cint): cstring =
  (fQsciLexerPostScript_virtualbase_blockStart(self.h, style))

type QsciLexerPostScriptblockStartProc* = proc(style: ptr cint): cstring
proc onblockStart*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, slot: QsciLexerPostScriptblockStartProc) =
  # TODO check subclass
  var tmp = new QsciLexerPostScriptblockStartProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_blockStart(self: ptr cQsciLexerPostScript, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerPostScript_blockStart ".} =
  var nimfunc = cast[ptr QsciLexerPostScriptblockStartProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerPostScriptblockStartKeyword*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, style: ptr cint): cstring =
  (fQsciLexerPostScript_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerPostScriptblockStartKeywordProc* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, slot: QsciLexerPostScriptblockStartKeywordProc) =
  # TODO check subclass
  var tmp = new QsciLexerPostScriptblockStartKeywordProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_blockStartKeyword(self: ptr cQsciLexerPostScript, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerPostScript_blockStartKeyword ".} =
  var nimfunc = cast[ptr QsciLexerPostScriptblockStartKeywordProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerPostScriptbraceStyle*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, ): cint =
  fQsciLexerPostScript_virtualbase_braceStyle(self.h)

type QsciLexerPostScriptbraceStyleProc* = proc(): cint
proc onbraceStyle*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, slot: QsciLexerPostScriptbraceStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerPostScriptbraceStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_braceStyle(self: ptr cQsciLexerPostScript, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPostScript_braceStyle ".} =
  var nimfunc = cast[ptr QsciLexerPostScriptbraceStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPostScriptcaseSensitive*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, ): bool =
  fQsciLexerPostScript_virtualbase_caseSensitive(self.h)

type QsciLexerPostScriptcaseSensitiveProc* = proc(): bool
proc oncaseSensitive*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, slot: QsciLexerPostScriptcaseSensitiveProc) =
  # TODO check subclass
  var tmp = new QsciLexerPostScriptcaseSensitiveProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_caseSensitive(self: ptr cQsciLexerPostScript, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerPostScript_caseSensitive ".} =
  var nimfunc = cast[ptr QsciLexerPostScriptcaseSensitiveProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPostScriptcolor*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerPostScript_virtualbase_color(self.h, style))

type QsciLexerPostScriptcolorProc* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, slot: QsciLexerPostScriptcolorProc) =
  # TODO check subclass
  var tmp = new QsciLexerPostScriptcolorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_color(self: ptr cQsciLexerPostScript, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPostScript_color ".} =
  var nimfunc = cast[ptr QsciLexerPostScriptcolorProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerPostScripteolFill*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, style: cint): bool =
  fQsciLexerPostScript_virtualbase_eolFill(self.h, style)

type QsciLexerPostScripteolFillProc* = proc(style: cint): bool
proc oneolFill*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, slot: QsciLexerPostScripteolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerPostScripteolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_eolFill(self: ptr cQsciLexerPostScript, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerPostScript_eolFill ".} =
  var nimfunc = cast[ptr QsciLexerPostScripteolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerPostScriptfont*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fQsciLexerPostScript_virtualbase_font(self.h, style))

type QsciLexerPostScriptfontProc* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, slot: QsciLexerPostScriptfontProc) =
  # TODO check subclass
  var tmp = new QsciLexerPostScriptfontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_font(self: ptr cQsciLexerPostScript, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPostScript_font ".} =
  var nimfunc = cast[ptr QsciLexerPostScriptfontProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerPostScriptindentationGuideView*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, ): cint =
  fQsciLexerPostScript_virtualbase_indentationGuideView(self.h)

type QsciLexerPostScriptindentationGuideViewProc* = proc(): cint
proc onindentationGuideView*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, slot: QsciLexerPostScriptindentationGuideViewProc) =
  # TODO check subclass
  var tmp = new QsciLexerPostScriptindentationGuideViewProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_indentationGuideView(self: ptr cQsciLexerPostScript, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPostScript_indentationGuideView ".} =
  var nimfunc = cast[ptr QsciLexerPostScriptindentationGuideViewProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPostScriptkeywords*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, set: cint): cstring =
  (fQsciLexerPostScript_virtualbase_keywords(self.h, set))

type QsciLexerPostScriptkeywordsProc* = proc(set: cint): cstring
proc onkeywords*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, slot: QsciLexerPostScriptkeywordsProc) =
  # TODO check subclass
  var tmp = new QsciLexerPostScriptkeywordsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_keywords(self: ptr cQsciLexerPostScript, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerPostScript_keywords ".} =
  var nimfunc = cast[ptr QsciLexerPostScriptkeywordsProc](cast[pointer](slot))
  let slotval1 = set


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerPostScriptdefaultStyle*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, ): cint =
  fQsciLexerPostScript_virtualbase_defaultStyle(self.h)

type QsciLexerPostScriptdefaultStyleProc* = proc(): cint
proc ondefaultStyle*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, slot: QsciLexerPostScriptdefaultStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerPostScriptdefaultStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_defaultStyle(self: ptr cQsciLexerPostScript, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPostScript_defaultStyle ".} =
  var nimfunc = cast[ptr QsciLexerPostScriptdefaultStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QsciLexerPostScriptdescriptionProc* = proc(style: cint): string
proc ondescription*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, slot: QsciLexerPostScriptdescriptionProc) =
  # TODO check subclass
  var tmp = new QsciLexerPostScriptdescriptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_description(self: ptr cQsciLexerPostScript, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerPostScript_description ".} =
  var nimfunc = cast[ptr QsciLexerPostScriptdescriptionProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc QsciLexerPostScriptpaper*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerPostScript_virtualbase_paper(self.h, style))

type QsciLexerPostScriptpaperProc* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, slot: QsciLexerPostScriptpaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerPostScriptpaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_paper(self: ptr cQsciLexerPostScript, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPostScript_paper ".} =
  var nimfunc = cast[ptr QsciLexerPostScriptpaperProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerPostScriptdefaultColor*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerPostScript_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerPostScriptdefaultColorWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColor*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, slot: QsciLexerPostScriptdefaultColorWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerPostScriptdefaultColorWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_defaultColorWithStyle(self: ptr cQsciLexerPostScript, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPostScript_defaultColorWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerPostScriptdefaultColorWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerPostScriptdefaultEolFill*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, style: cint): bool =
  fQsciLexerPostScript_virtualbase_defaultEolFill(self.h, style)

type QsciLexerPostScriptdefaultEolFillProc* = proc(style: cint): bool
proc ondefaultEolFill*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, slot: QsciLexerPostScriptdefaultEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerPostScriptdefaultEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_defaultEolFill(self: ptr cQsciLexerPostScript, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerPostScript_defaultEolFill ".} =
  var nimfunc = cast[ptr QsciLexerPostScriptdefaultEolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerPostScriptdefaultFont*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fQsciLexerPostScript_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerPostScriptdefaultFontWithStyleProc* = proc(style: cint): gen_qfont.QFont
proc ondefaultFont*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, slot: QsciLexerPostScriptdefaultFontWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerPostScriptdefaultFontWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_defaultFontWithStyle(self: ptr cQsciLexerPostScript, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPostScript_defaultFontWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerPostScriptdefaultFontWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerPostScriptdefaultPaper*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerPostScript_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerPostScriptdefaultPaperWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaper*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, slot: QsciLexerPostScriptdefaultPaperWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerPostScriptdefaultPaperWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_defaultPaperWithStyle(self: ptr cQsciLexerPostScript, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPostScript_defaultPaperWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerPostScriptdefaultPaperWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerPostScriptsetEditor*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, editor: gen_qsciscintilla.QsciScintilla): void =
  fQsciLexerPostScript_virtualbase_setEditor(self.h, editor.h)

type QsciLexerPostScriptsetEditorProc* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, slot: QsciLexerPostScriptsetEditorProc) =
  # TODO check subclass
  var tmp = new QsciLexerPostScriptsetEditorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_setEditor(self: ptr cQsciLexerPostScript, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPostScript_setEditor ".} =
  var nimfunc = cast[ptr QsciLexerPostScriptsetEditorProc](cast[pointer](slot))
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](slotval1)
proc QsciLexerPostScriptrefreshProperties*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, ): void =
  fQsciLexerPostScript_virtualbase_refreshProperties(self.h)

type QsciLexerPostScriptrefreshPropertiesProc* = proc(): void
proc onrefreshProperties*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, slot: QsciLexerPostScriptrefreshPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerPostScriptrefreshPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_refreshProperties(self: ptr cQsciLexerPostScript, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerPostScript_refreshProperties ".} =
  var nimfunc = cast[ptr QsciLexerPostScriptrefreshPropertiesProc](cast[pointer](slot))

  nimfunc[]()
proc QsciLexerPostScriptstyleBitsNeeded*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, ): cint =
  fQsciLexerPostScript_virtualbase_styleBitsNeeded(self.h)

type QsciLexerPostScriptstyleBitsNeededProc* = proc(): cint
proc onstyleBitsNeeded*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, slot: QsciLexerPostScriptstyleBitsNeededProc) =
  # TODO check subclass
  var tmp = new QsciLexerPostScriptstyleBitsNeededProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_styleBitsNeeded(self: ptr cQsciLexerPostScript, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPostScript_styleBitsNeeded ".} =
  var nimfunc = cast[ptr QsciLexerPostScriptstyleBitsNeededProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPostScriptwordCharacters*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, ): cstring =
  (fQsciLexerPostScript_virtualbase_wordCharacters(self.h))

type QsciLexerPostScriptwordCharactersProc* = proc(): cstring
proc onwordCharacters*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, slot: QsciLexerPostScriptwordCharactersProc) =
  # TODO check subclass
  var tmp = new QsciLexerPostScriptwordCharactersProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_wordCharacters(self: ptr cQsciLexerPostScript, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerPostScript_wordCharacters ".} =
  var nimfunc = cast[ptr QsciLexerPostScriptwordCharactersProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPostScriptsetAutoIndentStyle*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, autoindentstyle: cint): void =
  fQsciLexerPostScript_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerPostScriptsetAutoIndentStyleProc* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, slot: QsciLexerPostScriptsetAutoIndentStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerPostScriptsetAutoIndentStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_setAutoIndentStyle(self: ptr cQsciLexerPostScript, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerPostScript_setAutoIndentStyle ".} =
  var nimfunc = cast[ptr QsciLexerPostScriptsetAutoIndentStyleProc](cast[pointer](slot))
  let slotval1 = autoindentstyle


  nimfunc[](slotval1)
proc QsciLexerPostScriptsetColor*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, c: gen_qcolor.QColor, style: cint): void =
  fQsciLexerPostScript_virtualbase_setColor(self.h, c.h, style)

type QsciLexerPostScriptsetColorProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, slot: QsciLexerPostScriptsetColorProc) =
  # TODO check subclass
  var tmp = new QsciLexerPostScriptsetColorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_setColor(self: ptr cQsciLexerPostScript, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerPostScript_setColor ".} =
  var nimfunc = cast[ptr QsciLexerPostScriptsetColorProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerPostScriptsetEolFill*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, eoffill: bool, style: cint): void =
  fQsciLexerPostScript_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerPostScriptsetEolFillProc* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, slot: QsciLexerPostScriptsetEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerPostScriptsetEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_setEolFill(self: ptr cQsciLexerPostScript, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerPostScript_setEolFill ".} =
  var nimfunc = cast[ptr QsciLexerPostScriptsetEolFillProc](cast[pointer](slot))
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerPostScriptsetFont*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, f: gen_qfont.QFont, style: cint): void =
  fQsciLexerPostScript_virtualbase_setFont(self.h, f.h, style)

type QsciLexerPostScriptsetFontProc* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, slot: QsciLexerPostScriptsetFontProc) =
  # TODO check subclass
  var tmp = new QsciLexerPostScriptsetFontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_setFont(self: ptr cQsciLexerPostScript, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerPostScript_setFont ".} =
  var nimfunc = cast[ptr QsciLexerPostScriptsetFontProc](cast[pointer](slot))
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerPostScriptsetPaper*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, c: gen_qcolor.QColor, style: cint): void =
  fQsciLexerPostScript_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerPostScriptsetPaperProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, slot: QsciLexerPostScriptsetPaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerPostScriptsetPaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_setPaper(self: ptr cQsciLexerPostScript, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerPostScript_setPaper ".} =
  var nimfunc = cast[ptr QsciLexerPostScriptsetPaperProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerPostScriptreadProperties*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, qs: gen_qsettings.QSettings, prefix: string): bool =
  fQsciLexerPostScript_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerPostScriptreadPropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, slot: QsciLexerPostScriptreadPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerPostScriptreadPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_readProperties(self: ptr cQsciLexerPostScript, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerPostScript_readProperties ".} =
  var nimfunc = cast[ptr QsciLexerPostScriptreadPropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerPostScriptwriteProperties*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, qs: gen_qsettings.QSettings, prefix: string): bool =
  fQsciLexerPostScript_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerPostScriptwritePropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, slot: QsciLexerPostScriptwritePropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerPostScriptwritePropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_writeProperties(self: ptr cQsciLexerPostScript, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerPostScript_writeProperties ".} =
  var nimfunc = cast[ptr QsciLexerPostScriptwritePropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerPostScriptevent*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, event: gen_qcoreevent.QEvent): bool =
  fQsciLexerPostScript_virtualbase_event(self.h, event.h)

type QsciLexerPostScripteventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, slot: QsciLexerPostScripteventProc) =
  # TODO check subclass
  var tmp = new QsciLexerPostScripteventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_event(self: ptr cQsciLexerPostScript, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerPostScript_event ".} =
  var nimfunc = cast[ptr QsciLexerPostScripteventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerPostScripteventFilter*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =
  fQsciLexerPostScript_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerPostScripteventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, slot: QsciLexerPostScripteventFilterProc) =
  # TODO check subclass
  var tmp = new QsciLexerPostScripteventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_eventFilter(self: ptr cQsciLexerPostScript, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerPostScript_eventFilter ".} =
  var nimfunc = cast[ptr QsciLexerPostScripteventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerPostScripttimerEvent*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, event: gen_qcoreevent.QTimerEvent): void =
  fQsciLexerPostScript_virtualbase_timerEvent(self.h, event.h)

type QsciLexerPostScripttimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, slot: QsciLexerPostScripttimerEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerPostScripttimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_timerEvent(self: ptr cQsciLexerPostScript, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPostScript_timerEvent ".} =
  var nimfunc = cast[ptr QsciLexerPostScripttimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerPostScriptchildEvent*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, event: gen_qcoreevent.QChildEvent): void =
  fQsciLexerPostScript_virtualbase_childEvent(self.h, event.h)

type QsciLexerPostScriptchildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, slot: QsciLexerPostScriptchildEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerPostScriptchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_childEvent(self: ptr cQsciLexerPostScript, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPostScript_childEvent ".} =
  var nimfunc = cast[ptr QsciLexerPostScriptchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerPostScriptcustomEvent*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, event: gen_qcoreevent.QEvent): void =
  fQsciLexerPostScript_virtualbase_customEvent(self.h, event.h)

type QsciLexerPostScriptcustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, slot: QsciLexerPostScriptcustomEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerPostScriptcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_customEvent(self: ptr cQsciLexerPostScript, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPostScript_customEvent ".} =
  var nimfunc = cast[ptr QsciLexerPostScriptcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerPostScriptconnectNotify*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, signal: gen_qmetaobject.QMetaMethod): void =
  fQsciLexerPostScript_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerPostScriptconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, slot: QsciLexerPostScriptconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerPostScriptconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_connectNotify(self: ptr cQsciLexerPostScript, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPostScript_connectNotify ".} =
  var nimfunc = cast[ptr QsciLexerPostScriptconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QsciLexerPostScriptdisconnectNotify*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, signal: gen_qmetaobject.QMetaMethod): void =
  fQsciLexerPostScript_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerPostScriptdisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, slot: QsciLexerPostScriptdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerPostScriptdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_disconnectNotify(self: ptr cQsciLexerPostScript, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPostScript_disconnectNotify ".} =
  var nimfunc = cast[ptr QsciLexerPostScriptdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qscilexerpostscript_types.QsciLexerPostScript): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerPostScript_staticMetaObject())
proc delete*(self: gen_qscilexerpostscript_types.QsciLexerPostScript) =
  fcQsciLexerPostScript_delete(self.h)
