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

type cQsciLexerPostScript*{.exportc: "QsciLexerPostScript", incompleteStruct.} = object

proc fcQsciLexerPostScript_metaObject(self: pointer, ): pointer {.importc: "QsciLexerPostScript_metaObject".}
proc fcQsciLexerPostScript_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerPostScript_metacast".}
proc fcQsciLexerPostScript_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerPostScript_metacall".}
proc fcQsciLexerPostScript_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerPostScript_tr".}
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
type cQsciLexerPostScriptVTable = object
  destructor*: proc(vtbl: ptr cQsciLexerPostScriptVTable, self: ptr cQsciLexerPostScript) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setTokenize*: proc(vtbl, self: pointer, tokenize: bool): void {.cdecl, raises: [], gcsafe.}
  setLevel*: proc(vtbl, self: pointer, level: cint): void {.cdecl, raises: [], gcsafe.}
  setFoldCompact*: proc(vtbl, self: pointer, fold: bool): void {.cdecl, raises: [], gcsafe.}
  setFoldAtElse*: proc(vtbl, self: pointer, fold: bool): void {.cdecl, raises: [], gcsafe.}
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
proc fcQsciLexerPostScript_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QsciLexerPostScript_virtualbase_metaObject".}
proc fcQsciLexerPostScript_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerPostScript_virtualbase_metacast".}
proc fcQsciLexerPostScript_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerPostScript_virtualbase_metacall".}
proc fcQsciLexerPostScript_virtualbase_setTokenize(self: pointer, tokenize: bool): void {.importc: "QsciLexerPostScript_virtualbase_setTokenize".}
proc fcQsciLexerPostScript_virtualbase_setLevel(self: pointer, level: cint): void {.importc: "QsciLexerPostScript_virtualbase_setLevel".}
proc fcQsciLexerPostScript_virtualbase_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerPostScript_virtualbase_setFoldCompact".}
proc fcQsciLexerPostScript_virtualbase_setFoldAtElse(self: pointer, fold: bool): void {.importc: "QsciLexerPostScript_virtualbase_setFoldAtElse".}
proc fcQsciLexerPostScript_virtualbase_lexer(self: pointer, ): cstring {.importc: "QsciLexerPostScript_virtualbase_lexer".}
proc fcQsciLexerPostScript_virtualbase_lexerId(self: pointer, ): cint {.importc: "QsciLexerPostScript_virtualbase_lexerId".}
proc fcQsciLexerPostScript_virtualbase_autoCompletionFillups(self: pointer, ): cstring {.importc: "QsciLexerPostScript_virtualbase_autoCompletionFillups".}
proc fcQsciLexerPostScript_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array {.importc: "QsciLexerPostScript_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerPostScript_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerPostScript_virtualbase_blockEnd".}
proc fcQsciLexerPostScript_virtualbase_blockLookback(self: pointer, ): cint {.importc: "QsciLexerPostScript_virtualbase_blockLookback".}
proc fcQsciLexerPostScript_virtualbase_blockStart(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerPostScript_virtualbase_blockStart".}
proc fcQsciLexerPostScript_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerPostScript_virtualbase_blockStartKeyword".}
proc fcQsciLexerPostScript_virtualbase_braceStyle(self: pointer, ): cint {.importc: "QsciLexerPostScript_virtualbase_braceStyle".}
proc fcQsciLexerPostScript_virtualbase_caseSensitive(self: pointer, ): bool {.importc: "QsciLexerPostScript_virtualbase_caseSensitive".}
proc fcQsciLexerPostScript_virtualbase_color(self: pointer, style: cint): pointer {.importc: "QsciLexerPostScript_virtualbase_color".}
proc fcQsciLexerPostScript_virtualbase_eolFill(self: pointer, style: cint): bool {.importc: "QsciLexerPostScript_virtualbase_eolFill".}
proc fcQsciLexerPostScript_virtualbase_font(self: pointer, style: cint): pointer {.importc: "QsciLexerPostScript_virtualbase_font".}
proc fcQsciLexerPostScript_virtualbase_indentationGuideView(self: pointer, ): cint {.importc: "QsciLexerPostScript_virtualbase_indentationGuideView".}
proc fcQsciLexerPostScript_virtualbase_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerPostScript_virtualbase_keywords".}
proc fcQsciLexerPostScript_virtualbase_defaultStyle(self: pointer, ): cint {.importc: "QsciLexerPostScript_virtualbase_defaultStyle".}
proc fcQsciLexerPostScript_virtualbase_paper(self: pointer, style: cint): pointer {.importc: "QsciLexerPostScript_virtualbase_paper".}
proc fcQsciLexerPostScript_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerPostScript_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerPostScript_virtualbase_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerPostScript_virtualbase_defaultEolFill".}
proc fcQsciLexerPostScript_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerPostScript_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerPostScript_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerPostScript_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerPostScript_virtualbase_setEditor(self: pointer, editor: pointer): void {.importc: "QsciLexerPostScript_virtualbase_setEditor".}
proc fcQsciLexerPostScript_virtualbase_refreshProperties(self: pointer, ): void {.importc: "QsciLexerPostScript_virtualbase_refreshProperties".}
proc fcQsciLexerPostScript_virtualbase_styleBitsNeeded(self: pointer, ): cint {.importc: "QsciLexerPostScript_virtualbase_styleBitsNeeded".}
proc fcQsciLexerPostScript_virtualbase_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerPostScript_virtualbase_wordCharacters".}
proc fcQsciLexerPostScript_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void {.importc: "QsciLexerPostScript_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerPostScript_virtualbase_setColor(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerPostScript_virtualbase_setColor".}
proc fcQsciLexerPostScript_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void {.importc: "QsciLexerPostScript_virtualbase_setEolFill".}
proc fcQsciLexerPostScript_virtualbase_setFont(self: pointer, f: pointer, style: cint): void {.importc: "QsciLexerPostScript_virtualbase_setFont".}
proc fcQsciLexerPostScript_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerPostScript_virtualbase_setPaper".}
proc fcQsciLexerPostScript_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerPostScript_virtualbase_readProperties".}
proc fcQsciLexerPostScript_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerPostScript_virtualbase_writeProperties".}
proc fcQsciLexerPostScript_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QsciLexerPostScript_virtualbase_event".}
proc fcQsciLexerPostScript_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QsciLexerPostScript_virtualbase_eventFilter".}
proc fcQsciLexerPostScript_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QsciLexerPostScript_virtualbase_timerEvent".}
proc fcQsciLexerPostScript_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QsciLexerPostScript_virtualbase_childEvent".}
proc fcQsciLexerPostScript_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QsciLexerPostScript_virtualbase_customEvent".}
proc fcQsciLexerPostScript_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerPostScript_virtualbase_connectNotify".}
proc fcQsciLexerPostScript_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerPostScript_virtualbase_disconnectNotify".}
proc fcQsciLexerPostScript_protectedbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerPostScript_protectedbase_readProperties".}
proc fcQsciLexerPostScript_protectedbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerPostScript_protectedbase_writeProperties".}
proc fcQsciLexerPostScript_protectedbase_sender(self: pointer, ): pointer {.importc: "QsciLexerPostScript_protectedbase_sender".}
proc fcQsciLexerPostScript_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QsciLexerPostScript_protectedbase_senderSignalIndex".}
proc fcQsciLexerPostScript_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QsciLexerPostScript_protectedbase_receivers".}
proc fcQsciLexerPostScript_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QsciLexerPostScript_protectedbase_isSignalConnected".}
proc fcQsciLexerPostScript_new(vtbl: pointer, ): ptr cQsciLexerPostScript {.importc: "QsciLexerPostScript_new".}
proc fcQsciLexerPostScript_new2(vtbl: pointer, parent: pointer): ptr cQsciLexerPostScript {.importc: "QsciLexerPostScript_new2".}
proc fcQsciLexerPostScript_staticMetaObject(): pointer {.importc: "QsciLexerPostScript_staticMetaObject".}
proc fcQsciLexerPostScript_delete(self: pointer) {.importc: "QsciLexerPostScript_delete".}

proc metaObject*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerPostScript_metaObject(self.h))

