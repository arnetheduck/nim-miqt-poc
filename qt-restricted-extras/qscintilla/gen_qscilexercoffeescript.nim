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
{.compile("gen_qscilexercoffeescript.cpp", cflags).}


type QsciLexerCoffeeScriptEnumEnum* = distinct cint
template Default*(_: type QsciLexerCoffeeScriptEnumEnum): untyped = 0
template Comment*(_: type QsciLexerCoffeeScriptEnumEnum): untyped = 1
template CommentLine*(_: type QsciLexerCoffeeScriptEnumEnum): untyped = 2
template CommentDoc*(_: type QsciLexerCoffeeScriptEnumEnum): untyped = 3
template Number*(_: type QsciLexerCoffeeScriptEnumEnum): untyped = 4
template Keyword*(_: type QsciLexerCoffeeScriptEnumEnum): untyped = 5
template DoubleQuotedString*(_: type QsciLexerCoffeeScriptEnumEnum): untyped = 6
template SingleQuotedString*(_: type QsciLexerCoffeeScriptEnumEnum): untyped = 7
template UUID*(_: type QsciLexerCoffeeScriptEnumEnum): untyped = 8
template PreProcessor*(_: type QsciLexerCoffeeScriptEnumEnum): untyped = 9
template Operator*(_: type QsciLexerCoffeeScriptEnumEnum): untyped = 10
template Identifier*(_: type QsciLexerCoffeeScriptEnumEnum): untyped = 11
template UnclosedString*(_: type QsciLexerCoffeeScriptEnumEnum): untyped = 12
template VerbatimString*(_: type QsciLexerCoffeeScriptEnumEnum): untyped = 13
template Regex*(_: type QsciLexerCoffeeScriptEnumEnum): untyped = 14
template CommentLineDoc*(_: type QsciLexerCoffeeScriptEnumEnum): untyped = 15
template KeywordSet2*(_: type QsciLexerCoffeeScriptEnumEnum): untyped = 16
template CommentDocKeyword*(_: type QsciLexerCoffeeScriptEnumEnum): untyped = 17
template CommentDocKeywordError*(_: type QsciLexerCoffeeScriptEnumEnum): untyped = 18
template GlobalClass*(_: type QsciLexerCoffeeScriptEnumEnum): untyped = 19
template CommentBlock*(_: type QsciLexerCoffeeScriptEnumEnum): untyped = 22
template BlockRegex*(_: type QsciLexerCoffeeScriptEnumEnum): untyped = 23
template BlockRegexComment*(_: type QsciLexerCoffeeScriptEnumEnum): untyped = 24
template InstanceProperty*(_: type QsciLexerCoffeeScriptEnumEnum): untyped = 25

import gen_qscilexercoffeescript_types
export gen_qscilexercoffeescript_types

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

type cQsciLexerCoffeeScript*{.exportc: "QsciLexerCoffeeScript", incompleteStruct.} = object

