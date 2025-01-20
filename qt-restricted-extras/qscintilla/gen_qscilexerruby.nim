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


type QsciLexerRubyEnumEnum* = distinct cint
template Default*(_: type QsciLexerRubyEnumEnum): untyped = 0
template Error*(_: type QsciLexerRubyEnumEnum): untyped = 1
template Comment*(_: type QsciLexerRubyEnumEnum): untyped = 2
template POD*(_: type QsciLexerRubyEnumEnum): untyped = 3
template Number*(_: type QsciLexerRubyEnumEnum): untyped = 4
template Keyword*(_: type QsciLexerRubyEnumEnum): untyped = 5
template DoubleQuotedString*(_: type QsciLexerRubyEnumEnum): untyped = 6
template SingleQuotedString*(_: type QsciLexerRubyEnumEnum): untyped = 7
template ClassName*(_: type QsciLexerRubyEnumEnum): untyped = 8
template FunctionMethodName*(_: type QsciLexerRubyEnumEnum): untyped = 9
template Operator*(_: type QsciLexerRubyEnumEnum): untyped = 10
template Identifier*(_: type QsciLexerRubyEnumEnum): untyped = 11
template Regex*(_: type QsciLexerRubyEnumEnum): untyped = 12
template Global*(_: type QsciLexerRubyEnumEnum): untyped = 13
template Symbol*(_: type QsciLexerRubyEnumEnum): untyped = 14
template ModuleName*(_: type QsciLexerRubyEnumEnum): untyped = 15
template InstanceVariable*(_: type QsciLexerRubyEnumEnum): untyped = 16
template ClassVariable*(_: type QsciLexerRubyEnumEnum): untyped = 17
template Backticks*(_: type QsciLexerRubyEnumEnum): untyped = 18
template DataSection*(_: type QsciLexerRubyEnumEnum): untyped = 19
template HereDocumentDelimiter*(_: type QsciLexerRubyEnumEnum): untyped = 20
template HereDocument*(_: type QsciLexerRubyEnumEnum): untyped = 21
template PercentStringq*(_: type QsciLexerRubyEnumEnum): untyped = 24
template PercentStringQ2*(_: type QsciLexerRubyEnumEnum): untyped = 25
template PercentStringx*(_: type QsciLexerRubyEnumEnum): untyped = 26
template PercentStringr*(_: type QsciLexerRubyEnumEnum): untyped = 27
template PercentStringw*(_: type QsciLexerRubyEnumEnum): untyped = 28
template DemotedKeyword*(_: type QsciLexerRubyEnumEnum): untyped = 29
template Stdin*(_: type QsciLexerRubyEnumEnum): untyped = 30
template Stdout*(_: type QsciLexerRubyEnumEnum): untyped = 31
template Stderr*(_: type QsciLexerRubyEnumEnum): untyped = 40


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


func init*(T: type gen_qscilexerruby_types.QsciLexerRuby, h: ptr cQsciLexerRuby): gen_qscilexerruby_types.QsciLexerRuby =
  T(h: h)
proc create*(T: type gen_qscilexerruby_types.QsciLexerRuby, ): gen_qscilexerruby_types.QsciLexerRuby =

  gen_qscilexerruby_types.QsciLexerRuby.init(fcQsciLexerRuby_new())
proc create*(T: type gen_qscilexerruby_types.QsciLexerRuby, parent: gen_qobject.QObject): gen_qscilexerruby_types.QsciLexerRuby =

  gen_qscilexerruby_types.QsciLexerRuby.init(fcQsciLexerRuby_new2(parent.h))
proc metaObject*(self: gen_qscilexerruby_types.QsciLexerRuby, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQsciLexerRuby_metaObject(self.h))

proc metacast*(self: gen_qscilexerruby_types.QsciLexerRuby, param1: cstring): pointer =

  fcQsciLexerRuby_metacast(self.h, param1)

proc metacall*(self: gen_qscilexerruby_types.QsciLexerRuby, param1: cint, param2: cint, param3: pointer): cint =

  fcQsciLexerRuby_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexerruby_types.QsciLexerRuby, s: cstring): string =

  let v_ms = fcQsciLexerRuby_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexerruby_types.QsciLexerRuby, s: cstring): string =

  let v_ms = fcQsciLexerRuby_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexerruby_types.QsciLexerRuby, ): cstring =

  (fcQsciLexerRuby_language(self.h))