proc metacast*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, param1: cstring): pointer =
  fcQsciLexerPostScript_metacast(self.h, param1)

proc metacall*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerPostScript_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexerpostscript_types.QsciLexerPostScript, s: cstring): string =
  let v_ms = fcQsciLexerPostScript_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, ): cstring =
  (fcQsciLexerPostScript_language(self.h))

proc lexer*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, ): cstring =
  (fcQsciLexerPostScript_lexer(self.h))

proc braceStyle*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, ): cint =
  fcQsciLexerPostScript_braceStyle(self.h)

proc defaultColor*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerPostScript_defaultColor(self.h, style))

proc defaultFont*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerPostScript_defaultFont(self.h, style))

proc defaultPaper*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerPostScript_defaultPaper(self.h, style))

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

type QsciLexerPostScriptmetaObjectProc* = proc(self: QsciLexerPostScript): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QsciLexerPostScriptmetacastProc* = proc(self: QsciLexerPostScript, param1: cstring): pointer {.raises: [], gcsafe.}
type QsciLexerPostScriptmetacallProc* = proc(self: QsciLexerPostScript, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QsciLexerPostScriptsetTokenizeProc* = proc(self: QsciLexerPostScript, tokenize: bool): void {.raises: [], gcsafe.}
type QsciLexerPostScriptsetLevelProc* = proc(self: QsciLexerPostScript, level: cint): void {.raises: [], gcsafe.}
type QsciLexerPostScriptsetFoldCompactProc* = proc(self: QsciLexerPostScript, fold: bool): void {.raises: [], gcsafe.}
type QsciLexerPostScriptsetFoldAtElseProc* = proc(self: QsciLexerPostScript, fold: bool): void {.raises: [], gcsafe.}
type QsciLexerPostScriptlanguageProc* = proc(self: QsciLexerPostScript): cstring {.raises: [], gcsafe.}
type QsciLexerPostScriptlexerProc* = proc(self: QsciLexerPostScript): cstring {.raises: [], gcsafe.}
type QsciLexerPostScriptlexerIdProc* = proc(self: QsciLexerPostScript): cint {.raises: [], gcsafe.}
type QsciLexerPostScriptautoCompletionFillupsProc* = proc(self: QsciLexerPostScript): cstring {.raises: [], gcsafe.}
type QsciLexerPostScriptautoCompletionWordSeparatorsProc* = proc(self: QsciLexerPostScript): seq[string] {.raises: [], gcsafe.}
type QsciLexerPostScriptblockEndProc* = proc(self: QsciLexerPostScript, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerPostScriptblockLookbackProc* = proc(self: QsciLexerPostScript): cint {.raises: [], gcsafe.}
type QsciLexerPostScriptblockStartProc* = proc(self: QsciLexerPostScript, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerPostScriptblockStartKeywordProc* = proc(self: QsciLexerPostScript, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerPostScriptbraceStyleProc* = proc(self: QsciLexerPostScript): cint {.raises: [], gcsafe.}
type QsciLexerPostScriptcaseSensitiveProc* = proc(self: QsciLexerPostScript): bool {.raises: [], gcsafe.}
type QsciLexerPostScriptcolorProc* = proc(self: QsciLexerPostScript, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerPostScripteolFillProc* = proc(self: QsciLexerPostScript, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerPostScriptfontProc* = proc(self: QsciLexerPostScript, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerPostScriptindentationGuideViewProc* = proc(self: QsciLexerPostScript): cint {.raises: [], gcsafe.}
type QsciLexerPostScriptkeywordsProc* = proc(self: QsciLexerPostScript, set: cint): cstring {.raises: [], gcsafe.}
type QsciLexerPostScriptdefaultStyleProc* = proc(self: QsciLexerPostScript): cint {.raises: [], gcsafe.}
type QsciLexerPostScriptdescriptionProc* = proc(self: QsciLexerPostScript, style: cint): string {.raises: [], gcsafe.}
type QsciLexerPostScriptpaperProc* = proc(self: QsciLexerPostScript, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerPostScriptdefaultColorProc* = proc(self: QsciLexerPostScript, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerPostScriptdefaultEolFillProc* = proc(self: QsciLexerPostScript, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerPostScriptdefaultFontProc* = proc(self: QsciLexerPostScript, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerPostScriptdefaultPaperProc* = proc(self: QsciLexerPostScript, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerPostScriptsetEditorProc* = proc(self: QsciLexerPostScript, editor: gen_qsciscintilla_types.QsciScintilla): void {.raises: [], gcsafe.}
type QsciLexerPostScriptrefreshPropertiesProc* = proc(self: QsciLexerPostScript): void {.raises: [], gcsafe.}
type QsciLexerPostScriptstyleBitsNeededProc* = proc(self: QsciLexerPostScript): cint {.raises: [], gcsafe.}
type QsciLexerPostScriptwordCharactersProc* = proc(self: QsciLexerPostScript): cstring {.raises: [], gcsafe.}
type QsciLexerPostScriptsetAutoIndentStyleProc* = proc(self: QsciLexerPostScript, autoindentstyle: cint): void {.raises: [], gcsafe.}
type QsciLexerPostScriptsetColorProc* = proc(self: QsciLexerPostScript, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerPostScriptsetEolFillProc* = proc(self: QsciLexerPostScript, eoffill: bool, style: cint): void {.raises: [], gcsafe.}
type QsciLexerPostScriptsetFontProc* = proc(self: QsciLexerPostScript, f: gen_qfont_types.QFont, style: cint): void {.raises: [], gcsafe.}
type QsciLexerPostScriptsetPaperProc* = proc(self: QsciLexerPostScript, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerPostScriptreadPropertiesProc* = proc(self: QsciLexerPostScript, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerPostScriptwritePropertiesProc* = proc(self: QsciLexerPostScript, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerPostScripteventProc* = proc(self: QsciLexerPostScript, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerPostScripteventFilterProc* = proc(self: QsciLexerPostScript, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerPostScripttimerEventProc* = proc(self: QsciLexerPostScript, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QsciLexerPostScriptchildEventProc* = proc(self: QsciLexerPostScript, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QsciLexerPostScriptcustomEventProc* = proc(self: QsciLexerPostScript, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QsciLexerPostScriptconnectNotifyProc* = proc(self: QsciLexerPostScript, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerPostScriptdisconnectNotifyProc* = proc(self: QsciLexerPostScript, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerPostScriptVTable* = object
  vtbl: cQsciLexerPostScriptVTable
  metaObject*: QsciLexerPostScriptmetaObjectProc
  metacast*: QsciLexerPostScriptmetacastProc
  metacall*: QsciLexerPostScriptmetacallProc
  setTokenize*: QsciLexerPostScriptsetTokenizeProc
  setLevel*: QsciLexerPostScriptsetLevelProc
  setFoldCompact*: QsciLexerPostScriptsetFoldCompactProc
  setFoldAtElse*: QsciLexerPostScriptsetFoldAtElseProc
  language*: QsciLexerPostScriptlanguageProc
  lexer*: QsciLexerPostScriptlexerProc
  lexerId*: QsciLexerPostScriptlexerIdProc
  autoCompletionFillups*: QsciLexerPostScriptautoCompletionFillupsProc
  autoCompletionWordSeparators*: QsciLexerPostScriptautoCompletionWordSeparatorsProc
  blockEnd*: QsciLexerPostScriptblockEndProc
  blockLookback*: QsciLexerPostScriptblockLookbackProc
  blockStart*: QsciLexerPostScriptblockStartProc
  blockStartKeyword*: QsciLexerPostScriptblockStartKeywordProc
  braceStyle*: QsciLexerPostScriptbraceStyleProc
  caseSensitive*: QsciLexerPostScriptcaseSensitiveProc
  color*: QsciLexerPostScriptcolorProc
  eolFill*: QsciLexerPostScripteolFillProc
  font*: QsciLexerPostScriptfontProc
  indentationGuideView*: QsciLexerPostScriptindentationGuideViewProc
  keywords*: QsciLexerPostScriptkeywordsProc
  defaultStyle*: QsciLexerPostScriptdefaultStyleProc
  description*: QsciLexerPostScriptdescriptionProc
  paper*: QsciLexerPostScriptpaperProc
  defaultColor*: QsciLexerPostScriptdefaultColorProc
  defaultEolFill*: QsciLexerPostScriptdefaultEolFillProc
  defaultFont*: QsciLexerPostScriptdefaultFontProc
  defaultPaper*: QsciLexerPostScriptdefaultPaperProc
  setEditor*: QsciLexerPostScriptsetEditorProc
  refreshProperties*: QsciLexerPostScriptrefreshPropertiesProc
  styleBitsNeeded*: QsciLexerPostScriptstyleBitsNeededProc
  wordCharacters*: QsciLexerPostScriptwordCharactersProc
  setAutoIndentStyle*: QsciLexerPostScriptsetAutoIndentStyleProc
  setColor*: QsciLexerPostScriptsetColorProc
  setEolFill*: QsciLexerPostScriptsetEolFillProc
  setFont*: QsciLexerPostScriptsetFontProc
  setPaper*: QsciLexerPostScriptsetPaperProc
  readProperties*: QsciLexerPostScriptreadPropertiesProc
  writeProperties*: QsciLexerPostScriptwritePropertiesProc
  event*: QsciLexerPostScripteventProc
  eventFilter*: QsciLexerPostScripteventFilterProc
  timerEvent*: QsciLexerPostScripttimerEventProc
  childEvent*: QsciLexerPostScriptchildEventProc
  customEvent*: QsciLexerPostScriptcustomEventProc
  connectNotify*: QsciLexerPostScriptconnectNotifyProc
  disconnectNotify*: QsciLexerPostScriptdisconnectNotifyProc
proc QsciLexerPostScriptmetaObject*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerPostScript_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQsciLexerPostScript_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPostScriptVTable](vtbl)
  let self = QsciLexerPostScript(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QsciLexerPostScriptmetacast*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, param1: cstring): pointer =
  fcQsciLexerPostScript_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQsciLexerPostScript_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPostScriptVTable](vtbl)
  let self = QsciLexerPostScript(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QsciLexerPostScriptmetacall*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerPostScript_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQsciLexerPostScript_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPostScriptVTable](vtbl)
  let self = QsciLexerPostScript(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QsciLexerPostScriptsetTokenize*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, tokenize: bool): void =
  fcQsciLexerPostScript_virtualbase_setTokenize(self.h, tokenize)

proc miqt_exec_callback_cQsciLexerPostScript_setTokenize(vtbl: pointer, self: pointer, tokenize: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPostScriptVTable](vtbl)
  let self = QsciLexerPostScript(h: self)
  let slotval1 = tokenize
  vtbl[].setTokenize(self, slotval1)

proc QsciLexerPostScriptsetLevel*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, level: cint): void =
  fcQsciLexerPostScript_virtualbase_setLevel(self.h, level)

proc miqt_exec_callback_cQsciLexerPostScript_setLevel(vtbl: pointer, self: pointer, level: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPostScriptVTable](vtbl)
  let self = QsciLexerPostScript(h: self)
  let slotval1 = level
  vtbl[].setLevel(self, slotval1)

proc QsciLexerPostScriptsetFoldCompact*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, fold: bool): void =
  fcQsciLexerPostScript_virtualbase_setFoldCompact(self.h, fold)

proc miqt_exec_callback_cQsciLexerPostScript_setFoldCompact(vtbl: pointer, self: pointer, fold: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPostScriptVTable](vtbl)
  let self = QsciLexerPostScript(h: self)
  let slotval1 = fold
  vtbl[].setFoldCompact(self, slotval1)

proc QsciLexerPostScriptsetFoldAtElse*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, fold: bool): void =
  fcQsciLexerPostScript_virtualbase_setFoldAtElse(self.h, fold)

proc miqt_exec_callback_cQsciLexerPostScript_setFoldAtElse(vtbl: pointer, self: pointer, fold: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPostScriptVTable](vtbl)
  let self = QsciLexerPostScript(h: self)
  let slotval1 = fold
  vtbl[].setFoldAtElse(self, slotval1)

proc miqt_exec_callback_cQsciLexerPostScript_language(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPostScriptVTable](vtbl)
  let self = QsciLexerPostScript(h: self)
  let virtualReturn = vtbl[].language(self)
  virtualReturn

proc QsciLexerPostScriptlexer*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, ): cstring =
  (fcQsciLexerPostScript_virtualbase_lexer(self.h))

proc miqt_exec_callback_cQsciLexerPostScript_lexer(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPostScriptVTable](vtbl)
  let self = QsciLexerPostScript(h: self)
  let virtualReturn = vtbl[].lexer(self)
  virtualReturn

proc QsciLexerPostScriptlexerId*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, ): cint =
  fcQsciLexerPostScript_virtualbase_lexerId(self.h)

proc miqt_exec_callback_cQsciLexerPostScript_lexerId(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPostScriptVTable](vtbl)
  let self = QsciLexerPostScript(h: self)
  let virtualReturn = vtbl[].lexerId(self)
  virtualReturn

proc QsciLexerPostScriptautoCompletionFillups*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, ): cstring =
  (fcQsciLexerPostScript_virtualbase_autoCompletionFillups(self.h))

proc miqt_exec_callback_cQsciLexerPostScript_autoCompletionFillups(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPostScriptVTable](vtbl)
  let self = QsciLexerPostScript(h: self)
  let virtualReturn = vtbl[].autoCompletionFillups(self)
  virtualReturn

proc QsciLexerPostScriptautoCompletionWordSeparators*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, ): seq[string] =
  var v_ma = fcQsciLexerPostScript_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc miqt_exec_callback_cQsciLexerPostScript_autoCompletionWordSeparators(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPostScriptVTable](vtbl)
  let self = QsciLexerPostScript(h: self)
  let virtualReturn = vtbl[].autoCompletionWordSeparators(self)
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QsciLexerPostScriptblockEnd*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, style: ptr cint): cstring =
  (fcQsciLexerPostScript_virtualbase_blockEnd(self.h, style))

proc miqt_exec_callback_cQsciLexerPostScript_blockEnd(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPostScriptVTable](vtbl)
  let self = QsciLexerPostScript(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockEnd(self, slotval1)
  virtualReturn

proc QsciLexerPostScriptblockLookback*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, ): cint =
  fcQsciLexerPostScript_virtualbase_blockLookback(self.h)

proc miqt_exec_callback_cQsciLexerPostScript_blockLookback(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPostScriptVTable](vtbl)
  let self = QsciLexerPostScript(h: self)
  let virtualReturn = vtbl[].blockLookback(self)
  virtualReturn

proc QsciLexerPostScriptblockStart*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, style: ptr cint): cstring =
  (fcQsciLexerPostScript_virtualbase_blockStart(self.h, style))

proc miqt_exec_callback_cQsciLexerPostScript_blockStart(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPostScriptVTable](vtbl)
  let self = QsciLexerPostScript(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStart(self, slotval1)
  virtualReturn

proc QsciLexerPostScriptblockStartKeyword*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, style: ptr cint): cstring =
  (fcQsciLexerPostScript_virtualbase_blockStartKeyword(self.h, style))

proc miqt_exec_callback_cQsciLexerPostScript_blockStartKeyword(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPostScriptVTable](vtbl)
  let self = QsciLexerPostScript(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStartKeyword(self, slotval1)
  virtualReturn

proc QsciLexerPostScriptbraceStyle*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, ): cint =
  fcQsciLexerPostScript_virtualbase_braceStyle(self.h)

proc miqt_exec_callback_cQsciLexerPostScript_braceStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPostScriptVTable](vtbl)
  let self = QsciLexerPostScript(h: self)
  let virtualReturn = vtbl[].braceStyle(self)
  virtualReturn

proc QsciLexerPostScriptcaseSensitive*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, ): bool =
  fcQsciLexerPostScript_virtualbase_caseSensitive(self.h)

proc miqt_exec_callback_cQsciLexerPostScript_caseSensitive(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPostScriptVTable](vtbl)
  let self = QsciLexerPostScript(h: self)
  let virtualReturn = vtbl[].caseSensitive(self)
  virtualReturn

proc QsciLexerPostScriptcolor*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerPostScript_virtualbase_color(self.h, style))

proc miqt_exec_callback_cQsciLexerPostScript_color(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPostScriptVTable](vtbl)
  let self = QsciLexerPostScript(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].color(self, slotval1)
  virtualReturn.h

proc QsciLexerPostScripteolFill*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, style: cint): bool =
  fcQsciLexerPostScript_virtualbase_eolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerPostScript_eolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPostScriptVTable](vtbl)
  let self = QsciLexerPostScript(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].eolFill(self, slotval1)
  virtualReturn

proc QsciLexerPostScriptfont*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerPostScript_virtualbase_font(self.h, style))

proc miqt_exec_callback_cQsciLexerPostScript_font(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPostScriptVTable](vtbl)
  let self = QsciLexerPostScript(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].font(self, slotval1)
  virtualReturn.h

proc QsciLexerPostScriptindentationGuideView*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, ): cint =
  fcQsciLexerPostScript_virtualbase_indentationGuideView(self.h)

proc miqt_exec_callback_cQsciLexerPostScript_indentationGuideView(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPostScriptVTable](vtbl)
  let self = QsciLexerPostScript(h: self)
  let virtualReturn = vtbl[].indentationGuideView(self)
  virtualReturn

proc QsciLexerPostScriptkeywords*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, set: cint): cstring =
  (fcQsciLexerPostScript_virtualbase_keywords(self.h, set))

proc miqt_exec_callback_cQsciLexerPostScript_keywords(vtbl: pointer, self: pointer, set: cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPostScriptVTable](vtbl)
  let self = QsciLexerPostScript(h: self)
  let slotval1 = set
  let virtualReturn = vtbl[].keywords(self, slotval1)
  virtualReturn

proc QsciLexerPostScriptdefaultStyle*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, ): cint =
  fcQsciLexerPostScript_virtualbase_defaultStyle(self.h)

proc miqt_exec_callback_cQsciLexerPostScript_defaultStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPostScriptVTable](vtbl)
  let self = QsciLexerPostScript(h: self)
  let virtualReturn = vtbl[].defaultStyle(self)
  virtualReturn

proc miqt_exec_callback_cQsciLexerPostScript_description(vtbl: pointer, self: pointer, style: cint): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPostScriptVTable](vtbl)
  let self = QsciLexerPostScript(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].description(self, slotval1)
  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))