proc fcQsciLexerCoffeeScript_metaObject(self: pointer, ): pointer {.importc: "QsciLexerCoffeeScript_metaObject".}
proc fcQsciLexerCoffeeScript_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerCoffeeScript_metacast".}
proc fcQsciLexerCoffeeScript_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerCoffeeScript_metacall".}
proc fcQsciLexerCoffeeScript_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerCoffeeScript_tr".}
proc fcQsciLexerCoffeeScript_trUtf8(s: cstring): struct_miqt_string {.importc: "QsciLexerCoffeeScript_trUtf8".}
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
proc fcQsciLexerCoffeeScript_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerCoffeeScript_trUtf82".}
proc fcQsciLexerCoffeeScript_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerCoffeeScript_trUtf83".}
proc fcQsciLexerCoffeeScript_blockEnd1(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerCoffeeScript_blockEnd1".}
proc fcQsciLexerCoffeeScript_blockStart1(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerCoffeeScript_blockStart1".}
proc fcQsciLexerCoffeeScript_blockStartKeyword1(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerCoffeeScript_blockStartKeyword1".}
type cQsciLexerCoffeeScriptVTable = object
  destructor*: proc(vtbl: ptr cQsciLexerCoffeeScriptVTable, self: ptr cQsciLexerCoffeeScript) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
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
proc fcQsciLexerCoffeeScript_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QsciLexerCoffeeScript_virtualbase_metaObject".}
proc fcQsciLexerCoffeeScript_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerCoffeeScript_virtualbase_metacast".}
proc fcQsciLexerCoffeeScript_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerCoffeeScript_virtualbase_metacall".}
proc fcQsciLexerCoffeeScript_virtualbase_lexer(self: pointer, ): cstring {.importc: "QsciLexerCoffeeScript_virtualbase_lexer".}
proc fcQsciLexerCoffeeScript_virtualbase_lexerId(self: pointer, ): cint {.importc: "QsciLexerCoffeeScript_virtualbase_lexerId".}
proc fcQsciLexerCoffeeScript_virtualbase_autoCompletionFillups(self: pointer, ): cstring {.importc: "QsciLexerCoffeeScript_virtualbase_autoCompletionFillups".}
proc fcQsciLexerCoffeeScript_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array {.importc: "QsciLexerCoffeeScript_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerCoffeeScript_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerCoffeeScript_virtualbase_blockEnd".}
proc fcQsciLexerCoffeeScript_virtualbase_blockLookback(self: pointer, ): cint {.importc: "QsciLexerCoffeeScript_virtualbase_blockLookback".}
proc fcQsciLexerCoffeeScript_virtualbase_blockStart(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerCoffeeScript_virtualbase_blockStart".}
proc fcQsciLexerCoffeeScript_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerCoffeeScript_virtualbase_blockStartKeyword".}
proc fcQsciLexerCoffeeScript_virtualbase_braceStyle(self: pointer, ): cint {.importc: "QsciLexerCoffeeScript_virtualbase_braceStyle".}
proc fcQsciLexerCoffeeScript_virtualbase_caseSensitive(self: pointer, ): bool {.importc: "QsciLexerCoffeeScript_virtualbase_caseSensitive".}
proc fcQsciLexerCoffeeScript_virtualbase_color(self: pointer, style: cint): pointer {.importc: "QsciLexerCoffeeScript_virtualbase_color".}
proc fcQsciLexerCoffeeScript_virtualbase_eolFill(self: pointer, style: cint): bool {.importc: "QsciLexerCoffeeScript_virtualbase_eolFill".}
proc fcQsciLexerCoffeeScript_virtualbase_font(self: pointer, style: cint): pointer {.importc: "QsciLexerCoffeeScript_virtualbase_font".}
proc fcQsciLexerCoffeeScript_virtualbase_indentationGuideView(self: pointer, ): cint {.importc: "QsciLexerCoffeeScript_virtualbase_indentationGuideView".}
proc fcQsciLexerCoffeeScript_virtualbase_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerCoffeeScript_virtualbase_keywords".}
proc fcQsciLexerCoffeeScript_virtualbase_defaultStyle(self: pointer, ): cint {.importc: "QsciLexerCoffeeScript_virtualbase_defaultStyle".}
proc fcQsciLexerCoffeeScript_virtualbase_paper(self: pointer, style: cint): pointer {.importc: "QsciLexerCoffeeScript_virtualbase_paper".}
proc fcQsciLexerCoffeeScript_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerCoffeeScript_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerCoffeeScript_virtualbase_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerCoffeeScript_virtualbase_defaultEolFill".}
proc fcQsciLexerCoffeeScript_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerCoffeeScript_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerCoffeeScript_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerCoffeeScript_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerCoffeeScript_virtualbase_setEditor(self: pointer, editor: pointer): void {.importc: "QsciLexerCoffeeScript_virtualbase_setEditor".}
proc fcQsciLexerCoffeeScript_virtualbase_refreshProperties(self: pointer, ): void {.importc: "QsciLexerCoffeeScript_virtualbase_refreshProperties".}
proc fcQsciLexerCoffeeScript_virtualbase_styleBitsNeeded(self: pointer, ): cint {.importc: "QsciLexerCoffeeScript_virtualbase_styleBitsNeeded".}
proc fcQsciLexerCoffeeScript_virtualbase_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerCoffeeScript_virtualbase_wordCharacters".}
proc fcQsciLexerCoffeeScript_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void {.importc: "QsciLexerCoffeeScript_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerCoffeeScript_virtualbase_setColor(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerCoffeeScript_virtualbase_setColor".}
proc fcQsciLexerCoffeeScript_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void {.importc: "QsciLexerCoffeeScript_virtualbase_setEolFill".}
proc fcQsciLexerCoffeeScript_virtualbase_setFont(self: pointer, f: pointer, style: cint): void {.importc: "QsciLexerCoffeeScript_virtualbase_setFont".}
proc fcQsciLexerCoffeeScript_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerCoffeeScript_virtualbase_setPaper".}
proc fcQsciLexerCoffeeScript_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerCoffeeScript_virtualbase_readProperties".}
proc fcQsciLexerCoffeeScript_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerCoffeeScript_virtualbase_writeProperties".}
proc fcQsciLexerCoffeeScript_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QsciLexerCoffeeScript_virtualbase_event".}
proc fcQsciLexerCoffeeScript_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QsciLexerCoffeeScript_virtualbase_eventFilter".}
proc fcQsciLexerCoffeeScript_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QsciLexerCoffeeScript_virtualbase_timerEvent".}
proc fcQsciLexerCoffeeScript_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QsciLexerCoffeeScript_virtualbase_childEvent".}
proc fcQsciLexerCoffeeScript_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QsciLexerCoffeeScript_virtualbase_customEvent".}
proc fcQsciLexerCoffeeScript_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerCoffeeScript_virtualbase_connectNotify".}
proc fcQsciLexerCoffeeScript_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerCoffeeScript_virtualbase_disconnectNotify".}
proc fcQsciLexerCoffeeScript_protectedbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerCoffeeScript_protectedbase_readProperties".}
proc fcQsciLexerCoffeeScript_protectedbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerCoffeeScript_protectedbase_writeProperties".}
proc fcQsciLexerCoffeeScript_protectedbase_sender(self: pointer, ): pointer {.importc: "QsciLexerCoffeeScript_protectedbase_sender".}
proc fcQsciLexerCoffeeScript_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QsciLexerCoffeeScript_protectedbase_senderSignalIndex".}
proc fcQsciLexerCoffeeScript_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QsciLexerCoffeeScript_protectedbase_receivers".}
proc fcQsciLexerCoffeeScript_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QsciLexerCoffeeScript_protectedbase_isSignalConnected".}
proc fcQsciLexerCoffeeScript_new(vtbl: pointer, ): ptr cQsciLexerCoffeeScript {.importc: "QsciLexerCoffeeScript_new".}
proc fcQsciLexerCoffeeScript_new2(vtbl: pointer, parent: pointer): ptr cQsciLexerCoffeeScript {.importc: "QsciLexerCoffeeScript_new2".}
proc fcQsciLexerCoffeeScript_staticMetaObject(): pointer {.importc: "QsciLexerCoffeeScript_staticMetaObject".}
proc fcQsciLexerCoffeeScript_delete(self: pointer) {.importc: "QsciLexerCoffeeScript_delete".}

proc metaObject*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerCoffeeScript_metaObject(self.h))

proc metacast*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, param1: cstring): pointer =
  fcQsciLexerCoffeeScript_metacast(self.h, param1)

proc metacall*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerCoffeeScript_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, s: cstring): string =
  let v_ms = fcQsciLexerCoffeeScript_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, s: cstring): string =
  let v_ms = fcQsciLexerCoffeeScript_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, ): cstring =
  (fcQsciLexerCoffeeScript_language(self.h))

