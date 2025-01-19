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


type QsciLexerPostScriptEnum* = cint
const
  QsciLexerPostScriptDefault* = 0
  QsciLexerPostScriptComment* = 1
  QsciLexerPostScriptDSCComment* = 2
  QsciLexerPostScriptDSCCommentValue* = 3
  QsciLexerPostScriptNumber* = 4
  QsciLexerPostScriptName* = 5
  QsciLexerPostScriptKeyword* = 6
  QsciLexerPostScriptLiteral* = 7
  QsciLexerPostScriptImmediateEvalLiteral* = 8
  QsciLexerPostScriptArrayParenthesis* = 9
  QsciLexerPostScriptDictionaryParenthesis* = 10
  QsciLexerPostScriptProcedureParenthesis* = 11
  QsciLexerPostScriptText* = 12
  QsciLexerPostScriptHexString* = 13
  QsciLexerPostScriptBase85String* = 14
  QsciLexerPostScriptBadStringCharacter* = 15



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


func init*(T: type QsciLexerPostScript, h: ptr cQsciLexerPostScript): QsciLexerPostScript =
  T(h: h)
proc create*(T: type QsciLexerPostScript, ): QsciLexerPostScript =

  QsciLexerPostScript.init(fcQsciLexerPostScript_new())
proc create*(T: type QsciLexerPostScript, parent: gen_qobject.QObject): QsciLexerPostScript =

  QsciLexerPostScript.init(fcQsciLexerPostScript_new2(parent.h))
proc metaObject*(self: QsciLexerPostScript, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQsciLexerPostScript_metaObject(self.h))

proc metacast*(self: QsciLexerPostScript, param1: cstring): pointer =

  fcQsciLexerPostScript_metacast(self.h, param1)

proc metacall*(self: QsciLexerPostScript, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQsciLexerPostScript_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QsciLexerPostScript, s: cstring): string =

  let v_ms = fcQsciLexerPostScript_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QsciLexerPostScript, s: cstring): string =

  let v_ms = fcQsciLexerPostScript_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: QsciLexerPostScript, ): cstring =

  (fcQsciLexerPostScript_language(self.h))

proc lexer*(self: QsciLexerPostScript, ): cstring =

  (fcQsciLexerPostScript_lexer(self.h))

proc braceStyle*(self: QsciLexerPostScript, ): cint =

  fcQsciLexerPostScript_braceStyle(self.h)

proc defaultColor*(self: QsciLexerPostScript, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerPostScript_defaultColor(self.h, style))

proc defaultFont*(self: QsciLexerPostScript, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQsciLexerPostScript_defaultFont(self.h, style))

proc defaultPaper*(self: QsciLexerPostScript, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerPostScript_defaultPaper(self.h, style))

proc keywords*(self: QsciLexerPostScript, set: cint): cstring =

  (fcQsciLexerPostScript_keywords(self.h, set))

proc description*(self: QsciLexerPostScript, style: cint): string =

  let v_ms = fcQsciLexerPostScript_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: QsciLexerPostScript, ): void =

  fcQsciLexerPostScript_refreshProperties(self.h)

proc tokenize*(self: QsciLexerPostScript, ): bool =

  fcQsciLexerPostScript_tokenize(self.h)

proc level*(self: QsciLexerPostScript, ): cint =

  fcQsciLexerPostScript_level(self.h)

proc foldCompact*(self: QsciLexerPostScript, ): bool =

  fcQsciLexerPostScript_foldCompact(self.h)

proc foldAtElse*(self: QsciLexerPostScript, ): bool =

  fcQsciLexerPostScript_foldAtElse(self.h)

proc setTokenize*(self: QsciLexerPostScript, tokenize: bool): void =

  fcQsciLexerPostScript_setTokenize(self.h, tokenize)

proc setLevel*(self: QsciLexerPostScript, level: cint): void =

  fcQsciLexerPostScript_setLevel(self.h, level)

proc setFoldCompact*(self: QsciLexerPostScript, fold: bool): void =

  fcQsciLexerPostScript_setFoldCompact(self.h, fold)

proc setFoldAtElse*(self: QsciLexerPostScript, fold: bool): void =

  fcQsciLexerPostScript_setFoldAtElse(self.h, fold)