proc QsciLexerPostScriptpaper*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerPostScript_virtualbase_paper(self.h, style))

proc miqt_exec_callback_cQsciLexerPostScript_paper(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPostScriptVTable](vtbl)
  let self = QsciLexerPostScript(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].paper(self, slotval1)
  virtualReturn.h

proc QsciLexerPostScriptdefaultColor*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerPostScript_virtualbase_defaultColorWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerPostScript_defaultColorWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPostScriptVTable](vtbl)
  let self = QsciLexerPostScript(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultColor(self, slotval1)
  virtualReturn.h

proc QsciLexerPostScriptdefaultEolFill*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, style: cint): bool =
  fcQsciLexerPostScript_virtualbase_defaultEolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerPostScript_defaultEolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPostScriptVTable](vtbl)
  let self = QsciLexerPostScript(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultEolFill(self, slotval1)
  virtualReturn

proc QsciLexerPostScriptdefaultFont*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerPostScript_virtualbase_defaultFontWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerPostScript_defaultFontWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPostScriptVTable](vtbl)
  let self = QsciLexerPostScript(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultFont(self, slotval1)
  virtualReturn.h

proc QsciLexerPostScriptdefaultPaper*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerPostScript_virtualbase_defaultPaperWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerPostScript_defaultPaperWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPostScriptVTable](vtbl)
  let self = QsciLexerPostScript(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultPaper(self, slotval1)
  virtualReturn.h

proc QsciLexerPostScriptsetEditor*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, editor: gen_qsciscintilla_types.QsciScintilla): void =
  fcQsciLexerPostScript_virtualbase_setEditor(self.h, editor.h)