proc lexer*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, ): cstring =
  (fcQsciLexerCoffeeScript_lexer(self.h))

proc autoCompletionWordSeparators*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, ): seq[string] =
  var v_ma = fcQsciLexerCoffeeScript_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc blockEnd*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, ): cstring =
  (fcQsciLexerCoffeeScript_blockEnd(self.h))

proc blockStart*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, ): cstring =
  (fcQsciLexerCoffeeScript_blockStart(self.h))

proc blockStartKeyword*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, ): cstring =
  (fcQsciLexerCoffeeScript_blockStartKeyword(self.h))

proc braceStyle*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, ): cint =
  fcQsciLexerCoffeeScript_braceStyle(self.h)

proc wordCharacters*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, ): cstring =
  (fcQsciLexerCoffeeScript_wordCharacters(self.h))

proc defaultColor*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerCoffeeScript_defaultColor(self.h, style))

proc defaultEolFill*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, style: cint): bool =
  fcQsciLexerCoffeeScript_defaultEolFill(self.h, style)

proc defaultFont*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerCoffeeScript_defaultFont(self.h, style))

proc defaultPaper*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerCoffeeScript_defaultPaper(self.h, style))

proc keywords*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, set: cint): cstring =
  (fcQsciLexerCoffeeScript_keywords(self.h, set))

proc description*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, style: cint): string =
  let v_ms = fcQsciLexerCoffeeScript_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, ): void =
  fcQsciLexerCoffeeScript_refreshProperties(self.h)

proc dollarsAllowed*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, ): bool =
  fcQsciLexerCoffeeScript_dollarsAllowed(self.h)

proc setDollarsAllowed*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, allowed: bool): void =
  fcQsciLexerCoffeeScript_setDollarsAllowed(self.h, allowed)

proc foldComments*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, ): bool =
  fcQsciLexerCoffeeScript_foldComments(self.h)

proc setFoldComments*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, fold: bool): void =
  fcQsciLexerCoffeeScript_setFoldComments(self.h, fold)

proc foldCompact*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, ): bool =
  fcQsciLexerCoffeeScript_foldCompact(self.h)

proc setFoldCompact*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, fold: bool): void =
  fcQsciLexerCoffeeScript_setFoldCompact(self.h, fold)

proc stylePreprocessor*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, ): bool =
  fcQsciLexerCoffeeScript_stylePreprocessor(self.h)

proc setStylePreprocessor*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, style: bool): void =
  fcQsciLexerCoffeeScript_setStylePreprocessor(self.h, style)

proc tr*(_: type gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerCoffeeScript_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerCoffeeScript_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerCoffeeScript_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerCoffeeScript_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc blockEnd*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, style: ptr cint): cstring =
  (fcQsciLexerCoffeeScript_blockEnd1(self.h, style))

proc blockStart*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, style: ptr cint): cstring =
  (fcQsciLexerCoffeeScript_blockStart1(self.h, style))

proc blockStartKeyword*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, style: ptr cint): cstring =
  (fcQsciLexerCoffeeScript_blockStartKeyword1(self.h, style))