proc lexer*(self: gen_qscilexerruby_types.QsciLexerRuby, ): cstring =

  (fcQsciLexerRuby_lexer(self.h))

proc blockEnd*(self: gen_qscilexerruby_types.QsciLexerRuby, ): cstring =

  (fcQsciLexerRuby_blockEnd(self.h))

proc blockStart*(self: gen_qscilexerruby_types.QsciLexerRuby, ): cstring =

  (fcQsciLexerRuby_blockStart(self.h))

proc blockStartKeyword*(self: gen_qscilexerruby_types.QsciLexerRuby, ): cstring =

  (fcQsciLexerRuby_blockStartKeyword(self.h))

proc braceStyle*(self: gen_qscilexerruby_types.QsciLexerRuby, ): cint =

  fcQsciLexerRuby_braceStyle(self.h)

proc defaultColor*(self: gen_qscilexerruby_types.QsciLexerRuby, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerRuby_defaultColor(self.h, style))

proc defaultEolFill*(self: gen_qscilexerruby_types.QsciLexerRuby, style: cint): bool =

  fcQsciLexerRuby_defaultEolFill(self.h, style)

proc defaultFont*(self: gen_qscilexerruby_types.QsciLexerRuby, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQsciLexerRuby_defaultFont(self.h, style))

proc defaultPaper*(self: gen_qscilexerruby_types.QsciLexerRuby, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerRuby_defaultPaper(self.h, style))

proc keywords*(self: gen_qscilexerruby_types.QsciLexerRuby, set: cint): cstring =

  (fcQsciLexerRuby_keywords(self.h, set))

proc description*(self: gen_qscilexerruby_types.QsciLexerRuby, style: cint): string =

  let v_ms = fcQsciLexerRuby_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: gen_qscilexerruby_types.QsciLexerRuby, ): void =

  fcQsciLexerRuby_refreshProperties(self.h)

proc setFoldComments*(self: gen_qscilexerruby_types.QsciLexerRuby, fold: bool): void =

  fcQsciLexerRuby_setFoldComments(self.h, fold)

proc foldComments*(self: gen_qscilexerruby_types.QsciLexerRuby, ): bool =

  fcQsciLexerRuby_foldComments(self.h)

proc setFoldCompact*(self: gen_qscilexerruby_types.QsciLexerRuby, fold: bool): void =

  fcQsciLexerRuby_setFoldCompact(self.h, fold)

proc foldCompact*(self: gen_qscilexerruby_types.QsciLexerRuby, ): bool =

  fcQsciLexerRuby_foldCompact(self.h)