proc miqt_exec_callback_cQsciLexerPostScript_setEditor(vtbl: pointer, self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPostScriptVTable](vtbl)
  let self = QsciLexerPostScript(h: self)
  let slotval1 = gen_qsciscintilla_types.QsciScintilla(h: editor)
  vtbl[].setEditor(self, slotval1)

proc QsciLexerPostScriptrefreshProperties*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, ): void =
  fcQsciLexerPostScript_virtualbase_refreshProperties(self.h)

proc miqt_exec_callback_cQsciLexerPostScript_refreshProperties(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPostScriptVTable](vtbl)
  let self = QsciLexerPostScript(h: self)
  vtbl[].refreshProperties(self)

proc QsciLexerPostScriptstyleBitsNeeded*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, ): cint =
  fcQsciLexerPostScript_virtualbase_styleBitsNeeded(self.h)

proc miqt_exec_callback_cQsciLexerPostScript_styleBitsNeeded(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPostScriptVTable](vtbl)
  let self = QsciLexerPostScript(h: self)
  let virtualReturn = vtbl[].styleBitsNeeded(self)
  virtualReturn

proc QsciLexerPostScriptwordCharacters*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, ): cstring =
  (fcQsciLexerPostScript_virtualbase_wordCharacters(self.h))

proc miqt_exec_callback_cQsciLexerPostScript_wordCharacters(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPostScriptVTable](vtbl)
  let self = QsciLexerPostScript(h: self)
  let virtualReturn = vtbl[].wordCharacters(self)
  virtualReturn