type QsciLexerCoffeeScriptmetaObjectProc* = proc(self: QsciLexerCoffeeScript): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QsciLexerCoffeeScriptmetacastProc* = proc(self: QsciLexerCoffeeScript, param1: cstring): pointer {.raises: [], gcsafe.}
type QsciLexerCoffeeScriptmetacallProc* = proc(self: QsciLexerCoffeeScript, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QsciLexerCoffeeScriptlanguageProc* = proc(self: QsciLexerCoffeeScript): cstring {.raises: [], gcsafe.}
type QsciLexerCoffeeScriptlexerProc* = proc(self: QsciLexerCoffeeScript): cstring {.raises: [], gcsafe.}
type QsciLexerCoffeeScriptlexerIdProc* = proc(self: QsciLexerCoffeeScript): cint {.raises: [], gcsafe.}
type QsciLexerCoffeeScriptautoCompletionFillupsProc* = proc(self: QsciLexerCoffeeScript): cstring {.raises: [], gcsafe.}
type QsciLexerCoffeeScriptautoCompletionWordSeparatorsProc* = proc(self: QsciLexerCoffeeScript): seq[string] {.raises: [], gcsafe.}
type QsciLexerCoffeeScriptblockEndProc* = proc(self: QsciLexerCoffeeScript, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerCoffeeScriptblockLookbackProc* = proc(self: QsciLexerCoffeeScript): cint {.raises: [], gcsafe.}
type QsciLexerCoffeeScriptblockStartProc* = proc(self: QsciLexerCoffeeScript, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerCoffeeScriptblockStartKeywordProc* = proc(self: QsciLexerCoffeeScript, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerCoffeeScriptbraceStyleProc* = proc(self: QsciLexerCoffeeScript): cint {.raises: [], gcsafe.}
type QsciLexerCoffeeScriptcaseSensitiveProc* = proc(self: QsciLexerCoffeeScript): bool {.raises: [], gcsafe.}
type QsciLexerCoffeeScriptcolorProc* = proc(self: QsciLexerCoffeeScript, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerCoffeeScripteolFillProc* = proc(self: QsciLexerCoffeeScript, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerCoffeeScriptfontProc* = proc(self: QsciLexerCoffeeScript, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerCoffeeScriptindentationGuideViewProc* = proc(self: QsciLexerCoffeeScript): cint {.raises: [], gcsafe.}
type QsciLexerCoffeeScriptkeywordsProc* = proc(self: QsciLexerCoffeeScript, set: cint): cstring {.raises: [], gcsafe.}
type QsciLexerCoffeeScriptdefaultStyleProc* = proc(self: QsciLexerCoffeeScript): cint {.raises: [], gcsafe.}
type QsciLexerCoffeeScriptdescriptionProc* = proc(self: QsciLexerCoffeeScript, style: cint): string {.raises: [], gcsafe.}
type QsciLexerCoffeeScriptpaperProc* = proc(self: QsciLexerCoffeeScript, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerCoffeeScriptdefaultColorProc* = proc(self: QsciLexerCoffeeScript, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerCoffeeScriptdefaultEolFillProc* = proc(self: QsciLexerCoffeeScript, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerCoffeeScriptdefaultFontProc* = proc(self: QsciLexerCoffeeScript, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerCoffeeScriptdefaultPaperProc* = proc(self: QsciLexerCoffeeScript, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerCoffeeScriptsetEditorProc* = proc(self: QsciLexerCoffeeScript, editor: gen_qsciscintilla_types.QsciScintilla): void {.raises: [], gcsafe.}
type QsciLexerCoffeeScriptrefreshPropertiesProc* = proc(self: QsciLexerCoffeeScript): void {.raises: [], gcsafe.}
type QsciLexerCoffeeScriptstyleBitsNeededProc* = proc(self: QsciLexerCoffeeScript): cint {.raises: [], gcsafe.}
type QsciLexerCoffeeScriptwordCharactersProc* = proc(self: QsciLexerCoffeeScript): cstring {.raises: [], gcsafe.}
type QsciLexerCoffeeScriptsetAutoIndentStyleProc* = proc(self: QsciLexerCoffeeScript, autoindentstyle: cint): void {.raises: [], gcsafe.}
type QsciLexerCoffeeScriptsetColorProc* = proc(self: QsciLexerCoffeeScript, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerCoffeeScriptsetEolFillProc* = proc(self: QsciLexerCoffeeScript, eoffill: bool, style: cint): void {.raises: [], gcsafe.}
type QsciLexerCoffeeScriptsetFontProc* = proc(self: QsciLexerCoffeeScript, f: gen_qfont_types.QFont, style: cint): void {.raises: [], gcsafe.}
type QsciLexerCoffeeScriptsetPaperProc* = proc(self: QsciLexerCoffeeScript, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerCoffeeScriptreadPropertiesProc* = proc(self: QsciLexerCoffeeScript, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerCoffeeScriptwritePropertiesProc* = proc(self: QsciLexerCoffeeScript, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerCoffeeScripteventProc* = proc(self: QsciLexerCoffeeScript, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerCoffeeScripteventFilterProc* = proc(self: QsciLexerCoffeeScript, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerCoffeeScripttimerEventProc* = proc(self: QsciLexerCoffeeScript, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QsciLexerCoffeeScriptchildEventProc* = proc(self: QsciLexerCoffeeScript, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QsciLexerCoffeeScriptcustomEventProc* = proc(self: QsciLexerCoffeeScript, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QsciLexerCoffeeScriptconnectNotifyProc* = proc(self: QsciLexerCoffeeScript, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerCoffeeScriptdisconnectNotifyProc* = proc(self: QsciLexerCoffeeScript, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerCoffeeScriptVTable* = object
  vtbl: cQsciLexerCoffeeScriptVTable
  metaObject*: QsciLexerCoffeeScriptmetaObjectProc
  metacast*: QsciLexerCoffeeScriptmetacastProc
  metacall*: QsciLexerCoffeeScriptmetacallProc
  language*: QsciLexerCoffeeScriptlanguageProc
  lexer*: QsciLexerCoffeeScriptlexerProc
  lexerId*: QsciLexerCoffeeScriptlexerIdProc
  autoCompletionFillups*: QsciLexerCoffeeScriptautoCompletionFillupsProc
  autoCompletionWordSeparators*: QsciLexerCoffeeScriptautoCompletionWordSeparatorsProc
  blockEnd*: QsciLexerCoffeeScriptblockEndProc
  blockLookback*: QsciLexerCoffeeScriptblockLookbackProc
  blockStart*: QsciLexerCoffeeScriptblockStartProc
  blockStartKeyword*: QsciLexerCoffeeScriptblockStartKeywordProc
  braceStyle*: QsciLexerCoffeeScriptbraceStyleProc
  caseSensitive*: QsciLexerCoffeeScriptcaseSensitiveProc
  color*: QsciLexerCoffeeScriptcolorProc
  eolFill*: QsciLexerCoffeeScripteolFillProc
  font*: QsciLexerCoffeeScriptfontProc
  indentationGuideView*: QsciLexerCoffeeScriptindentationGuideViewProc
  keywords*: QsciLexerCoffeeScriptkeywordsProc
  defaultStyle*: QsciLexerCoffeeScriptdefaultStyleProc
  description*: QsciLexerCoffeeScriptdescriptionProc
  paper*: QsciLexerCoffeeScriptpaperProc
  defaultColor*: QsciLexerCoffeeScriptdefaultColorProc
  defaultEolFill*: QsciLexerCoffeeScriptdefaultEolFillProc
  defaultFont*: QsciLexerCoffeeScriptdefaultFontProc
  defaultPaper*: QsciLexerCoffeeScriptdefaultPaperProc
  setEditor*: QsciLexerCoffeeScriptsetEditorProc
  refreshProperties*: QsciLexerCoffeeScriptrefreshPropertiesProc
  styleBitsNeeded*: QsciLexerCoffeeScriptstyleBitsNeededProc
  wordCharacters*: QsciLexerCoffeeScriptwordCharactersProc
  setAutoIndentStyle*: QsciLexerCoffeeScriptsetAutoIndentStyleProc
  setColor*: QsciLexerCoffeeScriptsetColorProc
  setEolFill*: QsciLexerCoffeeScriptsetEolFillProc
  setFont*: QsciLexerCoffeeScriptsetFontProc
  setPaper*: QsciLexerCoffeeScriptsetPaperProc
  readProperties*: QsciLexerCoffeeScriptreadPropertiesProc
  writeProperties*: QsciLexerCoffeeScriptwritePropertiesProc
  event*: QsciLexerCoffeeScripteventProc
  eventFilter*: QsciLexerCoffeeScripteventFilterProc
  timerEvent*: QsciLexerCoffeeScripttimerEventProc
  childEvent*: QsciLexerCoffeeScriptchildEventProc
  customEvent*: QsciLexerCoffeeScriptcustomEventProc
  connectNotify*: QsciLexerCoffeeScriptconnectNotifyProc
  disconnectNotify*: QsciLexerCoffeeScriptdisconnectNotifyProc
proc QsciLexerCoffeeScriptmetaObject*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerCoffeeScript_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQsciLexerCoffeeScript_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCoffeeScriptVTable](vtbl)
  let self = QsciLexerCoffeeScript(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QsciLexerCoffeeScriptmetacast*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, param1: cstring): pointer =
  fcQsciLexerCoffeeScript_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQsciLexerCoffeeScript_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCoffeeScriptVTable](vtbl)
  let self = QsciLexerCoffeeScript(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QsciLexerCoffeeScriptmetacall*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerCoffeeScript_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQsciLexerCoffeeScript_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCoffeeScriptVTable](vtbl)
  let self = QsciLexerCoffeeScript(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc miqt_exec_callback_cQsciLexerCoffeeScript_language(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCoffeeScriptVTable](vtbl)
  let self = QsciLexerCoffeeScript(h: self)
  let virtualReturn = vtbl[].language(self)
  virtualReturn

proc QsciLexerCoffeeScriptlexer*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, ): cstring =
  (fcQsciLexerCoffeeScript_virtualbase_lexer(self.h))

proc miqt_exec_callback_cQsciLexerCoffeeScript_lexer(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCoffeeScriptVTable](vtbl)
  let self = QsciLexerCoffeeScript(h: self)
  let virtualReturn = vtbl[].lexer(self)
  virtualReturn

proc QsciLexerCoffeeScriptlexerId*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, ): cint =
  fcQsciLexerCoffeeScript_virtualbase_lexerId(self.h)

proc miqt_exec_callback_cQsciLexerCoffeeScript_lexerId(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCoffeeScriptVTable](vtbl)
  let self = QsciLexerCoffeeScript(h: self)
  let virtualReturn = vtbl[].lexerId(self)
  virtualReturn

proc QsciLexerCoffeeScriptautoCompletionFillups*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, ): cstring =
  (fcQsciLexerCoffeeScript_virtualbase_autoCompletionFillups(self.h))

proc miqt_exec_callback_cQsciLexerCoffeeScript_autoCompletionFillups(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCoffeeScriptVTable](vtbl)
  let self = QsciLexerCoffeeScript(h: self)
  let virtualReturn = vtbl[].autoCompletionFillups(self)
  virtualReturn

proc QsciLexerCoffeeScriptautoCompletionWordSeparators*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, ): seq[string] =
  var v_ma = fcQsciLexerCoffeeScript_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc miqt_exec_callback_cQsciLexerCoffeeScript_autoCompletionWordSeparators(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCoffeeScriptVTable](vtbl)
  let self = QsciLexerCoffeeScript(h: self)
  let virtualReturn = vtbl[].autoCompletionWordSeparators(self)
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QsciLexerCoffeeScriptblockEnd*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, style: ptr cint): cstring =
  (fcQsciLexerCoffeeScript_virtualbase_blockEnd(self.h, style))

proc miqt_exec_callback_cQsciLexerCoffeeScript_blockEnd(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCoffeeScriptVTable](vtbl)
  let self = QsciLexerCoffeeScript(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockEnd(self, slotval1)
  virtualReturn

proc QsciLexerCoffeeScriptblockLookback*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, ): cint =
  fcQsciLexerCoffeeScript_virtualbase_blockLookback(self.h)

proc miqt_exec_callback_cQsciLexerCoffeeScript_blockLookback(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCoffeeScriptVTable](vtbl)
  let self = QsciLexerCoffeeScript(h: self)
  let virtualReturn = vtbl[].blockLookback(self)
  virtualReturn

proc QsciLexerCoffeeScriptblockStart*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, style: ptr cint): cstring =
  (fcQsciLexerCoffeeScript_virtualbase_blockStart(self.h, style))

proc miqt_exec_callback_cQsciLexerCoffeeScript_blockStart(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCoffeeScriptVTable](vtbl)
  let self = QsciLexerCoffeeScript(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStart(self, slotval1)
  virtualReturn

proc QsciLexerCoffeeScriptblockStartKeyword*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, style: ptr cint): cstring =
  (fcQsciLexerCoffeeScript_virtualbase_blockStartKeyword(self.h, style))

proc miqt_exec_callback_cQsciLexerCoffeeScript_blockStartKeyword(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCoffeeScriptVTable](vtbl)
  let self = QsciLexerCoffeeScript(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStartKeyword(self, slotval1)
  virtualReturn

proc QsciLexerCoffeeScriptbraceStyle*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, ): cint =
  fcQsciLexerCoffeeScript_virtualbase_braceStyle(self.h)

proc miqt_exec_callback_cQsciLexerCoffeeScript_braceStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCoffeeScriptVTable](vtbl)
  let self = QsciLexerCoffeeScript(h: self)
  let virtualReturn = vtbl[].braceStyle(self)
  virtualReturn

proc QsciLexerCoffeeScriptcaseSensitive*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, ): bool =
  fcQsciLexerCoffeeScript_virtualbase_caseSensitive(self.h)

proc miqt_exec_callback_cQsciLexerCoffeeScript_caseSensitive(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCoffeeScriptVTable](vtbl)
  let self = QsciLexerCoffeeScript(h: self)
  let virtualReturn = vtbl[].caseSensitive(self)
  virtualReturn

proc QsciLexerCoffeeScriptcolor*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerCoffeeScript_virtualbase_color(self.h, style))

proc miqt_exec_callback_cQsciLexerCoffeeScript_color(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCoffeeScriptVTable](vtbl)
  let self = QsciLexerCoffeeScript(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].color(self, slotval1)
  virtualReturn.h

proc QsciLexerCoffeeScripteolFill*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, style: cint): bool =
  fcQsciLexerCoffeeScript_virtualbase_eolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerCoffeeScript_eolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCoffeeScriptVTable](vtbl)
  let self = QsciLexerCoffeeScript(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].eolFill(self, slotval1)
  virtualReturn

proc QsciLexerCoffeeScriptfont*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerCoffeeScript_virtualbase_font(self.h, style))

proc miqt_exec_callback_cQsciLexerCoffeeScript_font(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCoffeeScriptVTable](vtbl)
  let self = QsciLexerCoffeeScript(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].font(self, slotval1)
  virtualReturn.h

proc QsciLexerCoffeeScriptindentationGuideView*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, ): cint =
  fcQsciLexerCoffeeScript_virtualbase_indentationGuideView(self.h)

proc miqt_exec_callback_cQsciLexerCoffeeScript_indentationGuideView(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCoffeeScriptVTable](vtbl)
  let self = QsciLexerCoffeeScript(h: self)
  let virtualReturn = vtbl[].indentationGuideView(self)
  virtualReturn

proc QsciLexerCoffeeScriptkeywords*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, set: cint): cstring =
  (fcQsciLexerCoffeeScript_virtualbase_keywords(self.h, set))

proc miqt_exec_callback_cQsciLexerCoffeeScript_keywords(vtbl: pointer, self: pointer, set: cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCoffeeScriptVTable](vtbl)
  let self = QsciLexerCoffeeScript(h: self)
  let slotval1 = set
  let virtualReturn = vtbl[].keywords(self, slotval1)
  virtualReturn

proc QsciLexerCoffeeScriptdefaultStyle*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, ): cint =
  fcQsciLexerCoffeeScript_virtualbase_defaultStyle(self.h)

proc miqt_exec_callback_cQsciLexerCoffeeScript_defaultStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCoffeeScriptVTable](vtbl)
  let self = QsciLexerCoffeeScript(h: self)
  let virtualReturn = vtbl[].defaultStyle(self)
  virtualReturn

proc miqt_exec_callback_cQsciLexerCoffeeScript_description(vtbl: pointer, self: pointer, style: cint): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCoffeeScriptVTable](vtbl)
  let self = QsciLexerCoffeeScript(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].description(self, slotval1)
  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))

proc QsciLexerCoffeeScriptpaper*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerCoffeeScript_virtualbase_paper(self.h, style))

proc miqt_exec_callback_cQsciLexerCoffeeScript_paper(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCoffeeScriptVTable](vtbl)
  let self = QsciLexerCoffeeScript(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].paper(self, slotval1)
  virtualReturn.h

proc QsciLexerCoffeeScriptdefaultColor*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerCoffeeScript_virtualbase_defaultColorWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerCoffeeScript_defaultColorWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCoffeeScriptVTable](vtbl)
  let self = QsciLexerCoffeeScript(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultColor(self, slotval1)
  virtualReturn.h

proc QsciLexerCoffeeScriptdefaultEolFill*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, style: cint): bool =
  fcQsciLexerCoffeeScript_virtualbase_defaultEolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerCoffeeScript_defaultEolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCoffeeScriptVTable](vtbl)
  let self = QsciLexerCoffeeScript(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultEolFill(self, slotval1)
  virtualReturn

proc QsciLexerCoffeeScriptdefaultFont*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerCoffeeScript_virtualbase_defaultFontWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerCoffeeScript_defaultFontWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCoffeeScriptVTable](vtbl)
  let self = QsciLexerCoffeeScript(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultFont(self, slotval1)
  virtualReturn.h

proc QsciLexerCoffeeScriptdefaultPaper*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerCoffeeScript_virtualbase_defaultPaperWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerCoffeeScript_defaultPaperWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCoffeeScriptVTable](vtbl)
  let self = QsciLexerCoffeeScript(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultPaper(self, slotval1)
  virtualReturn.h

proc QsciLexerCoffeeScriptsetEditor*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, editor: gen_qsciscintilla_types.QsciScintilla): void =
  fcQsciLexerCoffeeScript_virtualbase_setEditor(self.h, editor.h)