proc tr2*(_: type QsciLexerPostScript, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerPostScript_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QsciLexerPostScript, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerPostScript_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QsciLexerPostScript, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerPostScript_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QsciLexerPostScript, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerPostScript_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QsciLexerPostScript, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQsciLexerPostScript_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerPostScriptmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QsciLexerPostScript, slot: proc(super: QsciLexerPostScriptmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPostScriptmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_metacall(self: ptr cQsciLexerPostScript, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerPostScript_metacall ".} =
  type Cb = proc(super: QsciLexerPostScriptmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QsciLexerPostScript(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_setTokenize(self: QsciLexerPostScript, tokenize: bool): void =


  fQsciLexerPostScript_virtualbase_setTokenize(self.h, tokenize)

type QsciLexerPostScriptsetTokenizeBase* = proc(tokenize: bool): void
proc onsetTokenize*(self: QsciLexerPostScript, slot: proc(super: QsciLexerPostScriptsetTokenizeBase, tokenize: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPostScriptsetTokenizeBase, tokenize: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_setTokenize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_setTokenize(self: ptr cQsciLexerPostScript, slot: int, tokenize: bool): void {.exportc: "miqt_exec_callback_QsciLexerPostScript_setTokenize ".} =
  type Cb = proc(super: QsciLexerPostScriptsetTokenizeBase, tokenize: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(tokenize: bool): auto =
    callVirtualBase_setTokenize(QsciLexerPostScript(h: self), tokenize)
  let slotval1 = tokenize


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setLevel(self: QsciLexerPostScript, level: cint): void =


  fQsciLexerPostScript_virtualbase_setLevel(self.h, level)

type QsciLexerPostScriptsetLevelBase* = proc(level: cint): void
proc onsetLevel*(self: QsciLexerPostScript, slot: proc(super: QsciLexerPostScriptsetLevelBase, level: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPostScriptsetLevelBase, level: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_setLevel(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_setLevel(self: ptr cQsciLexerPostScript, slot: int, level: cint): void {.exportc: "miqt_exec_callback_QsciLexerPostScript_setLevel ".} =
  type Cb = proc(super: QsciLexerPostScriptsetLevelBase, level: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(level: cint): auto =
    callVirtualBase_setLevel(QsciLexerPostScript(h: self), level)
  let slotval1 = level


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setFoldCompact(self: QsciLexerPostScript, fold: bool): void =


  fQsciLexerPostScript_virtualbase_setFoldCompact(self.h, fold)

type QsciLexerPostScriptsetFoldCompactBase* = proc(fold: bool): void
proc onsetFoldCompact*(self: QsciLexerPostScript, slot: proc(super: QsciLexerPostScriptsetFoldCompactBase, fold: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPostScriptsetFoldCompactBase, fold: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_setFoldCompact(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_setFoldCompact(self: ptr cQsciLexerPostScript, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerPostScript_setFoldCompact ".} =
  type Cb = proc(super: QsciLexerPostScriptsetFoldCompactBase, fold: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: bool): auto =
    callVirtualBase_setFoldCompact(QsciLexerPostScript(h: self), fold)
  let slotval1 = fold


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setFoldAtElse(self: QsciLexerPostScript, fold: bool): void =


  fQsciLexerPostScript_virtualbase_setFoldAtElse(self.h, fold)

type QsciLexerPostScriptsetFoldAtElseBase* = proc(fold: bool): void
proc onsetFoldAtElse*(self: QsciLexerPostScript, slot: proc(super: QsciLexerPostScriptsetFoldAtElseBase, fold: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPostScriptsetFoldAtElseBase, fold: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_setFoldAtElse(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_setFoldAtElse(self: ptr cQsciLexerPostScript, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerPostScript_setFoldAtElse ".} =
  type Cb = proc(super: QsciLexerPostScriptsetFoldAtElseBase, fold: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: bool): auto =
    callVirtualBase_setFoldAtElse(QsciLexerPostScript(h: self), fold)
  let slotval1 = fold


  nimfunc[](superCall, slotval1)
type QsciLexerPostScriptlanguageBase* = proc(): cstring
proc onlanguage*(self: QsciLexerPostScript, slot: proc(): cstring) =
  # TODO check subclass
  type Cb = proc(): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_language(self: ptr cQsciLexerPostScript, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerPostScript_language ".} =
  type Cb = proc(): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc callVirtualBase_lexer(self: QsciLexerPostScript, ): cstring =


  (fQsciLexerPostScript_virtualbase_lexer(self.h))

type QsciLexerPostScriptlexerBase* = proc(): cstring
proc onlexer*(self: QsciLexerPostScript, slot: proc(super: QsciLexerPostScriptlexerBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPostScriptlexerBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_lexer(self: ptr cQsciLexerPostScript, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerPostScript_lexer ".} =
  type Cb = proc(super: QsciLexerPostScriptlexerBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexer(QsciLexerPostScript(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_lexerId(self: QsciLexerPostScript, ): cint =


  fQsciLexerPostScript_virtualbase_lexerId(self.h)

type QsciLexerPostScriptlexerIdBase* = proc(): cint
proc onlexerId*(self: QsciLexerPostScript, slot: proc(super: QsciLexerPostScriptlexerIdBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPostScriptlexerIdBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_lexerId(self: ptr cQsciLexerPostScript, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPostScript_lexerId ".} =
  type Cb = proc(super: QsciLexerPostScriptlexerIdBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexerId(QsciLexerPostScript(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionFillups(self: QsciLexerPostScript, ): cstring =


  (fQsciLexerPostScript_virtualbase_autoCompletionFillups(self.h))

type QsciLexerPostScriptautoCompletionFillupsBase* = proc(): cstring
proc onautoCompletionFillups*(self: QsciLexerPostScript, slot: proc(super: QsciLexerPostScriptautoCompletionFillupsBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPostScriptautoCompletionFillupsBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_autoCompletionFillups(self: ptr cQsciLexerPostScript, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerPostScript_autoCompletionFillups ".} =
  type Cb = proc(super: QsciLexerPostScriptautoCompletionFillupsBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionFillups(QsciLexerPostScript(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionWordSeparators(self: QsciLexerPostScript, ): seq[string] =


  var v_ma = fQsciLexerPostScript_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerPostScriptautoCompletionWordSeparatorsBase* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: QsciLexerPostScript, slot: proc(super: QsciLexerPostScriptautoCompletionWordSeparatorsBase): seq[string]) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPostScriptautoCompletionWordSeparatorsBase): seq[string]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_autoCompletionWordSeparators(self: ptr cQsciLexerPostScript, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerPostScript_autoCompletionWordSeparators ".} =
  type Cb = proc(super: QsciLexerPostScriptautoCompletionWordSeparatorsBase): seq[string]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionWordSeparators(QsciLexerPostScript(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_blockEnd(self: QsciLexerPostScript, style: ptr cint): cstring =


  (fQsciLexerPostScript_virtualbase_blockEnd(self.h, style))

type QsciLexerPostScriptblockEndBase* = proc(style: ptr cint): cstring
proc onblockEnd*(self: QsciLexerPostScript, slot: proc(super: QsciLexerPostScriptblockEndBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPostScriptblockEndBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_blockEnd(self: ptr cQsciLexerPostScript, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerPostScript_blockEnd ".} =
  type Cb = proc(super: QsciLexerPostScriptblockEndBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockEnd(QsciLexerPostScript(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockLookback(self: QsciLexerPostScript, ): cint =


  fQsciLexerPostScript_virtualbase_blockLookback(self.h)

type QsciLexerPostScriptblockLookbackBase* = proc(): cint
proc onblockLookback*(self: QsciLexerPostScript, slot: proc(super: QsciLexerPostScriptblockLookbackBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPostScriptblockLookbackBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_blockLookback(self: ptr cQsciLexerPostScript, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPostScript_blockLookback ".} =
  type Cb = proc(super: QsciLexerPostScriptblockLookbackBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_blockLookback(QsciLexerPostScript(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_blockStart(self: QsciLexerPostScript, style: ptr cint): cstring =


  (fQsciLexerPostScript_virtualbase_blockStart(self.h, style))

type QsciLexerPostScriptblockStartBase* = proc(style: ptr cint): cstring
proc onblockStart*(self: QsciLexerPostScript, slot: proc(super: QsciLexerPostScriptblockStartBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPostScriptblockStartBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_blockStart(self: ptr cQsciLexerPostScript, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerPostScript_blockStart ".} =
  type Cb = proc(super: QsciLexerPostScriptblockStartBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStart(QsciLexerPostScript(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockStartKeyword(self: QsciLexerPostScript, style: ptr cint): cstring =


  (fQsciLexerPostScript_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerPostScriptblockStartKeywordBase* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: QsciLexerPostScript, slot: proc(super: QsciLexerPostScriptblockStartKeywordBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPostScriptblockStartKeywordBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_blockStartKeyword(self: ptr cQsciLexerPostScript, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerPostScript_blockStartKeyword ".} =
  type Cb = proc(super: QsciLexerPostScriptblockStartKeywordBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStartKeyword(QsciLexerPostScript(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_braceStyle(self: QsciLexerPostScript, ): cint =


  fQsciLexerPostScript_virtualbase_braceStyle(self.h)

type QsciLexerPostScriptbraceStyleBase* = proc(): cint
proc onbraceStyle*(self: QsciLexerPostScript, slot: proc(super: QsciLexerPostScriptbraceStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPostScriptbraceStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_braceStyle(self: ptr cQsciLexerPostScript, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPostScript_braceStyle ".} =
  type Cb = proc(super: QsciLexerPostScriptbraceStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_braceStyle(QsciLexerPostScript(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_caseSensitive(self: QsciLexerPostScript, ): bool =


  fQsciLexerPostScript_virtualbase_caseSensitive(self.h)

type QsciLexerPostScriptcaseSensitiveBase* = proc(): bool
proc oncaseSensitive*(self: QsciLexerPostScript, slot: proc(super: QsciLexerPostScriptcaseSensitiveBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPostScriptcaseSensitiveBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_caseSensitive(self: ptr cQsciLexerPostScript, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerPostScript_caseSensitive ".} =
  type Cb = proc(super: QsciLexerPostScriptcaseSensitiveBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_caseSensitive(QsciLexerPostScript(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_color(self: QsciLexerPostScript, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerPostScript_virtualbase_color(self.h, style))

type QsciLexerPostScriptcolorBase* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: QsciLexerPostScript, slot: proc(super: QsciLexerPostScriptcolorBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPostScriptcolorBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_color(self: ptr cQsciLexerPostScript, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPostScript_color ".} =
  type Cb = proc(super: QsciLexerPostScriptcolorBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_color(QsciLexerPostScript(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_eolFill(self: QsciLexerPostScript, style: cint): bool =


  fQsciLexerPostScript_virtualbase_eolFill(self.h, style)

type QsciLexerPostScripteolFillBase* = proc(style: cint): bool
proc oneolFill*(self: QsciLexerPostScript, slot: proc(super: QsciLexerPostScripteolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPostScripteolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_eolFill(self: ptr cQsciLexerPostScript, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerPostScript_eolFill ".} =
  type Cb = proc(super: QsciLexerPostScripteolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_eolFill(QsciLexerPostScript(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_font(self: QsciLexerPostScript, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerPostScript_virtualbase_font(self.h, style))

type QsciLexerPostScriptfontBase* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: QsciLexerPostScript, slot: proc(super: QsciLexerPostScriptfontBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPostScriptfontBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_font(self: ptr cQsciLexerPostScript, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPostScript_font ".} =
  type Cb = proc(super: QsciLexerPostScriptfontBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_font(QsciLexerPostScript(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_indentationGuideView(self: QsciLexerPostScript, ): cint =


  fQsciLexerPostScript_virtualbase_indentationGuideView(self.h)

type QsciLexerPostScriptindentationGuideViewBase* = proc(): cint
proc onindentationGuideView*(self: QsciLexerPostScript, slot: proc(super: QsciLexerPostScriptindentationGuideViewBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPostScriptindentationGuideViewBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_indentationGuideView(self: ptr cQsciLexerPostScript, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPostScript_indentationGuideView ".} =
  type Cb = proc(super: QsciLexerPostScriptindentationGuideViewBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_indentationGuideView(QsciLexerPostScript(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_keywords(self: QsciLexerPostScript, set: cint): cstring =


  (fQsciLexerPostScript_virtualbase_keywords(self.h, set))

type QsciLexerPostScriptkeywordsBase* = proc(set: cint): cstring
proc onkeywords*(self: QsciLexerPostScript, slot: proc(super: QsciLexerPostScriptkeywordsBase, set: cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPostScriptkeywordsBase, set: cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_keywords(self: ptr cQsciLexerPostScript, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerPostScript_keywords ".} =
  type Cb = proc(super: QsciLexerPostScriptkeywordsBase, set: cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(set: cint): auto =
    callVirtualBase_keywords(QsciLexerPostScript(h: self), set)
  let slotval1 = set


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultStyle(self: QsciLexerPostScript, ): cint =


  fQsciLexerPostScript_virtualbase_defaultStyle(self.h)

type QsciLexerPostScriptdefaultStyleBase* = proc(): cint
proc ondefaultStyle*(self: QsciLexerPostScript, slot: proc(super: QsciLexerPostScriptdefaultStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPostScriptdefaultStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_defaultStyle(self: ptr cQsciLexerPostScript, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPostScript_defaultStyle ".} =
  type Cb = proc(super: QsciLexerPostScriptdefaultStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_defaultStyle(QsciLexerPostScript(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
type QsciLexerPostScriptdescriptionBase* = proc(style: cint): string
proc ondescription*(self: QsciLexerPostScript, slot: proc(style: cint): string) =
  # TODO check subclass
  type Cb = proc(style: cint): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_description(self: ptr cQsciLexerPostScript, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerPostScript_description ".} =
  type Cb = proc(style: cint): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc callVirtualBase_paper(self: QsciLexerPostScript, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerPostScript_virtualbase_paper(self.h, style))

type QsciLexerPostScriptpaperBase* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: QsciLexerPostScript, slot: proc(super: QsciLexerPostScriptpaperBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPostScriptpaperBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_paper(self: ptr cQsciLexerPostScript, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPostScript_paper ".} =
  type Cb = proc(super: QsciLexerPostScriptpaperBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_paper(QsciLexerPostScript(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultColorWithStyle(self: QsciLexerPostScript, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerPostScript_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerPostScriptdefaultColorWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColorWithStyle*(self: QsciLexerPostScript, slot: proc(super: QsciLexerPostScriptdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPostScriptdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_defaultColorWithStyle(self: ptr cQsciLexerPostScript, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPostScript_defaultColorWithStyle ".} =
  type Cb = proc(super: QsciLexerPostScriptdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultColorWithStyle(QsciLexerPostScript(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultEolFill(self: QsciLexerPostScript, style: cint): bool =


  fQsciLexerPostScript_virtualbase_defaultEolFill(self.h, style)

type QsciLexerPostScriptdefaultEolFillBase* = proc(style: cint): bool
proc ondefaultEolFill*(self: QsciLexerPostScript, slot: proc(super: QsciLexerPostScriptdefaultEolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPostScriptdefaultEolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_defaultEolFill(self: ptr cQsciLexerPostScript, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerPostScript_defaultEolFill ".} =
  type Cb = proc(super: QsciLexerPostScriptdefaultEolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultEolFill(QsciLexerPostScript(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultFontWithStyle(self: QsciLexerPostScript, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerPostScript_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerPostScriptdefaultFontWithStyleBase* = proc(style: cint): gen_qfont.QFont
proc ondefaultFontWithStyle*(self: QsciLexerPostScript, slot: proc(super: QsciLexerPostScriptdefaultFontWithStyleBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPostScriptdefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_defaultFontWithStyle(self: ptr cQsciLexerPostScript, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPostScript_defaultFontWithStyle ".} =
  type Cb = proc(super: QsciLexerPostScriptdefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultFontWithStyle(QsciLexerPostScript(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultPaperWithStyle(self: QsciLexerPostScript, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerPostScript_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerPostScriptdefaultPaperWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaperWithStyle*(self: QsciLexerPostScript, slot: proc(super: QsciLexerPostScriptdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPostScriptdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_defaultPaperWithStyle(self: ptr cQsciLexerPostScript, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPostScript_defaultPaperWithStyle ".} =
  type Cb = proc(super: QsciLexerPostScriptdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultPaperWithStyle(QsciLexerPostScript(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_setEditor(self: QsciLexerPostScript, editor: gen_qsciscintilla.QsciScintilla): void =


  fQsciLexerPostScript_virtualbase_setEditor(self.h, editor.h)

type QsciLexerPostScriptsetEditorBase* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: QsciLexerPostScript, slot: proc(super: QsciLexerPostScriptsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPostScriptsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_setEditor(self: ptr cQsciLexerPostScript, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPostScript_setEditor ".} =
  type Cb = proc(super: QsciLexerPostScriptsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qsciscintilla.QsciScintilla): auto =
    callVirtualBase_setEditor(QsciLexerPostScript(h: self), editor)
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_refreshProperties(self: QsciLexerPostScript, ): void =


  fQsciLexerPostScript_virtualbase_refreshProperties(self.h)

type QsciLexerPostScriptrefreshPropertiesBase* = proc(): void
proc onrefreshProperties*(self: QsciLexerPostScript, slot: proc(super: QsciLexerPostScriptrefreshPropertiesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPostScriptrefreshPropertiesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_refreshProperties(self: ptr cQsciLexerPostScript, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerPostScript_refreshProperties ".} =
  type Cb = proc(super: QsciLexerPostScriptrefreshPropertiesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_refreshProperties(QsciLexerPostScript(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_styleBitsNeeded(self: QsciLexerPostScript, ): cint =


  fQsciLexerPostScript_virtualbase_styleBitsNeeded(self.h)

type QsciLexerPostScriptstyleBitsNeededBase* = proc(): cint
proc onstyleBitsNeeded*(self: QsciLexerPostScript, slot: proc(super: QsciLexerPostScriptstyleBitsNeededBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPostScriptstyleBitsNeededBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_styleBitsNeeded(self: ptr cQsciLexerPostScript, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPostScript_styleBitsNeeded ".} =
  type Cb = proc(super: QsciLexerPostScriptstyleBitsNeededBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_styleBitsNeeded(QsciLexerPostScript(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_wordCharacters(self: QsciLexerPostScript, ): cstring =


  (fQsciLexerPostScript_virtualbase_wordCharacters(self.h))

type QsciLexerPostScriptwordCharactersBase* = proc(): cstring
proc onwordCharacters*(self: QsciLexerPostScript, slot: proc(super: QsciLexerPostScriptwordCharactersBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPostScriptwordCharactersBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_wordCharacters(self: ptr cQsciLexerPostScript, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerPostScript_wordCharacters ".} =
  type Cb = proc(super: QsciLexerPostScriptwordCharactersBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_wordCharacters(QsciLexerPostScript(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setAutoIndentStyle(self: QsciLexerPostScript, autoindentstyle: cint): void =


  fQsciLexerPostScript_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerPostScriptsetAutoIndentStyleBase* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: QsciLexerPostScript, slot: proc(super: QsciLexerPostScriptsetAutoIndentStyleBase, autoindentstyle: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPostScriptsetAutoIndentStyleBase, autoindentstyle: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_setAutoIndentStyle(self: ptr cQsciLexerPostScript, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerPostScript_setAutoIndentStyle ".} =
  type Cb = proc(super: QsciLexerPostScriptsetAutoIndentStyleBase, autoindentstyle: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(autoindentstyle: cint): auto =
    callVirtualBase_setAutoIndentStyle(QsciLexerPostScript(h: self), autoindentstyle)
  let slotval1 = autoindentstyle


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setColor(self: QsciLexerPostScript, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerPostScript_virtualbase_setColor(self.h, c.h, style)

type QsciLexerPostScriptsetColorBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: QsciLexerPostScript, slot: proc(super: QsciLexerPostScriptsetColorBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPostScriptsetColorBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_setColor(self: ptr cQsciLexerPostScript, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerPostScript_setColor ".} =
  type Cb = proc(super: QsciLexerPostScriptsetColorBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setColor(QsciLexerPostScript(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setEolFill(self: QsciLexerPostScript, eoffill: bool, style: cint): void =


  fQsciLexerPostScript_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerPostScriptsetEolFillBase* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: QsciLexerPostScript, slot: proc(super: QsciLexerPostScriptsetEolFillBase, eoffill: bool, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPostScriptsetEolFillBase, eoffill: bool, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_setEolFill(self: ptr cQsciLexerPostScript, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerPostScript_setEolFill ".} =
  type Cb = proc(super: QsciLexerPostScriptsetEolFillBase, eoffill: bool, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eoffill: bool, style: cint): auto =
    callVirtualBase_setEolFill(QsciLexerPostScript(h: self), eoffill, style)
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setFont(self: QsciLexerPostScript, f: gen_qfont.QFont, style: cint): void =


  fQsciLexerPostScript_virtualbase_setFont(self.h, f.h, style)

type QsciLexerPostScriptsetFontBase* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: QsciLexerPostScript, slot: proc(super: QsciLexerPostScriptsetFontBase, f: gen_qfont.QFont, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPostScriptsetFontBase, f: gen_qfont.QFont, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_setFont(self: ptr cQsciLexerPostScript, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerPostScript_setFont ".} =
  type Cb = proc(super: QsciLexerPostScriptsetFontBase, f: gen_qfont.QFont, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(f: gen_qfont.QFont, style: cint): auto =
    callVirtualBase_setFont(QsciLexerPostScript(h: self), f, style)
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setPaper(self: QsciLexerPostScript, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerPostScript_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerPostScriptsetPaperBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: QsciLexerPostScript, slot: proc(super: QsciLexerPostScriptsetPaperBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPostScriptsetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_setPaper(self: ptr cQsciLexerPostScript, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerPostScript_setPaper ".} =
  type Cb = proc(super: QsciLexerPostScriptsetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setPaper(QsciLexerPostScript(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_readProperties(self: QsciLexerPostScript, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerPostScript_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerPostScriptreadPropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: QsciLexerPostScript, slot: proc(super: QsciLexerPostScriptreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPostScriptreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_readProperties(self: ptr cQsciLexerPostScript, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerPostScript_readProperties ".} =
  type Cb = proc(super: QsciLexerPostScriptreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_readProperties(QsciLexerPostScript(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_writeProperties(self: QsciLexerPostScript, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerPostScript_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerPostScriptwritePropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: QsciLexerPostScript, slot: proc(super: QsciLexerPostScriptwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPostScriptwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_writeProperties(self: ptr cQsciLexerPostScript, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerPostScript_writeProperties ".} =
  type Cb = proc(super: QsciLexerPostScriptwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_writeProperties(QsciLexerPostScript(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_event(self: QsciLexerPostScript, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerPostScript_virtualbase_event(self.h, event.h)

type QsciLexerPostScripteventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QsciLexerPostScript, slot: proc(super: QsciLexerPostScripteventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPostScripteventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_event(self: ptr cQsciLexerPostScript, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerPostScript_event ".} =
  type Cb = proc(super: QsciLexerPostScripteventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QsciLexerPostScript(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QsciLexerPostScript, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerPostScript_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerPostScripteventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QsciLexerPostScript, slot: proc(super: QsciLexerPostScripteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPostScripteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_eventFilter(self: ptr cQsciLexerPostScript, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerPostScript_eventFilter ".} =
  type Cb = proc(super: QsciLexerPostScripteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QsciLexerPostScript(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QsciLexerPostScript, event: gen_qcoreevent.QTimerEvent): void =


  fQsciLexerPostScript_virtualbase_timerEvent(self.h, event.h)

type QsciLexerPostScripttimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QsciLexerPostScript, slot: proc(super: QsciLexerPostScripttimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPostScripttimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_timerEvent(self: ptr cQsciLexerPostScript, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPostScript_timerEvent ".} =
  type Cb = proc(super: QsciLexerPostScripttimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QsciLexerPostScript(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QsciLexerPostScript, event: gen_qcoreevent.QChildEvent): void =


  fQsciLexerPostScript_virtualbase_childEvent(self.h, event.h)

type QsciLexerPostScriptchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QsciLexerPostScript, slot: proc(super: QsciLexerPostScriptchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPostScriptchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_childEvent(self: ptr cQsciLexerPostScript, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPostScript_childEvent ".} =
  type Cb = proc(super: QsciLexerPostScriptchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QsciLexerPostScript(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QsciLexerPostScript, event: gen_qcoreevent.QEvent): void =


  fQsciLexerPostScript_virtualbase_customEvent(self.h, event.h)

type QsciLexerPostScriptcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QsciLexerPostScript, slot: proc(super: QsciLexerPostScriptcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPostScriptcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_customEvent(self: ptr cQsciLexerPostScript, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPostScript_customEvent ".} =
  type Cb = proc(super: QsciLexerPostScriptcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QsciLexerPostScript(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QsciLexerPostScript, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerPostScript_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerPostScriptconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QsciLexerPostScript, slot: proc(super: QsciLexerPostScriptconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPostScriptconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_connectNotify(self: ptr cQsciLexerPostScript, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPostScript_connectNotify ".} =
  type Cb = proc(super: QsciLexerPostScriptconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QsciLexerPostScript(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QsciLexerPostScript, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerPostScript_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerPostScriptdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QsciLexerPostScript, slot: proc(super: QsciLexerPostScriptdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPostScriptdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPostScript_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPostScript_disconnectNotify(self: ptr cQsciLexerPostScript, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPostScript_disconnectNotify ".} =
  type Cb = proc(super: QsciLexerPostScriptdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QsciLexerPostScript(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QsciLexerPostScript): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerPostScript_staticMetaObject())
proc delete*(self: QsciLexerPostScript) =
  fcQsciLexerPostScript_delete(self.h)
