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
proc fQsciLexerCoffeeScript_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QsciLexerCoffeeScript_virtualbase_metaObject".}
proc fcQsciLexerCoffeeScript_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QsciLexerCoffeeScript_override_virtual_metaObject".}
proc fQsciLexerCoffeeScript_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QsciLexerCoffeeScript_virtualbase_metacast".}
proc fcQsciLexerCoffeeScript_override_virtual_metacast(self: pointer, slot: int) {.importc: "QsciLexerCoffeeScript_override_virtual_metacast".}
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


func init*(T: type gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, h: ptr cQsciLexerCoffeeScript): gen_qscilexercoffeescript_types.QsciLexerCoffeeScript =
  T(h: h)
proc create*(T: type gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, ): gen_qscilexercoffeescript_types.QsciLexerCoffeeScript =
  gen_qscilexercoffeescript_types.QsciLexerCoffeeScript.init(fcQsciLexerCoffeeScript_new())

proc create*(T: type gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, parent: gen_qobject.QObject): gen_qscilexercoffeescript_types.QsciLexerCoffeeScript =
  gen_qscilexercoffeescript_types.QsciLexerCoffeeScript.init(fcQsciLexerCoffeeScript_new2(parent.h))

proc metaObject*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, ): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerCoffeeScript_metaObject(self.h))

proc metacast*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, param1: cstring): pointer =
  fcQsciLexerCoffeeScript_metacast(self.h, param1)

proc metacall*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerCoffeeScript_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, s: cstring): string =
  let v_ms = fcQsciLexerCoffeeScript_tr(s)
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

proc defaultColor*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fcQsciLexerCoffeeScript_defaultColor(self.h, style))

proc defaultEolFill*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, style: cint): bool =
  fcQsciLexerCoffeeScript_defaultEolFill(self.h, style)

proc defaultFont*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fcQsciLexerCoffeeScript_defaultFont(self.h, style))

proc defaultPaper*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fcQsciLexerCoffeeScript_defaultPaper(self.h, style))

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

proc blockEnd*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, style: ptr cint): cstring =
  (fcQsciLexerCoffeeScript_blockEnd1(self.h, style))

proc blockStart*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, style: ptr cint): cstring =
  (fcQsciLexerCoffeeScript_blockStart1(self.h, style))

proc blockStartKeyword*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, style: ptr cint): cstring =
  (fcQsciLexerCoffeeScript_blockStartKeyword1(self.h, style))

proc QsciLexerCoffeeScriptmetaObject*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, ): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fQsciLexerCoffeeScript_virtualbase_metaObject(self.h))

type QsciLexerCoffeeScriptmetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, slot: QsciLexerCoffeeScriptmetaObjectProc) =
  # TODO check subclass
  var tmp = new QsciLexerCoffeeScriptmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_metaObject(self: ptr cQsciLexerCoffeeScript, slot: int): pointer {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_metaObject ".} =
  var nimfunc = cast[ptr QsciLexerCoffeeScriptmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QsciLexerCoffeeScriptmetacast*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, param1: cstring): pointer =
  fQsciLexerCoffeeScript_virtualbase_metacast(self.h, param1)

type QsciLexerCoffeeScriptmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, slot: QsciLexerCoffeeScriptmetacastProc) =
  # TODO check subclass
  var tmp = new QsciLexerCoffeeScriptmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_metacast(self: ptr cQsciLexerCoffeeScript, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_metacast ".} =
  var nimfunc = cast[ptr QsciLexerCoffeeScriptmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerCoffeeScriptmetacall*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, param1: cint, param2: cint, param3: pointer): cint =
  fQsciLexerCoffeeScript_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerCoffeeScriptmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, slot: QsciLexerCoffeeScriptmetacallProc) =
  # TODO check subclass
  var tmp = new QsciLexerCoffeeScriptmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_metacall(self: ptr cQsciLexerCoffeeScript, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_metacall ".} =
  var nimfunc = cast[ptr QsciLexerCoffeeScriptmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
type QsciLexerCoffeeScriptlanguageProc* = proc(): cstring
proc onlanguage*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, slot: QsciLexerCoffeeScriptlanguageProc) =
  # TODO check subclass
  var tmp = new QsciLexerCoffeeScriptlanguageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_language(self: ptr cQsciLexerCoffeeScript, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_language ".} =
  var nimfunc = cast[ptr QsciLexerCoffeeScriptlanguageProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerCoffeeScriptlexer*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, ): cstring =
  (fQsciLexerCoffeeScript_virtualbase_lexer(self.h))

type QsciLexerCoffeeScriptlexerProc* = proc(): cstring
proc onlexer*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, slot: QsciLexerCoffeeScriptlexerProc) =
  # TODO check subclass
  var tmp = new QsciLexerCoffeeScriptlexerProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_lexer(self: ptr cQsciLexerCoffeeScript, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_lexer ".} =
  var nimfunc = cast[ptr QsciLexerCoffeeScriptlexerProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerCoffeeScriptlexerId*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, ): cint =
  fQsciLexerCoffeeScript_virtualbase_lexerId(self.h)

type QsciLexerCoffeeScriptlexerIdProc* = proc(): cint
proc onlexerId*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, slot: QsciLexerCoffeeScriptlexerIdProc) =
  # TODO check subclass
  var tmp = new QsciLexerCoffeeScriptlexerIdProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_lexerId(self: ptr cQsciLexerCoffeeScript, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_lexerId ".} =
  var nimfunc = cast[ptr QsciLexerCoffeeScriptlexerIdProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerCoffeeScriptautoCompletionFillups*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, ): cstring =
  (fQsciLexerCoffeeScript_virtualbase_autoCompletionFillups(self.h))

type QsciLexerCoffeeScriptautoCompletionFillupsProc* = proc(): cstring
proc onautoCompletionFillups*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, slot: QsciLexerCoffeeScriptautoCompletionFillupsProc) =
  # TODO check subclass
  var tmp = new QsciLexerCoffeeScriptautoCompletionFillupsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_autoCompletionFillups(self: ptr cQsciLexerCoffeeScript, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_autoCompletionFillups ".} =
  var nimfunc = cast[ptr QsciLexerCoffeeScriptautoCompletionFillupsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerCoffeeScriptautoCompletionWordSeparators*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, ): seq[string] =
  var v_ma = fQsciLexerCoffeeScript_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerCoffeeScriptautoCompletionWordSeparatorsProc* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, slot: QsciLexerCoffeeScriptautoCompletionWordSeparatorsProc) =
  # TODO check subclass
  var tmp = new QsciLexerCoffeeScriptautoCompletionWordSeparatorsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_autoCompletionWordSeparators(self: ptr cQsciLexerCoffeeScript, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_autoCompletionWordSeparators ".} =
  var nimfunc = cast[ptr QsciLexerCoffeeScriptautoCompletionWordSeparatorsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QsciLexerCoffeeScriptblockEnd*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, style: ptr cint): cstring =
  (fQsciLexerCoffeeScript_virtualbase_blockEnd(self.h, style))

type QsciLexerCoffeeScriptblockEndProc* = proc(style: ptr cint): cstring
proc onblockEnd*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, slot: QsciLexerCoffeeScriptblockEndProc) =
  # TODO check subclass
  var tmp = new QsciLexerCoffeeScriptblockEndProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_blockEnd(self: ptr cQsciLexerCoffeeScript, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_blockEnd ".} =
  var nimfunc = cast[ptr QsciLexerCoffeeScriptblockEndProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerCoffeeScriptblockLookback*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, ): cint =
  fQsciLexerCoffeeScript_virtualbase_blockLookback(self.h)

type QsciLexerCoffeeScriptblockLookbackProc* = proc(): cint
proc onblockLookback*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, slot: QsciLexerCoffeeScriptblockLookbackProc) =
  # TODO check subclass
  var tmp = new QsciLexerCoffeeScriptblockLookbackProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_blockLookback(self: ptr cQsciLexerCoffeeScript, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_blockLookback ".} =
  var nimfunc = cast[ptr QsciLexerCoffeeScriptblockLookbackProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerCoffeeScriptblockStart*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, style: ptr cint): cstring =
  (fQsciLexerCoffeeScript_virtualbase_blockStart(self.h, style))

type QsciLexerCoffeeScriptblockStartProc* = proc(style: ptr cint): cstring
proc onblockStart*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, slot: QsciLexerCoffeeScriptblockStartProc) =
  # TODO check subclass
  var tmp = new QsciLexerCoffeeScriptblockStartProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_blockStart(self: ptr cQsciLexerCoffeeScript, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_blockStart ".} =
  var nimfunc = cast[ptr QsciLexerCoffeeScriptblockStartProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerCoffeeScriptblockStartKeyword*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, style: ptr cint): cstring =
  (fQsciLexerCoffeeScript_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerCoffeeScriptblockStartKeywordProc* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, slot: QsciLexerCoffeeScriptblockStartKeywordProc) =
  # TODO check subclass
  var tmp = new QsciLexerCoffeeScriptblockStartKeywordProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_blockStartKeyword(self: ptr cQsciLexerCoffeeScript, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_blockStartKeyword ".} =
  var nimfunc = cast[ptr QsciLexerCoffeeScriptblockStartKeywordProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerCoffeeScriptbraceStyle*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, ): cint =
  fQsciLexerCoffeeScript_virtualbase_braceStyle(self.h)

type QsciLexerCoffeeScriptbraceStyleProc* = proc(): cint
proc onbraceStyle*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, slot: QsciLexerCoffeeScriptbraceStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerCoffeeScriptbraceStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_braceStyle(self: ptr cQsciLexerCoffeeScript, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_braceStyle ".} =
  var nimfunc = cast[ptr QsciLexerCoffeeScriptbraceStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerCoffeeScriptcaseSensitive*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, ): bool =
  fQsciLexerCoffeeScript_virtualbase_caseSensitive(self.h)

type QsciLexerCoffeeScriptcaseSensitiveProc* = proc(): bool
proc oncaseSensitive*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, slot: QsciLexerCoffeeScriptcaseSensitiveProc) =
  # TODO check subclass
  var tmp = new QsciLexerCoffeeScriptcaseSensitiveProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_caseSensitive(self: ptr cQsciLexerCoffeeScript, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_caseSensitive ".} =
  var nimfunc = cast[ptr QsciLexerCoffeeScriptcaseSensitiveProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerCoffeeScriptcolor*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerCoffeeScript_virtualbase_color(self.h, style))

type QsciLexerCoffeeScriptcolorProc* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, slot: QsciLexerCoffeeScriptcolorProc) =
  # TODO check subclass
  var tmp = new QsciLexerCoffeeScriptcolorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_color(self: ptr cQsciLexerCoffeeScript, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_color ".} =
  var nimfunc = cast[ptr QsciLexerCoffeeScriptcolorProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerCoffeeScripteolFill*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, style: cint): bool =
  fQsciLexerCoffeeScript_virtualbase_eolFill(self.h, style)

type QsciLexerCoffeeScripteolFillProc* = proc(style: cint): bool
proc oneolFill*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, slot: QsciLexerCoffeeScripteolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerCoffeeScripteolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_eolFill(self: ptr cQsciLexerCoffeeScript, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_eolFill ".} =
  var nimfunc = cast[ptr QsciLexerCoffeeScripteolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerCoffeeScriptfont*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fQsciLexerCoffeeScript_virtualbase_font(self.h, style))

type QsciLexerCoffeeScriptfontProc* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, slot: QsciLexerCoffeeScriptfontProc) =
  # TODO check subclass
  var tmp = new QsciLexerCoffeeScriptfontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_font(self: ptr cQsciLexerCoffeeScript, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_font ".} =
  var nimfunc = cast[ptr QsciLexerCoffeeScriptfontProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerCoffeeScriptindentationGuideView*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, ): cint =
  fQsciLexerCoffeeScript_virtualbase_indentationGuideView(self.h)

type QsciLexerCoffeeScriptindentationGuideViewProc* = proc(): cint
proc onindentationGuideView*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, slot: QsciLexerCoffeeScriptindentationGuideViewProc) =
  # TODO check subclass
  var tmp = new QsciLexerCoffeeScriptindentationGuideViewProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_indentationGuideView(self: ptr cQsciLexerCoffeeScript, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_indentationGuideView ".} =
  var nimfunc = cast[ptr QsciLexerCoffeeScriptindentationGuideViewProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerCoffeeScriptkeywords*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, set: cint): cstring =
  (fQsciLexerCoffeeScript_virtualbase_keywords(self.h, set))

type QsciLexerCoffeeScriptkeywordsProc* = proc(set: cint): cstring
proc onkeywords*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, slot: QsciLexerCoffeeScriptkeywordsProc) =
  # TODO check subclass
  var tmp = new QsciLexerCoffeeScriptkeywordsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_keywords(self: ptr cQsciLexerCoffeeScript, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_keywords ".} =
  var nimfunc = cast[ptr QsciLexerCoffeeScriptkeywordsProc](cast[pointer](slot))
  let slotval1 = set


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerCoffeeScriptdefaultStyle*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, ): cint =
  fQsciLexerCoffeeScript_virtualbase_defaultStyle(self.h)

type QsciLexerCoffeeScriptdefaultStyleProc* = proc(): cint
proc ondefaultStyle*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, slot: QsciLexerCoffeeScriptdefaultStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerCoffeeScriptdefaultStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_defaultStyle(self: ptr cQsciLexerCoffeeScript, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_defaultStyle ".} =
  var nimfunc = cast[ptr QsciLexerCoffeeScriptdefaultStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QsciLexerCoffeeScriptdescriptionProc* = proc(style: cint): string
proc ondescription*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, slot: QsciLexerCoffeeScriptdescriptionProc) =
  # TODO check subclass
  var tmp = new QsciLexerCoffeeScriptdescriptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_description(self: ptr cQsciLexerCoffeeScript, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_description ".} =
  var nimfunc = cast[ptr QsciLexerCoffeeScriptdescriptionProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc QsciLexerCoffeeScriptpaper*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerCoffeeScript_virtualbase_paper(self.h, style))

type QsciLexerCoffeeScriptpaperProc* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, slot: QsciLexerCoffeeScriptpaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerCoffeeScriptpaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_paper(self: ptr cQsciLexerCoffeeScript, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_paper ".} =
  var nimfunc = cast[ptr QsciLexerCoffeeScriptpaperProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerCoffeeScriptdefaultColor*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerCoffeeScript_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerCoffeeScriptdefaultColorWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColor*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, slot: QsciLexerCoffeeScriptdefaultColorWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerCoffeeScriptdefaultColorWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_defaultColorWithStyle(self: ptr cQsciLexerCoffeeScript, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_defaultColorWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerCoffeeScriptdefaultColorWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerCoffeeScriptdefaultEolFill*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, style: cint): bool =
  fQsciLexerCoffeeScript_virtualbase_defaultEolFill(self.h, style)

type QsciLexerCoffeeScriptdefaultEolFillProc* = proc(style: cint): bool
proc ondefaultEolFill*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, slot: QsciLexerCoffeeScriptdefaultEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerCoffeeScriptdefaultEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_defaultEolFill(self: ptr cQsciLexerCoffeeScript, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_defaultEolFill ".} =
  var nimfunc = cast[ptr QsciLexerCoffeeScriptdefaultEolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerCoffeeScriptdefaultFont*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fQsciLexerCoffeeScript_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerCoffeeScriptdefaultFontWithStyleProc* = proc(style: cint): gen_qfont.QFont
proc ondefaultFont*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, slot: QsciLexerCoffeeScriptdefaultFontWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerCoffeeScriptdefaultFontWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_defaultFontWithStyle(self: ptr cQsciLexerCoffeeScript, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_defaultFontWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerCoffeeScriptdefaultFontWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerCoffeeScriptdefaultPaper*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerCoffeeScript_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerCoffeeScriptdefaultPaperWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaper*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, slot: QsciLexerCoffeeScriptdefaultPaperWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerCoffeeScriptdefaultPaperWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_defaultPaperWithStyle(self: ptr cQsciLexerCoffeeScript, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_defaultPaperWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerCoffeeScriptdefaultPaperWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerCoffeeScriptsetEditor*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, editor: gen_qsciscintilla.QsciScintilla): void =
  fQsciLexerCoffeeScript_virtualbase_setEditor(self.h, editor.h)

type QsciLexerCoffeeScriptsetEditorProc* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, slot: QsciLexerCoffeeScriptsetEditorProc) =
  # TODO check subclass
  var tmp = new QsciLexerCoffeeScriptsetEditorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_setEditor(self: ptr cQsciLexerCoffeeScript, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_setEditor ".} =
  var nimfunc = cast[ptr QsciLexerCoffeeScriptsetEditorProc](cast[pointer](slot))
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](slotval1)
proc QsciLexerCoffeeScriptrefreshProperties*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, ): void =
  fQsciLexerCoffeeScript_virtualbase_refreshProperties(self.h)

type QsciLexerCoffeeScriptrefreshPropertiesProc* = proc(): void
proc onrefreshProperties*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, slot: QsciLexerCoffeeScriptrefreshPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerCoffeeScriptrefreshPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_refreshProperties(self: ptr cQsciLexerCoffeeScript, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_refreshProperties ".} =
  var nimfunc = cast[ptr QsciLexerCoffeeScriptrefreshPropertiesProc](cast[pointer](slot))

  nimfunc[]()
proc QsciLexerCoffeeScriptstyleBitsNeeded*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, ): cint =
  fQsciLexerCoffeeScript_virtualbase_styleBitsNeeded(self.h)

type QsciLexerCoffeeScriptstyleBitsNeededProc* = proc(): cint
proc onstyleBitsNeeded*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, slot: QsciLexerCoffeeScriptstyleBitsNeededProc) =
  # TODO check subclass
  var tmp = new QsciLexerCoffeeScriptstyleBitsNeededProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_styleBitsNeeded(self: ptr cQsciLexerCoffeeScript, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_styleBitsNeeded ".} =
  var nimfunc = cast[ptr QsciLexerCoffeeScriptstyleBitsNeededProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerCoffeeScriptwordCharacters*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, ): cstring =
  (fQsciLexerCoffeeScript_virtualbase_wordCharacters(self.h))

type QsciLexerCoffeeScriptwordCharactersProc* = proc(): cstring
proc onwordCharacters*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, slot: QsciLexerCoffeeScriptwordCharactersProc) =
  # TODO check subclass
  var tmp = new QsciLexerCoffeeScriptwordCharactersProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_wordCharacters(self: ptr cQsciLexerCoffeeScript, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_wordCharacters ".} =
  var nimfunc = cast[ptr QsciLexerCoffeeScriptwordCharactersProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerCoffeeScriptsetAutoIndentStyle*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, autoindentstyle: cint): void =
  fQsciLexerCoffeeScript_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerCoffeeScriptsetAutoIndentStyleProc* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, slot: QsciLexerCoffeeScriptsetAutoIndentStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerCoffeeScriptsetAutoIndentStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_setAutoIndentStyle(self: ptr cQsciLexerCoffeeScript, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_setAutoIndentStyle ".} =
  var nimfunc = cast[ptr QsciLexerCoffeeScriptsetAutoIndentStyleProc](cast[pointer](slot))
  let slotval1 = autoindentstyle


  nimfunc[](slotval1)
proc QsciLexerCoffeeScriptsetColor*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, c: gen_qcolor.QColor, style: cint): void =
  fQsciLexerCoffeeScript_virtualbase_setColor(self.h, c.h, style)

type QsciLexerCoffeeScriptsetColorProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, slot: QsciLexerCoffeeScriptsetColorProc) =
  # TODO check subclass
  var tmp = new QsciLexerCoffeeScriptsetColorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_setColor(self: ptr cQsciLexerCoffeeScript, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_setColor ".} =
  var nimfunc = cast[ptr QsciLexerCoffeeScriptsetColorProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerCoffeeScriptsetEolFill*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, eoffill: bool, style: cint): void =
  fQsciLexerCoffeeScript_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerCoffeeScriptsetEolFillProc* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, slot: QsciLexerCoffeeScriptsetEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerCoffeeScriptsetEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_setEolFill(self: ptr cQsciLexerCoffeeScript, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_setEolFill ".} =
  var nimfunc = cast[ptr QsciLexerCoffeeScriptsetEolFillProc](cast[pointer](slot))
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerCoffeeScriptsetFont*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, f: gen_qfont.QFont, style: cint): void =
  fQsciLexerCoffeeScript_virtualbase_setFont(self.h, f.h, style)

type QsciLexerCoffeeScriptsetFontProc* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, slot: QsciLexerCoffeeScriptsetFontProc) =
  # TODO check subclass
  var tmp = new QsciLexerCoffeeScriptsetFontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_setFont(self: ptr cQsciLexerCoffeeScript, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_setFont ".} =
  var nimfunc = cast[ptr QsciLexerCoffeeScriptsetFontProc](cast[pointer](slot))
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerCoffeeScriptsetPaper*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, c: gen_qcolor.QColor, style: cint): void =
  fQsciLexerCoffeeScript_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerCoffeeScriptsetPaperProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, slot: QsciLexerCoffeeScriptsetPaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerCoffeeScriptsetPaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_setPaper(self: ptr cQsciLexerCoffeeScript, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_setPaper ".} =
  var nimfunc = cast[ptr QsciLexerCoffeeScriptsetPaperProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerCoffeeScriptreadProperties*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, qs: gen_qsettings.QSettings, prefix: string): bool =
  fQsciLexerCoffeeScript_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerCoffeeScriptreadPropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, slot: QsciLexerCoffeeScriptreadPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerCoffeeScriptreadPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_readProperties(self: ptr cQsciLexerCoffeeScript, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_readProperties ".} =
  var nimfunc = cast[ptr QsciLexerCoffeeScriptreadPropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerCoffeeScriptwriteProperties*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, qs: gen_qsettings.QSettings, prefix: string): bool =
  fQsciLexerCoffeeScript_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerCoffeeScriptwritePropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, slot: QsciLexerCoffeeScriptwritePropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerCoffeeScriptwritePropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_writeProperties(self: ptr cQsciLexerCoffeeScript, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_writeProperties ".} =
  var nimfunc = cast[ptr QsciLexerCoffeeScriptwritePropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerCoffeeScriptevent*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, event: gen_qcoreevent.QEvent): bool =
  fQsciLexerCoffeeScript_virtualbase_event(self.h, event.h)

type QsciLexerCoffeeScripteventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, slot: QsciLexerCoffeeScripteventProc) =
  # TODO check subclass
  var tmp = new QsciLexerCoffeeScripteventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_event(self: ptr cQsciLexerCoffeeScript, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_event ".} =
  var nimfunc = cast[ptr QsciLexerCoffeeScripteventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerCoffeeScripteventFilter*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =
  fQsciLexerCoffeeScript_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerCoffeeScripteventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, slot: QsciLexerCoffeeScripteventFilterProc) =
  # TODO check subclass
  var tmp = new QsciLexerCoffeeScripteventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_eventFilter(self: ptr cQsciLexerCoffeeScript, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_eventFilter ".} =
  var nimfunc = cast[ptr QsciLexerCoffeeScripteventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerCoffeeScripttimerEvent*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, event: gen_qcoreevent.QTimerEvent): void =
  fQsciLexerCoffeeScript_virtualbase_timerEvent(self.h, event.h)

type QsciLexerCoffeeScripttimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, slot: QsciLexerCoffeeScripttimerEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerCoffeeScripttimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_timerEvent(self: ptr cQsciLexerCoffeeScript, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_timerEvent ".} =
  var nimfunc = cast[ptr QsciLexerCoffeeScripttimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerCoffeeScriptchildEvent*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, event: gen_qcoreevent.QChildEvent): void =
  fQsciLexerCoffeeScript_virtualbase_childEvent(self.h, event.h)

type QsciLexerCoffeeScriptchildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, slot: QsciLexerCoffeeScriptchildEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerCoffeeScriptchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_childEvent(self: ptr cQsciLexerCoffeeScript, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_childEvent ".} =
  var nimfunc = cast[ptr QsciLexerCoffeeScriptchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerCoffeeScriptcustomEvent*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, event: gen_qcoreevent.QEvent): void =
  fQsciLexerCoffeeScript_virtualbase_customEvent(self.h, event.h)

type QsciLexerCoffeeScriptcustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, slot: QsciLexerCoffeeScriptcustomEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerCoffeeScriptcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_customEvent(self: ptr cQsciLexerCoffeeScript, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_customEvent ".} =
  var nimfunc = cast[ptr QsciLexerCoffeeScriptcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerCoffeeScriptconnectNotify*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, signal: gen_qmetaobject.QMetaMethod): void =
  fQsciLexerCoffeeScript_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerCoffeeScriptconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, slot: QsciLexerCoffeeScriptconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerCoffeeScriptconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_connectNotify(self: ptr cQsciLexerCoffeeScript, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_connectNotify ".} =
  var nimfunc = cast[ptr QsciLexerCoffeeScriptconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QsciLexerCoffeeScriptdisconnectNotify*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, signal: gen_qmetaobject.QMetaMethod): void =
  fQsciLexerCoffeeScript_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerCoffeeScriptdisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript, slot: QsciLexerCoffeeScriptdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerCoffeeScriptdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCoffeeScript_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCoffeeScript_disconnectNotify(self: ptr cQsciLexerCoffeeScript, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCoffeeScript_disconnectNotify ".} =
  var nimfunc = cast[ptr QsciLexerCoffeeScriptdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qscilexercoffeescript_types.QsciLexerCoffeeScript): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerCoffeeScript_staticMetaObject())
proc delete*(self: gen_qscilexercoffeescript_types.QsciLexerCoffeeScript) =
  fcQsciLexerCoffeeScript_delete(self.h)