proc miqt_exec_callback_cQsciLexerCoffeeScript_setEditor(vtbl: pointer, self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCoffeeScriptVTable](vtbl)
  let self = QsciLexerCoffeeScript(h: self)
  let slotval1 = gen_qsciscintilla_types.QsciScintilla(h: editor)
  vtbl[].setEditor(self, slotval1)

proc QsciLexerCoffeeScriptrefreshProperties*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, ): void =
  fcQsciLexerCoffeeScript_virtualbase_refreshProperties(self.h)

proc miqt_exec_callback_cQsciLexerCoffeeScript_refreshProperties(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCoffeeScriptVTable](vtbl)
  let self = QsciLexerCoffeeScript(h: self)
  vtbl[].refreshProperties(self)

proc QsciLexerCoffeeScriptstyleBitsNeeded*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, ): cint =
  fcQsciLexerCoffeeScript_virtualbase_styleBitsNeeded(self.h)

proc miqt_exec_callback_cQsciLexerCoffeeScript_styleBitsNeeded(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCoffeeScriptVTable](vtbl)
  let self = QsciLexerCoffeeScript(h: self)
  let virtualReturn = vtbl[].styleBitsNeeded(self)
  virtualReturn

proc QsciLexerCoffeeScriptwordCharacters*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, ): cstring =
  (fcQsciLexerCoffeeScript_virtualbase_wordCharacters(self.h))