proc tr2*(_: type gen_qscilexerruby_types.QsciLexerRuby, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerRuby_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type gen_qscilexerruby_types.QsciLexerRuby, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerRuby_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type gen_qscilexerruby_types.QsciLexerRuby, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerRuby_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type gen_qscilexerruby_types.QsciLexerRuby, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerRuby_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc blockEnd1*(self: gen_qscilexerruby_types.QsciLexerRuby, style: ptr cint): cstring =

  (fcQsciLexerRuby_blockEnd1(self.h, style))

proc blockStart1*(self: gen_qscilexerruby_types.QsciLexerRuby, style: ptr cint): cstring =

  (fcQsciLexerRuby_blockStart1(self.h, style))

proc blockStartKeyword1*(self: gen_qscilexerruby_types.QsciLexerRuby, style: ptr cint): cstring =

  (fcQsciLexerRuby_blockStartKeyword1(self.h, style))

proc QsciLexerRubymetaObject*(self: gen_qscilexerruby_types.QsciLexerRuby, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fQsciLexerRuby_virtualbase_metaObject(self.h))

type QsciLexerRubymetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qscilexerruby_types.QsciLexerRuby, slot: QsciLexerRubymetaObjectProc) =
  # TODO check subclass
  var tmp = new QsciLexerRubymetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_metaObject(self: ptr cQsciLexerRuby, slot: int): pointer {.exportc: "miqt_exec_callback_QsciLexerRuby_metaObject ".} =
  var nimfunc = cast[ptr QsciLexerRubymetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QsciLexerRubymetacast*(self: gen_qscilexerruby_types.QsciLexerRuby, param1: cstring): pointer =

  fQsciLexerRuby_virtualbase_metacast(self.h, param1)

type QsciLexerRubymetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qscilexerruby_types.QsciLexerRuby, slot: QsciLexerRubymetacastProc) =
  # TODO check subclass
  var tmp = new QsciLexerRubymetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_metacast(self: ptr cQsciLexerRuby, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciLexerRuby_metacast ".} =
  var nimfunc = cast[ptr QsciLexerRubymetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerRubymetacall*(self: gen_qscilexerruby_types.QsciLexerRuby, param1: cint, param2: cint, param3: pointer): cint =

  fQsciLexerRuby_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerRubymetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qscilexerruby_types.QsciLexerRuby, slot: QsciLexerRubymetacallProc) =
  # TODO check subclass
  var tmp = new QsciLexerRubymetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_metacall(self: ptr cQsciLexerRuby, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerRuby_metacall ".} =
  var nimfunc = cast[ptr QsciLexerRubymetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
type QsciLexerRubylanguageProc* = proc(): cstring
proc onlanguage*(self: gen_qscilexerruby_types.QsciLexerRuby, slot: QsciLexerRubylanguageProc) =
  # TODO check subclass
  var tmp = new QsciLexerRubylanguageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_language(self: ptr cQsciLexerRuby, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerRuby_language ".} =
  var nimfunc = cast[ptr QsciLexerRubylanguageProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerRubylexer*(self: gen_qscilexerruby_types.QsciLexerRuby, ): cstring =

  (fQsciLexerRuby_virtualbase_lexer(self.h))

type QsciLexerRubylexerProc* = proc(): cstring
proc onlexer*(self: gen_qscilexerruby_types.QsciLexerRuby, slot: QsciLexerRubylexerProc) =
  # TODO check subclass
  var tmp = new QsciLexerRubylexerProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_lexer(self: ptr cQsciLexerRuby, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerRuby_lexer ".} =
  var nimfunc = cast[ptr QsciLexerRubylexerProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerRubylexerId*(self: gen_qscilexerruby_types.QsciLexerRuby, ): cint =

  fQsciLexerRuby_virtualbase_lexerId(self.h)

type QsciLexerRubylexerIdProc* = proc(): cint
proc onlexerId*(self: gen_qscilexerruby_types.QsciLexerRuby, slot: QsciLexerRubylexerIdProc) =
  # TODO check subclass
  var tmp = new QsciLexerRubylexerIdProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_lexerId(self: ptr cQsciLexerRuby, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerRuby_lexerId ".} =
  var nimfunc = cast[ptr QsciLexerRubylexerIdProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerRubyautoCompletionFillups*(self: gen_qscilexerruby_types.QsciLexerRuby, ): cstring =

  (fQsciLexerRuby_virtualbase_autoCompletionFillups(self.h))

type QsciLexerRubyautoCompletionFillupsProc* = proc(): cstring
proc onautoCompletionFillups*(self: gen_qscilexerruby_types.QsciLexerRuby, slot: QsciLexerRubyautoCompletionFillupsProc) =
  # TODO check subclass
  var tmp = new QsciLexerRubyautoCompletionFillupsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_autoCompletionFillups(self: ptr cQsciLexerRuby, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerRuby_autoCompletionFillups ".} =
  var nimfunc = cast[ptr QsciLexerRubyautoCompletionFillupsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerRubyautoCompletionWordSeparators*(self: gen_qscilexerruby_types.QsciLexerRuby, ): seq[string] =

  var v_ma = fQsciLexerRuby_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerRubyautoCompletionWordSeparatorsProc* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: gen_qscilexerruby_types.QsciLexerRuby, slot: QsciLexerRubyautoCompletionWordSeparatorsProc) =
  # TODO check subclass
  var tmp = new QsciLexerRubyautoCompletionWordSeparatorsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_autoCompletionWordSeparators(self: ptr cQsciLexerRuby, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerRuby_autoCompletionWordSeparators ".} =
  var nimfunc = cast[ptr QsciLexerRubyautoCompletionWordSeparatorsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QsciLexerRubyblockEnd*(self: gen_qscilexerruby_types.QsciLexerRuby, style: ptr cint): cstring =

  (fQsciLexerRuby_virtualbase_blockEnd(self.h, style))

type QsciLexerRubyblockEndProc* = proc(style: ptr cint): cstring
proc onblockEnd*(self: gen_qscilexerruby_types.QsciLexerRuby, slot: QsciLexerRubyblockEndProc) =
  # TODO check subclass
  var tmp = new QsciLexerRubyblockEndProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_blockEnd(self: ptr cQsciLexerRuby, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerRuby_blockEnd ".} =
  var nimfunc = cast[ptr QsciLexerRubyblockEndProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerRubyblockLookback*(self: gen_qscilexerruby_types.QsciLexerRuby, ): cint =

  fQsciLexerRuby_virtualbase_blockLookback(self.h)

type QsciLexerRubyblockLookbackProc* = proc(): cint
proc onblockLookback*(self: gen_qscilexerruby_types.QsciLexerRuby, slot: QsciLexerRubyblockLookbackProc) =
  # TODO check subclass
  var tmp = new QsciLexerRubyblockLookbackProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_blockLookback(self: ptr cQsciLexerRuby, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerRuby_blockLookback ".} =
  var nimfunc = cast[ptr QsciLexerRubyblockLookbackProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerRubyblockStart*(self: gen_qscilexerruby_types.QsciLexerRuby, style: ptr cint): cstring =

  (fQsciLexerRuby_virtualbase_blockStart(self.h, style))

type QsciLexerRubyblockStartProc* = proc(style: ptr cint): cstring
proc onblockStart*(self: gen_qscilexerruby_types.QsciLexerRuby, slot: QsciLexerRubyblockStartProc) =
  # TODO check subclass
  var tmp = new QsciLexerRubyblockStartProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_blockStart(self: ptr cQsciLexerRuby, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerRuby_blockStart ".} =
  var nimfunc = cast[ptr QsciLexerRubyblockStartProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerRubyblockStartKeyword*(self: gen_qscilexerruby_types.QsciLexerRuby, style: ptr cint): cstring =

  (fQsciLexerRuby_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerRubyblockStartKeywordProc* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: gen_qscilexerruby_types.QsciLexerRuby, slot: QsciLexerRubyblockStartKeywordProc) =
  # TODO check subclass
  var tmp = new QsciLexerRubyblockStartKeywordProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_blockStartKeyword(self: ptr cQsciLexerRuby, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerRuby_blockStartKeyword ".} =
  var nimfunc = cast[ptr QsciLexerRubyblockStartKeywordProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerRubybraceStyle*(self: gen_qscilexerruby_types.QsciLexerRuby, ): cint =

  fQsciLexerRuby_virtualbase_braceStyle(self.h)

type QsciLexerRubybraceStyleProc* = proc(): cint
proc onbraceStyle*(self: gen_qscilexerruby_types.QsciLexerRuby, slot: QsciLexerRubybraceStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerRubybraceStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_braceStyle(self: ptr cQsciLexerRuby, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerRuby_braceStyle ".} =
  var nimfunc = cast[ptr QsciLexerRubybraceStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerRubycaseSensitive*(self: gen_qscilexerruby_types.QsciLexerRuby, ): bool =

  fQsciLexerRuby_virtualbase_caseSensitive(self.h)

type QsciLexerRubycaseSensitiveProc* = proc(): bool
proc oncaseSensitive*(self: gen_qscilexerruby_types.QsciLexerRuby, slot: QsciLexerRubycaseSensitiveProc) =
  # TODO check subclass
  var tmp = new QsciLexerRubycaseSensitiveProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_caseSensitive(self: ptr cQsciLexerRuby, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerRuby_caseSensitive ".} =
  var nimfunc = cast[ptr QsciLexerRubycaseSensitiveProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerRubycolor*(self: gen_qscilexerruby_types.QsciLexerRuby, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fQsciLexerRuby_virtualbase_color(self.h, style))

type QsciLexerRubycolorProc* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: gen_qscilexerruby_types.QsciLexerRuby, slot: QsciLexerRubycolorProc) =
  # TODO check subclass
  var tmp = new QsciLexerRubycolorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_color(self: ptr cQsciLexerRuby, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerRuby_color ".} =
  var nimfunc = cast[ptr QsciLexerRubycolorProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerRubyeolFill*(self: gen_qscilexerruby_types.QsciLexerRuby, style: cint): bool =

  fQsciLexerRuby_virtualbase_eolFill(self.h, style)

type QsciLexerRubyeolFillProc* = proc(style: cint): bool
proc oneolFill*(self: gen_qscilexerruby_types.QsciLexerRuby, slot: QsciLexerRubyeolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerRubyeolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_eolFill(self: ptr cQsciLexerRuby, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerRuby_eolFill ".} =
  var nimfunc = cast[ptr QsciLexerRubyeolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerRubyfont*(self: gen_qscilexerruby_types.QsciLexerRuby, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fQsciLexerRuby_virtualbase_font(self.h, style))

type QsciLexerRubyfontProc* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: gen_qscilexerruby_types.QsciLexerRuby, slot: QsciLexerRubyfontProc) =
  # TODO check subclass
  var tmp = new QsciLexerRubyfontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_font(self: ptr cQsciLexerRuby, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerRuby_font ".} =
  var nimfunc = cast[ptr QsciLexerRubyfontProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerRubyindentationGuideView*(self: gen_qscilexerruby_types.QsciLexerRuby, ): cint =

  fQsciLexerRuby_virtualbase_indentationGuideView(self.h)

type QsciLexerRubyindentationGuideViewProc* = proc(): cint
proc onindentationGuideView*(self: gen_qscilexerruby_types.QsciLexerRuby, slot: QsciLexerRubyindentationGuideViewProc) =
  # TODO check subclass
  var tmp = new QsciLexerRubyindentationGuideViewProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_indentationGuideView(self: ptr cQsciLexerRuby, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerRuby_indentationGuideView ".} =
  var nimfunc = cast[ptr QsciLexerRubyindentationGuideViewProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerRubykeywords*(self: gen_qscilexerruby_types.QsciLexerRuby, set: cint): cstring =

  (fQsciLexerRuby_virtualbase_keywords(self.h, set))

type QsciLexerRubykeywordsProc* = proc(set: cint): cstring
proc onkeywords*(self: gen_qscilexerruby_types.QsciLexerRuby, slot: QsciLexerRubykeywordsProc) =
  # TODO check subclass
  var tmp = new QsciLexerRubykeywordsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_keywords(self: ptr cQsciLexerRuby, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerRuby_keywords ".} =
  var nimfunc = cast[ptr QsciLexerRubykeywordsProc](cast[pointer](slot))
  let slotval1 = set


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerRubydefaultStyle*(self: gen_qscilexerruby_types.QsciLexerRuby, ): cint =

  fQsciLexerRuby_virtualbase_defaultStyle(self.h)

type QsciLexerRubydefaultStyleProc* = proc(): cint
proc ondefaultStyle*(self: gen_qscilexerruby_types.QsciLexerRuby, slot: QsciLexerRubydefaultStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerRubydefaultStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_defaultStyle(self: ptr cQsciLexerRuby, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerRuby_defaultStyle ".} =
  var nimfunc = cast[ptr QsciLexerRubydefaultStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QsciLexerRubydescriptionProc* = proc(style: cint): string
proc ondescription*(self: gen_qscilexerruby_types.QsciLexerRuby, slot: QsciLexerRubydescriptionProc) =
  # TODO check subclass
  var tmp = new QsciLexerRubydescriptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_description(self: ptr cQsciLexerRuby, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerRuby_description ".} =
  var nimfunc = cast[ptr QsciLexerRubydescriptionProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc QsciLexerRubypaper*(self: gen_qscilexerruby_types.QsciLexerRuby, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fQsciLexerRuby_virtualbase_paper(self.h, style))

type QsciLexerRubypaperProc* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: gen_qscilexerruby_types.QsciLexerRuby, slot: QsciLexerRubypaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerRubypaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_paper(self: ptr cQsciLexerRuby, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerRuby_paper ".} =
  var nimfunc = cast[ptr QsciLexerRubypaperProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerRubydefaultColorWithStyle*(self: gen_qscilexerruby_types.QsciLexerRuby, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fQsciLexerRuby_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerRubydefaultColorWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColorWithStyle*(self: gen_qscilexerruby_types.QsciLexerRuby, slot: QsciLexerRubydefaultColorWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerRubydefaultColorWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_defaultColorWithStyle(self: ptr cQsciLexerRuby, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerRuby_defaultColorWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerRubydefaultColorWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerRubydefaultEolFill*(self: gen_qscilexerruby_types.QsciLexerRuby, style: cint): bool =

  fQsciLexerRuby_virtualbase_defaultEolFill(self.h, style)

type QsciLexerRubydefaultEolFillProc* = proc(style: cint): bool
proc ondefaultEolFill*(self: gen_qscilexerruby_types.QsciLexerRuby, slot: QsciLexerRubydefaultEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerRubydefaultEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_defaultEolFill(self: ptr cQsciLexerRuby, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerRuby_defaultEolFill ".} =
  var nimfunc = cast[ptr QsciLexerRubydefaultEolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerRubydefaultFontWithStyle*(self: gen_qscilexerruby_types.QsciLexerRuby, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fQsciLexerRuby_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerRubydefaultFontWithStyleProc* = proc(style: cint): gen_qfont.QFont
proc ondefaultFontWithStyle*(self: gen_qscilexerruby_types.QsciLexerRuby, slot: QsciLexerRubydefaultFontWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerRubydefaultFontWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_defaultFontWithStyle(self: ptr cQsciLexerRuby, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerRuby_defaultFontWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerRubydefaultFontWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerRubydefaultPaperWithStyle*(self: gen_qscilexerruby_types.QsciLexerRuby, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fQsciLexerRuby_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerRubydefaultPaperWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaperWithStyle*(self: gen_qscilexerruby_types.QsciLexerRuby, slot: QsciLexerRubydefaultPaperWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerRubydefaultPaperWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_defaultPaperWithStyle(self: ptr cQsciLexerRuby, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerRuby_defaultPaperWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerRubydefaultPaperWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerRubysetEditor*(self: gen_qscilexerruby_types.QsciLexerRuby, editor: gen_qsciscintilla.QsciScintilla): void =

  fQsciLexerRuby_virtualbase_setEditor(self.h, editor.h)

type QsciLexerRubysetEditorProc* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: gen_qscilexerruby_types.QsciLexerRuby, slot: QsciLexerRubysetEditorProc) =
  # TODO check subclass
  var tmp = new QsciLexerRubysetEditorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_setEditor(self: ptr cQsciLexerRuby, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerRuby_setEditor ".} =
  var nimfunc = cast[ptr QsciLexerRubysetEditorProc](cast[pointer](slot))
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](slotval1)
proc QsciLexerRubyrefreshProperties*(self: gen_qscilexerruby_types.QsciLexerRuby, ): void =

  fQsciLexerRuby_virtualbase_refreshProperties(self.h)

type QsciLexerRubyrefreshPropertiesProc* = proc(): void
proc onrefreshProperties*(self: gen_qscilexerruby_types.QsciLexerRuby, slot: QsciLexerRubyrefreshPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerRubyrefreshPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_refreshProperties(self: ptr cQsciLexerRuby, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerRuby_refreshProperties ".} =
  var nimfunc = cast[ptr QsciLexerRubyrefreshPropertiesProc](cast[pointer](slot))

  nimfunc[]()
proc QsciLexerRubystyleBitsNeeded*(self: gen_qscilexerruby_types.QsciLexerRuby, ): cint =

  fQsciLexerRuby_virtualbase_styleBitsNeeded(self.h)

type QsciLexerRubystyleBitsNeededProc* = proc(): cint
proc onstyleBitsNeeded*(self: gen_qscilexerruby_types.QsciLexerRuby, slot: QsciLexerRubystyleBitsNeededProc) =
  # TODO check subclass
  var tmp = new QsciLexerRubystyleBitsNeededProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_styleBitsNeeded(self: ptr cQsciLexerRuby, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerRuby_styleBitsNeeded ".} =
  var nimfunc = cast[ptr QsciLexerRubystyleBitsNeededProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerRubywordCharacters*(self: gen_qscilexerruby_types.QsciLexerRuby, ): cstring =

  (fQsciLexerRuby_virtualbase_wordCharacters(self.h))

type QsciLexerRubywordCharactersProc* = proc(): cstring
proc onwordCharacters*(self: gen_qscilexerruby_types.QsciLexerRuby, slot: QsciLexerRubywordCharactersProc) =
  # TODO check subclass
  var tmp = new QsciLexerRubywordCharactersProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_wordCharacters(self: ptr cQsciLexerRuby, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerRuby_wordCharacters ".} =
  var nimfunc = cast[ptr QsciLexerRubywordCharactersProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerRubysetAutoIndentStyle*(self: gen_qscilexerruby_types.QsciLexerRuby, autoindentstyle: cint): void =

  fQsciLexerRuby_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerRubysetAutoIndentStyleProc* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: gen_qscilexerruby_types.QsciLexerRuby, slot: QsciLexerRubysetAutoIndentStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerRubysetAutoIndentStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_setAutoIndentStyle(self: ptr cQsciLexerRuby, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerRuby_setAutoIndentStyle ".} =
  var nimfunc = cast[ptr QsciLexerRubysetAutoIndentStyleProc](cast[pointer](slot))
  let slotval1 = autoindentstyle


  nimfunc[](slotval1)
proc QsciLexerRubysetColor*(self: gen_qscilexerruby_types.QsciLexerRuby, c: gen_qcolor.QColor, style: cint): void =

  fQsciLexerRuby_virtualbase_setColor(self.h, c.h, style)

type QsciLexerRubysetColorProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: gen_qscilexerruby_types.QsciLexerRuby, slot: QsciLexerRubysetColorProc) =
  # TODO check subclass
  var tmp = new QsciLexerRubysetColorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_setColor(self: ptr cQsciLexerRuby, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerRuby_setColor ".} =
  var nimfunc = cast[ptr QsciLexerRubysetColorProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerRubysetEolFill*(self: gen_qscilexerruby_types.QsciLexerRuby, eoffill: bool, style: cint): void =

  fQsciLexerRuby_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerRubysetEolFillProc* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: gen_qscilexerruby_types.QsciLexerRuby, slot: QsciLexerRubysetEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerRubysetEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_setEolFill(self: ptr cQsciLexerRuby, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerRuby_setEolFill ".} =
  var nimfunc = cast[ptr QsciLexerRubysetEolFillProc](cast[pointer](slot))
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerRubysetFont*(self: gen_qscilexerruby_types.QsciLexerRuby, f: gen_qfont.QFont, style: cint): void =

  fQsciLexerRuby_virtualbase_setFont(self.h, f.h, style)

type QsciLexerRubysetFontProc* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: gen_qscilexerruby_types.QsciLexerRuby, slot: QsciLexerRubysetFontProc) =
  # TODO check subclass
  var tmp = new QsciLexerRubysetFontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_setFont(self: ptr cQsciLexerRuby, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerRuby_setFont ".} =
  var nimfunc = cast[ptr QsciLexerRubysetFontProc](cast[pointer](slot))
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerRubysetPaper*(self: gen_qscilexerruby_types.QsciLexerRuby, c: gen_qcolor.QColor, style: cint): void =

  fQsciLexerRuby_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerRubysetPaperProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: gen_qscilexerruby_types.QsciLexerRuby, slot: QsciLexerRubysetPaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerRubysetPaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_setPaper(self: ptr cQsciLexerRuby, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerRuby_setPaper ".} =
  var nimfunc = cast[ptr QsciLexerRubysetPaperProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerRubyreadProperties*(self: gen_qscilexerruby_types.QsciLexerRuby, qs: gen_qsettings.QSettings, prefix: string): bool =

  fQsciLexerRuby_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerRubyreadPropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: gen_qscilexerruby_types.QsciLexerRuby, slot: QsciLexerRubyreadPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerRubyreadPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_readProperties(self: ptr cQsciLexerRuby, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerRuby_readProperties ".} =
  var nimfunc = cast[ptr QsciLexerRubyreadPropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerRubywriteProperties*(self: gen_qscilexerruby_types.QsciLexerRuby, qs: gen_qsettings.QSettings, prefix: string): bool =

  fQsciLexerRuby_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerRubywritePropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: gen_qscilexerruby_types.QsciLexerRuby, slot: QsciLexerRubywritePropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerRubywritePropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_writeProperties(self: ptr cQsciLexerRuby, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerRuby_writeProperties ".} =
  var nimfunc = cast[ptr QsciLexerRubywritePropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerRubyevent*(self: gen_qscilexerruby_types.QsciLexerRuby, event: gen_qcoreevent.QEvent): bool =

  fQsciLexerRuby_virtualbase_event(self.h, event.h)

type QsciLexerRubyeventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qscilexerruby_types.QsciLexerRuby, slot: QsciLexerRubyeventProc) =
  # TODO check subclass
  var tmp = new QsciLexerRubyeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_event(self: ptr cQsciLexerRuby, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerRuby_event ".} =
  var nimfunc = cast[ptr QsciLexerRubyeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerRubyeventFilter*(self: gen_qscilexerruby_types.QsciLexerRuby, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =

  fQsciLexerRuby_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerRubyeventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qscilexerruby_types.QsciLexerRuby, slot: QsciLexerRubyeventFilterProc) =
  # TODO check subclass
  var tmp = new QsciLexerRubyeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_eventFilter(self: ptr cQsciLexerRuby, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerRuby_eventFilter ".} =
  var nimfunc = cast[ptr QsciLexerRubyeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerRubytimerEvent*(self: gen_qscilexerruby_types.QsciLexerRuby, event: gen_qcoreevent.QTimerEvent): void =

  fQsciLexerRuby_virtualbase_timerEvent(self.h, event.h)

type QsciLexerRubytimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qscilexerruby_types.QsciLexerRuby, slot: QsciLexerRubytimerEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerRubytimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_timerEvent(self: ptr cQsciLexerRuby, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerRuby_timerEvent ".} =
  var nimfunc = cast[ptr QsciLexerRubytimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerRubychildEvent*(self: gen_qscilexerruby_types.QsciLexerRuby, event: gen_qcoreevent.QChildEvent): void =

  fQsciLexerRuby_virtualbase_childEvent(self.h, event.h)

type QsciLexerRubychildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qscilexerruby_types.QsciLexerRuby, slot: QsciLexerRubychildEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerRubychildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_childEvent(self: ptr cQsciLexerRuby, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerRuby_childEvent ".} =
  var nimfunc = cast[ptr QsciLexerRubychildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerRubycustomEvent*(self: gen_qscilexerruby_types.QsciLexerRuby, event: gen_qcoreevent.QEvent): void =

  fQsciLexerRuby_virtualbase_customEvent(self.h, event.h)

type QsciLexerRubycustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qscilexerruby_types.QsciLexerRuby, slot: QsciLexerRubycustomEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerRubycustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_customEvent(self: ptr cQsciLexerRuby, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerRuby_customEvent ".} =
  var nimfunc = cast[ptr QsciLexerRubycustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerRubyconnectNotify*(self: gen_qscilexerruby_types.QsciLexerRuby, signal: gen_qmetaobject.QMetaMethod): void =

  fQsciLexerRuby_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerRubyconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qscilexerruby_types.QsciLexerRuby, slot: QsciLexerRubyconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerRubyconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_connectNotify(self: ptr cQsciLexerRuby, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerRuby_connectNotify ".} =
  var nimfunc = cast[ptr QsciLexerRubyconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QsciLexerRubydisconnectNotify*(self: gen_qscilexerruby_types.QsciLexerRuby, signal: gen_qmetaobject.QMetaMethod): void =

  fQsciLexerRuby_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerRubydisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qscilexerruby_types.QsciLexerRuby, slot: QsciLexerRubydisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerRubydisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerRuby_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerRuby_disconnectNotify(self: ptr cQsciLexerRuby, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerRuby_disconnectNotify ".} =
  var nimfunc = cast[ptr QsciLexerRubydisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qscilexerruby_types.QsciLexerRuby): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerRuby_staticMetaObject())
proc delete*(self: gen_qscilexerruby_types.QsciLexerRuby) =
  fcQsciLexerRuby_delete(self.h)