proc QsciLexerPostScriptsetAutoIndentStyle*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, autoindentstyle: cint): void =
  fcQsciLexerPostScript_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

proc miqt_exec_callback_cQsciLexerPostScript_setAutoIndentStyle(vtbl: pointer, self: pointer, autoindentstyle: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPostScriptVTable](vtbl)
  let self = QsciLexerPostScript(h: self)
  let slotval1 = autoindentstyle
  vtbl[].setAutoIndentStyle(self, slotval1)

proc QsciLexerPostScriptsetColor*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerPostScript_virtualbase_setColor(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerPostScript_setColor(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPostScriptVTable](vtbl)
  let self = QsciLexerPostScript(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setColor(self, slotval1, slotval2)

proc QsciLexerPostScriptsetEolFill*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, eoffill: bool, style: cint): void =
  fcQsciLexerPostScript_virtualbase_setEolFill(self.h, eoffill, style)

proc miqt_exec_callback_cQsciLexerPostScript_setEolFill(vtbl: pointer, self: pointer, eoffill: bool, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPostScriptVTable](vtbl)
  let self = QsciLexerPostScript(h: self)
  let slotval1 = eoffill
  let slotval2 = style
  vtbl[].setEolFill(self, slotval1, slotval2)

proc QsciLexerPostScriptsetFont*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, f: gen_qfont_types.QFont, style: cint): void =
  fcQsciLexerPostScript_virtualbase_setFont(self.h, f.h, style)