proc miqt_exec_callback_cQsciLexerCoffeeScript_wordCharacters(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCoffeeScriptVTable](vtbl)
  let self = QsciLexerCoffeeScript(h: self)
  let virtualReturn = vtbl[].wordCharacters(self)
  virtualReturn

proc QsciLexerCoffeeScriptsetAutoIndentStyle*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, autoindentstyle: cint): void =
  fcQsciLexerCoffeeScript_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

proc miqt_exec_callback_cQsciLexerCoffeeScript_setAutoIndentStyle(vtbl: pointer, self: pointer, autoindentstyle: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCoffeeScriptVTable](vtbl)
  let self = QsciLexerCoffeeScript(h: self)
  let slotval1 = autoindentstyle
  vtbl[].setAutoIndentStyle(self, slotval1)

proc QsciLexerCoffeeScriptsetColor*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerCoffeeScript_virtualbase_setColor(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerCoffeeScript_setColor(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCoffeeScriptVTable](vtbl)
  let self = QsciLexerCoffeeScript(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setColor(self, slotval1, slotval2)

proc QsciLexerCoffeeScriptsetEolFill*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, eoffill: bool, style: cint): void =
  fcQsciLexerCoffeeScript_virtualbase_setEolFill(self.h, eoffill, style)

proc miqt_exec_callback_cQsciLexerCoffeeScript_setEolFill(vtbl: pointer, self: pointer, eoffill: bool, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCoffeeScriptVTable](vtbl)
  let self = QsciLexerCoffeeScript(h: self)
  let slotval1 = eoffill
  let slotval2 = style
  vtbl[].setEolFill(self, slotval1, slotval2)

proc QsciLexerCoffeeScriptsetFont*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, f: gen_qfont_types.QFont, style: cint): void =
  fcQsciLexerCoffeeScript_virtualbase_setFont(self.h, f.h, style)

proc miqt_exec_callback_cQsciLexerCoffeeScript_setFont(vtbl: pointer, self: pointer, f: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCoffeeScriptVTable](vtbl)
  let self = QsciLexerCoffeeScript(h: self)
  let slotval1 = gen_qfont_types.QFont(h: f)
  let slotval2 = style
  vtbl[].setFont(self, slotval1, slotval2)

proc QsciLexerCoffeeScriptsetPaper*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerCoffeeScript_virtualbase_setPaper(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerCoffeeScript_setPaper(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCoffeeScriptVTable](vtbl)
  let self = QsciLexerCoffeeScript(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setPaper(self, slotval1, slotval2)

proc QsciLexerCoffeeScriptreadProperties*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerCoffeeScript_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerCoffeeScript_readProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCoffeeScriptVTable](vtbl)
  let self = QsciLexerCoffeeScript(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].readProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerCoffeeScriptwriteProperties*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerCoffeeScript_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerCoffeeScript_writeProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCoffeeScriptVTable](vtbl)
  let self = QsciLexerCoffeeScript(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].writeProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerCoffeeScriptevent*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerCoffeeScript_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQsciLexerCoffeeScript_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCoffeeScriptVTable](vtbl)
  let self = QsciLexerCoffeeScript(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QsciLexerCoffeeScripteventFilter*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerCoffeeScript_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQsciLexerCoffeeScript_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCoffeeScriptVTable](vtbl)
  let self = QsciLexerCoffeeScript(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerCoffeeScripttimerEvent*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQsciLexerCoffeeScript_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerCoffeeScript_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCoffeeScriptVTable](vtbl)
  let self = QsciLexerCoffeeScript(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QsciLexerCoffeeScriptchildEvent*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, event: gen_qcoreevent_types.QChildEvent): void =
  fcQsciLexerCoffeeScript_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerCoffeeScript_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCoffeeScriptVTable](vtbl)
  let self = QsciLexerCoffeeScript(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QsciLexerCoffeeScriptcustomEvent*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, event: gen_qcoreevent_types.QEvent): void =
  fcQsciLexerCoffeeScript_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerCoffeeScript_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCoffeeScriptVTable](vtbl)
  let self = QsciLexerCoffeeScript(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QsciLexerCoffeeScriptconnectNotify*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerCoffeeScript_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerCoffeeScript_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCoffeeScriptVTable](vtbl)
  let self = QsciLexerCoffeeScript(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QsciLexerCoffeeScriptdisconnectNotify*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerCoffeeScript_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerCoffeeScript_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCoffeeScriptVTable](vtbl)
  let self = QsciLexerCoffeeScript(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc readProperties*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerCoffeeScript_protectedbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc writeProperties*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerCoffeeScript_protectedbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc sender*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQsciLexerCoffeeScript_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, ): cint =
  fcQsciLexerCoffeeScript_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, signal: cstring): cint =
  fcQsciLexerCoffeeScript_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQsciLexerCoffeeScript_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qscilexercoffeescript_types.QsciLexerCoffeeScript,
    vtbl: ref QsciLexerCoffeeScriptVTable = nil): gen_qscilexercoffeescript_types.QsciLexerCoffeeScript =
  let vtbl = if vtbl == nil: new QsciLexerCoffeeScriptVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerCoffeeScriptVTable, _: ptr cQsciLexerCoffeeScript) {.cdecl.} =
    let vtbl = cast[ref QsciLexerCoffeeScriptVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerCoffeeScript_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerCoffeeScript_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerCoffeeScript_metacall
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerCoffeeScript_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerCoffeeScript_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerCoffeeScript_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerCoffeeScript_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerCoffeeScript_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerCoffeeScript_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerCoffeeScript_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerCoffeeScript_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerCoffeeScript_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerCoffeeScript_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerCoffeeScript_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerCoffeeScript_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerCoffeeScript_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerCoffeeScript_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerCoffeeScript_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerCoffeeScript_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerCoffeeScript_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerCoffeeScript_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerCoffeeScript_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerCoffeeScript_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerCoffeeScript_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerCoffeeScript_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerCoffeeScript_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerCoffeeScript_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerCoffeeScript_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerCoffeeScript_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerCoffeeScript_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerCoffeeScript_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerCoffeeScript_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerCoffeeScript_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerCoffeeScript_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerCoffeeScript_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerCoffeeScript_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerCoffeeScript_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerCoffeeScript_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerCoffeeScript_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerCoffeeScript_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerCoffeeScript_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerCoffeeScript_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerCoffeeScript_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerCoffeeScript_disconnectNotify
  gen_qscilexercoffeescript_types.QsciLexerCoffeeScript(h: fcQsciLexerCoffeeScript_new(addr(vtbl[]), ))

proc create*(T: type gen_qscilexercoffeescript_types.QsciLexerCoffeeScript,
    parent: gen_qobject_types.QObject,
    vtbl: ref QsciLexerCoffeeScriptVTable = nil): gen_qscilexercoffeescript_types.QsciLexerCoffeeScript =
  let vtbl = if vtbl == nil: new QsciLexerCoffeeScriptVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerCoffeeScriptVTable, _: ptr cQsciLexerCoffeeScript) {.cdecl.} =
    let vtbl = cast[ref QsciLexerCoffeeScriptVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerCoffeeScript_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerCoffeeScript_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerCoffeeScript_metacall
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerCoffeeScript_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerCoffeeScript_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerCoffeeScript_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerCoffeeScript_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerCoffeeScript_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerCoffeeScript_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerCoffeeScript_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerCoffeeScript_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerCoffeeScript_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerCoffeeScript_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerCoffeeScript_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerCoffeeScript_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerCoffeeScript_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerCoffeeScript_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerCoffeeScript_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerCoffeeScript_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerCoffeeScript_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerCoffeeScript_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerCoffeeScript_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerCoffeeScript_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerCoffeeScript_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerCoffeeScript_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerCoffeeScript_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerCoffeeScript_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerCoffeeScript_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerCoffeeScript_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerCoffeeScript_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerCoffeeScript_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerCoffeeScript_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerCoffeeScript_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerCoffeeScript_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerCoffeeScript_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerCoffeeScript_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerCoffeeScript_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerCoffeeScript_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerCoffeeScript_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerCoffeeScript_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerCoffeeScript_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerCoffeeScript_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerCoffeeScript_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerCoffeeScript_disconnectNotify
  gen_qscilexercoffeescript_types.QsciLexerCoffeeScript(h: fcQsciLexerCoffeeScript_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qscilexercoffeescript_types.QsciLexerCoffeeScript): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerCoffeeScript_staticMetaObject())
proc delete*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript) =
  fcQsciLexerCoffeeScript_delete(self.h)