proc miqt_exec_callback_cQsciLexerPostScript_setFont(vtbl: pointer, self: pointer, f: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPostScriptVTable](vtbl)
  let self = QsciLexerPostScript(h: self)
  let slotval1 = gen_qfont_types.QFont(h: f)
  let slotval2 = style
  vtbl[].setFont(self, slotval1, slotval2)

proc QsciLexerPostScriptsetPaper*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerPostScript_virtualbase_setPaper(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerPostScript_setPaper(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPostScriptVTable](vtbl)
  let self = QsciLexerPostScript(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setPaper(self, slotval1, slotval2)

proc QsciLexerPostScriptreadProperties*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerPostScript_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerPostScript_readProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPostScriptVTable](vtbl)
  let self = QsciLexerPostScript(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].readProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerPostScriptwriteProperties*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerPostScript_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerPostScript_writeProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPostScriptVTable](vtbl)
  let self = QsciLexerPostScript(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].writeProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerPostScriptevent*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerPostScript_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQsciLexerPostScript_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPostScriptVTable](vtbl)
  let self = QsciLexerPostScript(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QsciLexerPostScripteventFilter*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerPostScript_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQsciLexerPostScript_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPostScriptVTable](vtbl)
  let self = QsciLexerPostScript(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerPostScripttimerEvent*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQsciLexerPostScript_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerPostScript_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPostScriptVTable](vtbl)
  let self = QsciLexerPostScript(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QsciLexerPostScriptchildEvent*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, event: gen_qcoreevent_types.QChildEvent): void =
  fcQsciLexerPostScript_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerPostScript_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPostScriptVTable](vtbl)
  let self = QsciLexerPostScript(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QsciLexerPostScriptcustomEvent*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, event: gen_qcoreevent_types.QEvent): void =
  fcQsciLexerPostScript_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerPostScript_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPostScriptVTable](vtbl)
  let self = QsciLexerPostScript(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QsciLexerPostScriptconnectNotify*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerPostScript_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerPostScript_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPostScriptVTable](vtbl)
  let self = QsciLexerPostScript(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QsciLexerPostScriptdisconnectNotify*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerPostScript_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerPostScript_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPostScriptVTable](vtbl)
  let self = QsciLexerPostScript(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc readProperties*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerPostScript_protectedbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc writeProperties*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerPostScript_protectedbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc sender*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQsciLexerPostScript_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, ): cint =
  fcQsciLexerPostScript_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, signal: cstring): cint =
  fcQsciLexerPostScript_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qscilexerpostscript_types.QsciLexerPostScript, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQsciLexerPostScript_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qscilexerpostscript_types.QsciLexerPostScript,
    vtbl: ref QsciLexerPostScriptVTable = nil): gen_qscilexerpostscript_types.QsciLexerPostScript =
  let vtbl = if vtbl == nil: new QsciLexerPostScriptVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerPostScriptVTable, _: ptr cQsciLexerPostScript) {.cdecl.} =
    let vtbl = cast[ref QsciLexerPostScriptVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerPostScript_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerPostScript_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerPostScript_metacall
  if not isNil(vtbl.setTokenize):
    vtbl[].vtbl.setTokenize = miqt_exec_callback_cQsciLexerPostScript_setTokenize
  if not isNil(vtbl.setLevel):
    vtbl[].vtbl.setLevel = miqt_exec_callback_cQsciLexerPostScript_setLevel
  if not isNil(vtbl.setFoldCompact):
    vtbl[].vtbl.setFoldCompact = miqt_exec_callback_cQsciLexerPostScript_setFoldCompact
  if not isNil(vtbl.setFoldAtElse):
    vtbl[].vtbl.setFoldAtElse = miqt_exec_callback_cQsciLexerPostScript_setFoldAtElse
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerPostScript_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerPostScript_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerPostScript_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerPostScript_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerPostScript_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerPostScript_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerPostScript_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerPostScript_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerPostScript_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerPostScript_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerPostScript_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerPostScript_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerPostScript_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerPostScript_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerPostScript_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerPostScript_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerPostScript_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerPostScript_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerPostScript_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerPostScript_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerPostScript_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerPostScript_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerPostScript_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerPostScript_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerPostScript_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerPostScript_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerPostScript_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerPostScript_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerPostScript_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerPostScript_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerPostScript_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerPostScript_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerPostScript_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerPostScript_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerPostScript_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerPostScript_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerPostScript_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerPostScript_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerPostScript_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerPostScript_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerPostScript_disconnectNotify
  gen_qscilexerpostscript_types.QsciLexerPostScript(h: fcQsciLexerPostScript_new(addr(vtbl[]), ))

proc create*(T: type gen_qscilexerpostscript_types.QsciLexerPostScript,
    parent: gen_qobject_types.QObject,
    vtbl: ref QsciLexerPostScriptVTable = nil): gen_qscilexerpostscript_types.QsciLexerPostScript =
  let vtbl = if vtbl == nil: new QsciLexerPostScriptVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerPostScriptVTable, _: ptr cQsciLexerPostScript) {.cdecl.} =
    let vtbl = cast[ref QsciLexerPostScriptVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerPostScript_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerPostScript_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerPostScript_metacall
  if not isNil(vtbl.setTokenize):
    vtbl[].vtbl.setTokenize = miqt_exec_callback_cQsciLexerPostScript_setTokenize
  if not isNil(vtbl.setLevel):
    vtbl[].vtbl.setLevel = miqt_exec_callback_cQsciLexerPostScript_setLevel
  if not isNil(vtbl.setFoldCompact):
    vtbl[].vtbl.setFoldCompact = miqt_exec_callback_cQsciLexerPostScript_setFoldCompact
  if not isNil(vtbl.setFoldAtElse):
    vtbl[].vtbl.setFoldAtElse = miqt_exec_callback_cQsciLexerPostScript_setFoldAtElse
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerPostScript_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerPostScript_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerPostScript_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerPostScript_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerPostScript_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerPostScript_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerPostScript_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerPostScript_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerPostScript_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerPostScript_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerPostScript_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerPostScript_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerPostScript_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerPostScript_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerPostScript_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerPostScript_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerPostScript_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerPostScript_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerPostScript_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerPostScript_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerPostScript_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerPostScript_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerPostScript_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerPostScript_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerPostScript_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerPostScript_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerPostScript_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerPostScript_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerPostScript_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerPostScript_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerPostScript_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerPostScript_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerPostScript_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerPostScript_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerPostScript_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerPostScript_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerPostScript_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerPostScript_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerPostScript_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerPostScript_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerPostScript_disconnectNotify
  gen_qscilexerpostscript_types.QsciLexerPostScript(h: fcQsciLexerPostScript_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qscilexerpostscript_types.QsciLexerPostScript): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerPostScript_staticMetaObject())
proc delete*(self: gen_qscilexerpostscript_types.QsciLexerPostScript) =
  fcQsciLexerPostScript_delete(self.h)
