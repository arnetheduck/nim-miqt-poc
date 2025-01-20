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
{.compile("gen_qscilexerpascal.cpp", cflags).}


type QsciLexerPascalEnumEnum* = distinct cint
template Default*(_: type QsciLexerPascalEnumEnum): untyped = 0
template Identifier*(_: type QsciLexerPascalEnumEnum): untyped = 1
template Comment*(_: type QsciLexerPascalEnumEnum): untyped = 2
template CommentParenthesis*(_: type QsciLexerPascalEnumEnum): untyped = 3
template CommentLine*(_: type QsciLexerPascalEnumEnum): untyped = 4
template PreProcessor*(_: type QsciLexerPascalEnumEnum): untyped = 5
template PreProcessorParenthesis*(_: type QsciLexerPascalEnumEnum): untyped = 6
template Number*(_: type QsciLexerPascalEnumEnum): untyped = 7
template HexNumber*(_: type QsciLexerPascalEnumEnum): untyped = 8
template Keyword*(_: type QsciLexerPascalEnumEnum): untyped = 9
template SingleQuotedString*(_: type QsciLexerPascalEnumEnum): untyped = 10
template UnclosedString*(_: type QsciLexerPascalEnumEnum): untyped = 11
template Character*(_: type QsciLexerPascalEnumEnum): untyped = 12
template Operator*(_: type QsciLexerPascalEnumEnum): untyped = 13
template Asm*(_: type QsciLexerPascalEnumEnum): untyped = 14


import gen_qscilexerpascal_types
export gen_qscilexerpascal_types

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

type cQsciLexerPascal*{.exportc: "QsciLexerPascal", incompleteStruct.} = object

proc fcQsciLexerPascal_new(): ptr cQsciLexerPascal {.importc: "QsciLexerPascal_new".}
proc fcQsciLexerPascal_new2(parent: pointer): ptr cQsciLexerPascal {.importc: "QsciLexerPascal_new2".}
proc fcQsciLexerPascal_metaObject(self: pointer, ): pointer {.importc: "QsciLexerPascal_metaObject".}
proc fcQsciLexerPascal_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerPascal_metacast".}
proc fcQsciLexerPascal_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerPascal_metacall".}
proc fcQsciLexerPascal_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerPascal_tr".}
proc fcQsciLexerPascal_trUtf8(s: cstring): struct_miqt_string {.importc: "QsciLexerPascal_trUtf8".}
proc fcQsciLexerPascal_language(self: pointer, ): cstring {.importc: "QsciLexerPascal_language".}
proc fcQsciLexerPascal_lexer(self: pointer, ): cstring {.importc: "QsciLexerPascal_lexer".}
proc fcQsciLexerPascal_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array {.importc: "QsciLexerPascal_autoCompletionWordSeparators".}
proc fcQsciLexerPascal_blockEnd(self: pointer, ): cstring {.importc: "QsciLexerPascal_blockEnd".}
proc fcQsciLexerPascal_blockStart(self: pointer, ): cstring {.importc: "QsciLexerPascal_blockStart".}
proc fcQsciLexerPascal_blockStartKeyword(self: pointer, ): cstring {.importc: "QsciLexerPascal_blockStartKeyword".}
proc fcQsciLexerPascal_braceStyle(self: pointer, ): cint {.importc: "QsciLexerPascal_braceStyle".}
proc fcQsciLexerPascal_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerPascal_defaultColor".}
proc fcQsciLexerPascal_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerPascal_defaultEolFill".}
proc fcQsciLexerPascal_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerPascal_defaultFont".}
proc fcQsciLexerPascal_defaultPaper(self: pointer, style: cint): pointer {.importc: "QsciLexerPascal_defaultPaper".}
proc fcQsciLexerPascal_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerPascal_keywords".}
proc fcQsciLexerPascal_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerPascal_description".}
proc fcQsciLexerPascal_refreshProperties(self: pointer, ): void {.importc: "QsciLexerPascal_refreshProperties".}
proc fcQsciLexerPascal_foldComments(self: pointer, ): bool {.importc: "QsciLexerPascal_foldComments".}
proc fcQsciLexerPascal_foldCompact(self: pointer, ): bool {.importc: "QsciLexerPascal_foldCompact".}
proc fcQsciLexerPascal_foldPreprocessor(self: pointer, ): bool {.importc: "QsciLexerPascal_foldPreprocessor".}
proc fcQsciLexerPascal_setSmartHighlighting(self: pointer, enabled: bool): void {.importc: "QsciLexerPascal_setSmartHighlighting".}
proc fcQsciLexerPascal_smartHighlighting(self: pointer, ): bool {.importc: "QsciLexerPascal_smartHighlighting".}
proc fcQsciLexerPascal_setFoldComments(self: pointer, fold: bool): void {.importc: "QsciLexerPascal_setFoldComments".}
proc fcQsciLexerPascal_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerPascal_setFoldCompact".}
proc fcQsciLexerPascal_setFoldPreprocessor(self: pointer, fold: bool): void {.importc: "QsciLexerPascal_setFoldPreprocessor".}
proc fcQsciLexerPascal_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerPascal_tr2".}
proc fcQsciLexerPascal_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerPascal_tr3".}
proc fcQsciLexerPascal_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerPascal_trUtf82".}
proc fcQsciLexerPascal_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerPascal_trUtf83".}
proc fcQsciLexerPascal_blockEnd1(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerPascal_blockEnd1".}
proc fcQsciLexerPascal_blockStart1(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerPascal_blockStart1".}
proc fcQsciLexerPascal_blockStartKeyword1(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerPascal_blockStartKeyword1".}
proc fQsciLexerPascal_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QsciLexerPascal_virtualbase_metaObject".}
proc fcQsciLexerPascal_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_metaObject".}
proc fQsciLexerPascal_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QsciLexerPascal_virtualbase_metacast".}
proc fcQsciLexerPascal_override_virtual_metacast(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_metacast".}
proc fQsciLexerPascal_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciLexerPascal_virtualbase_metacall".}
proc fcQsciLexerPascal_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_metacall".}
proc fQsciLexerPascal_virtualbase_setFoldComments(self: pointer, fold: bool): void{.importc: "QsciLexerPascal_virtualbase_setFoldComments".}
proc fcQsciLexerPascal_override_virtual_setFoldComments(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_setFoldComments".}
proc fQsciLexerPascal_virtualbase_setFoldCompact(self: pointer, fold: bool): void{.importc: "QsciLexerPascal_virtualbase_setFoldCompact".}
proc fcQsciLexerPascal_override_virtual_setFoldCompact(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_setFoldCompact".}
proc fQsciLexerPascal_virtualbase_setFoldPreprocessor(self: pointer, fold: bool): void{.importc: "QsciLexerPascal_virtualbase_setFoldPreprocessor".}
proc fcQsciLexerPascal_override_virtual_setFoldPreprocessor(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_setFoldPreprocessor".}
proc fcQsciLexerPascal_override_virtual_language(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_language".}
proc fQsciLexerPascal_virtualbase_lexer(self: pointer, ): cstring{.importc: "QsciLexerPascal_virtualbase_lexer".}
proc fcQsciLexerPascal_override_virtual_lexer(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_lexer".}
proc fQsciLexerPascal_virtualbase_lexerId(self: pointer, ): cint{.importc: "QsciLexerPascal_virtualbase_lexerId".}
proc fcQsciLexerPascal_override_virtual_lexerId(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_lexerId".}
proc fQsciLexerPascal_virtualbase_autoCompletionFillups(self: pointer, ): cstring{.importc: "QsciLexerPascal_virtualbase_autoCompletionFillups".}
proc fcQsciLexerPascal_override_virtual_autoCompletionFillups(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_autoCompletionFillups".}
proc fQsciLexerPascal_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array{.importc: "QsciLexerPascal_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerPascal_override_virtual_autoCompletionWordSeparators(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_autoCompletionWordSeparators".}
proc fQsciLexerPascal_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerPascal_virtualbase_blockEnd".}
proc fcQsciLexerPascal_override_virtual_blockEnd(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_blockEnd".}
proc fQsciLexerPascal_virtualbase_blockLookback(self: pointer, ): cint{.importc: "QsciLexerPascal_virtualbase_blockLookback".}
proc fcQsciLexerPascal_override_virtual_blockLookback(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_blockLookback".}
proc fQsciLexerPascal_virtualbase_blockStart(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerPascal_virtualbase_blockStart".}
proc fcQsciLexerPascal_override_virtual_blockStart(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_blockStart".}
proc fQsciLexerPascal_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerPascal_virtualbase_blockStartKeyword".}
proc fcQsciLexerPascal_override_virtual_blockStartKeyword(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_blockStartKeyword".}
proc fQsciLexerPascal_virtualbase_braceStyle(self: pointer, ): cint{.importc: "QsciLexerPascal_virtualbase_braceStyle".}
proc fcQsciLexerPascal_override_virtual_braceStyle(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_braceStyle".}
proc fQsciLexerPascal_virtualbase_caseSensitive(self: pointer, ): bool{.importc: "QsciLexerPascal_virtualbase_caseSensitive".}
proc fcQsciLexerPascal_override_virtual_caseSensitive(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_caseSensitive".}
proc fQsciLexerPascal_virtualbase_color(self: pointer, style: cint): pointer{.importc: "QsciLexerPascal_virtualbase_color".}
proc fcQsciLexerPascal_override_virtual_color(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_color".}
proc fQsciLexerPascal_virtualbase_eolFill(self: pointer, style: cint): bool{.importc: "QsciLexerPascal_virtualbase_eolFill".}
proc fcQsciLexerPascal_override_virtual_eolFill(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_eolFill".}
proc fQsciLexerPascal_virtualbase_font(self: pointer, style: cint): pointer{.importc: "QsciLexerPascal_virtualbase_font".}
proc fcQsciLexerPascal_override_virtual_font(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_font".}
proc fQsciLexerPascal_virtualbase_indentationGuideView(self: pointer, ): cint{.importc: "QsciLexerPascal_virtualbase_indentationGuideView".}
proc fcQsciLexerPascal_override_virtual_indentationGuideView(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_indentationGuideView".}
proc fQsciLexerPascal_virtualbase_keywords(self: pointer, set: cint): cstring{.importc: "QsciLexerPascal_virtualbase_keywords".}
proc fcQsciLexerPascal_override_virtual_keywords(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_keywords".}
proc fQsciLexerPascal_virtualbase_defaultStyle(self: pointer, ): cint{.importc: "QsciLexerPascal_virtualbase_defaultStyle".}
proc fcQsciLexerPascal_override_virtual_defaultStyle(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_defaultStyle".}
proc fcQsciLexerPascal_override_virtual_description(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_description".}
proc fQsciLexerPascal_virtualbase_paper(self: pointer, style: cint): pointer{.importc: "QsciLexerPascal_virtualbase_paper".}
proc fcQsciLexerPascal_override_virtual_paper(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_paper".}
proc fQsciLexerPascal_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerPascal_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerPascal_override_virtual_defaultColorWithStyle(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_defaultColorWithStyle".}
proc fQsciLexerPascal_virtualbase_defaultEolFill(self: pointer, style: cint): bool{.importc: "QsciLexerPascal_virtualbase_defaultEolFill".}
proc fcQsciLexerPascal_override_virtual_defaultEolFill(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_defaultEolFill".}
proc fQsciLexerPascal_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerPascal_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerPascal_override_virtual_defaultFontWithStyle(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_defaultFontWithStyle".}
proc fQsciLexerPascal_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerPascal_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerPascal_override_virtual_defaultPaperWithStyle(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_defaultPaperWithStyle".}
proc fQsciLexerPascal_virtualbase_setEditor(self: pointer, editor: pointer): void{.importc: "QsciLexerPascal_virtualbase_setEditor".}
proc fcQsciLexerPascal_override_virtual_setEditor(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_setEditor".}
proc fQsciLexerPascal_virtualbase_refreshProperties(self: pointer, ): void{.importc: "QsciLexerPascal_virtualbase_refreshProperties".}
proc fcQsciLexerPascal_override_virtual_refreshProperties(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_refreshProperties".}
proc fQsciLexerPascal_virtualbase_styleBitsNeeded(self: pointer, ): cint{.importc: "QsciLexerPascal_virtualbase_styleBitsNeeded".}
proc fcQsciLexerPascal_override_virtual_styleBitsNeeded(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_styleBitsNeeded".}
proc fQsciLexerPascal_virtualbase_wordCharacters(self: pointer, ): cstring{.importc: "QsciLexerPascal_virtualbase_wordCharacters".}
proc fcQsciLexerPascal_override_virtual_wordCharacters(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_wordCharacters".}
proc fQsciLexerPascal_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void{.importc: "QsciLexerPascal_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerPascal_override_virtual_setAutoIndentStyle(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_setAutoIndentStyle".}
proc fQsciLexerPascal_virtualbase_setColor(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerPascal_virtualbase_setColor".}
proc fcQsciLexerPascal_override_virtual_setColor(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_setColor".}
proc fQsciLexerPascal_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void{.importc: "QsciLexerPascal_virtualbase_setEolFill".}
proc fcQsciLexerPascal_override_virtual_setEolFill(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_setEolFill".}
proc fQsciLexerPascal_virtualbase_setFont(self: pointer, f: pointer, style: cint): void{.importc: "QsciLexerPascal_virtualbase_setFont".}
proc fcQsciLexerPascal_override_virtual_setFont(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_setFont".}
proc fQsciLexerPascal_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerPascal_virtualbase_setPaper".}
proc fcQsciLexerPascal_override_virtual_setPaper(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_setPaper".}
proc fQsciLexerPascal_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerPascal_virtualbase_readProperties".}
proc fcQsciLexerPascal_override_virtual_readProperties(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_readProperties".}
proc fQsciLexerPascal_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerPascal_virtualbase_writeProperties".}
proc fcQsciLexerPascal_override_virtual_writeProperties(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_writeProperties".}
proc fQsciLexerPascal_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QsciLexerPascal_virtualbase_event".}
proc fcQsciLexerPascal_override_virtual_event(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_event".}
proc fQsciLexerPascal_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciLexerPascal_virtualbase_eventFilter".}
proc fcQsciLexerPascal_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_eventFilter".}
proc fQsciLexerPascal_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciLexerPascal_virtualbase_timerEvent".}
proc fcQsciLexerPascal_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_timerEvent".}
proc fQsciLexerPascal_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciLexerPascal_virtualbase_childEvent".}
proc fcQsciLexerPascal_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_childEvent".}
proc fQsciLexerPascal_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciLexerPascal_virtualbase_customEvent".}
proc fcQsciLexerPascal_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_customEvent".}
proc fQsciLexerPascal_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerPascal_virtualbase_connectNotify".}
proc fcQsciLexerPascal_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_connectNotify".}
proc fQsciLexerPascal_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerPascal_virtualbase_disconnectNotify".}
proc fcQsciLexerPascal_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_disconnectNotify".}
proc fcQsciLexerPascal_staticMetaObject(): pointer {.importc: "QsciLexerPascal_staticMetaObject".}
proc fcQsciLexerPascal_delete(self: pointer) {.importc: "QsciLexerPascal_delete".}


func init*(T: type gen_qscilexerpascal_types.QsciLexerPascal, h: ptr cQsciLexerPascal): gen_qscilexerpascal_types.QsciLexerPascal =
  T(h: h)
proc create*(T: type gen_qscilexerpascal_types.QsciLexerPascal, ): gen_qscilexerpascal_types.QsciLexerPascal =

  gen_qscilexerpascal_types.QsciLexerPascal.init(fcQsciLexerPascal_new())
proc create*(T: type gen_qscilexerpascal_types.QsciLexerPascal, parent: gen_qobject.QObject): gen_qscilexerpascal_types.QsciLexerPascal =

  gen_qscilexerpascal_types.QsciLexerPascal.init(fcQsciLexerPascal_new2(parent.h))
proc metaObject*(self: gen_qscilexerpascal_types.QsciLexerPascal, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQsciLexerPascal_metaObject(self.h))

proc metacast*(self: gen_qscilexerpascal_types.QsciLexerPascal, param1: cstring): pointer =

  fcQsciLexerPascal_metacast(self.h, param1)

proc metacall*(self: gen_qscilexerpascal_types.QsciLexerPascal, param1: cint, param2: cint, param3: pointer): cint =

  fcQsciLexerPascal_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexerpascal_types.QsciLexerPascal, s: cstring): string =

  let v_ms = fcQsciLexerPascal_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexerpascal_types.QsciLexerPascal, s: cstring): string =

  let v_ms = fcQsciLexerPascal_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexerpascal_types.QsciLexerPascal, ): cstring =

  (fcQsciLexerPascal_language(self.h))

proc lexer*(self: gen_qscilexerpascal_types.QsciLexerPascal, ): cstring =

  (fcQsciLexerPascal_lexer(self.h))

proc autoCompletionWordSeparators*(self: gen_qscilexerpascal_types.QsciLexerPascal, ): seq[string] =

  var v_ma = fcQsciLexerPascal_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc blockEnd*(self: gen_qscilexerpascal_types.QsciLexerPascal, ): cstring =

  (fcQsciLexerPascal_blockEnd(self.h))

proc blockStart*(self: gen_qscilexerpascal_types.QsciLexerPascal, ): cstring =

  (fcQsciLexerPascal_blockStart(self.h))

proc blockStartKeyword*(self: gen_qscilexerpascal_types.QsciLexerPascal, ): cstring =

  (fcQsciLexerPascal_blockStartKeyword(self.h))

proc braceStyle*(self: gen_qscilexerpascal_types.QsciLexerPascal, ): cint =

  fcQsciLexerPascal_braceStyle(self.h)

proc defaultColor*(self: gen_qscilexerpascal_types.QsciLexerPascal, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerPascal_defaultColor(self.h, style))

proc defaultEolFill*(self: gen_qscilexerpascal_types.QsciLexerPascal, style: cint): bool =

  fcQsciLexerPascal_defaultEolFill(self.h, style)

proc defaultFont*(self: gen_qscilexerpascal_types.QsciLexerPascal, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQsciLexerPascal_defaultFont(self.h, style))

proc defaultPaper*(self: gen_qscilexerpascal_types.QsciLexerPascal, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerPascal_defaultPaper(self.h, style))

proc keywords*(self: gen_qscilexerpascal_types.QsciLexerPascal, set: cint): cstring =

  (fcQsciLexerPascal_keywords(self.h, set))

proc description*(self: gen_qscilexerpascal_types.QsciLexerPascal, style: cint): string =

  let v_ms = fcQsciLexerPascal_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: gen_qscilexerpascal_types.QsciLexerPascal, ): void =

  fcQsciLexerPascal_refreshProperties(self.h)

proc foldComments*(self: gen_qscilexerpascal_types.QsciLexerPascal, ): bool =

  fcQsciLexerPascal_foldComments(self.h)

proc foldCompact*(self: gen_qscilexerpascal_types.QsciLexerPascal, ): bool =

  fcQsciLexerPascal_foldCompact(self.h)

proc foldPreprocessor*(self: gen_qscilexerpascal_types.QsciLexerPascal, ): bool =

  fcQsciLexerPascal_foldPreprocessor(self.h)

proc setSmartHighlighting*(self: gen_qscilexerpascal_types.QsciLexerPascal, enabled: bool): void =

  fcQsciLexerPascal_setSmartHighlighting(self.h, enabled)

proc smartHighlighting*(self: gen_qscilexerpascal_types.QsciLexerPascal, ): bool =

  fcQsciLexerPascal_smartHighlighting(self.h)

proc setFoldComments*(self: gen_qscilexerpascal_types.QsciLexerPascal, fold: bool): void =

  fcQsciLexerPascal_setFoldComments(self.h, fold)

proc setFoldCompact*(self: gen_qscilexerpascal_types.QsciLexerPascal, fold: bool): void =

  fcQsciLexerPascal_setFoldCompact(self.h, fold)

proc setFoldPreprocessor*(self: gen_qscilexerpascal_types.QsciLexerPascal, fold: bool): void =

  fcQsciLexerPascal_setFoldPreprocessor(self.h, fold)

proc tr2*(_: type gen_qscilexerpascal_types.QsciLexerPascal, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerPascal_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type gen_qscilexerpascal_types.QsciLexerPascal, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerPascal_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type gen_qscilexerpascal_types.QsciLexerPascal, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerPascal_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type gen_qscilexerpascal_types.QsciLexerPascal, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerPascal_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc blockEnd1*(self: gen_qscilexerpascal_types.QsciLexerPascal, style: ptr cint): cstring =

  (fcQsciLexerPascal_blockEnd1(self.h, style))

proc blockStart1*(self: gen_qscilexerpascal_types.QsciLexerPascal, style: ptr cint): cstring =

  (fcQsciLexerPascal_blockStart1(self.h, style))

proc blockStartKeyword1*(self: gen_qscilexerpascal_types.QsciLexerPascal, style: ptr cint): cstring =

  (fcQsciLexerPascal_blockStartKeyword1(self.h, style))

proc QsciLexerPascalmetaObject*(self: gen_qscilexerpascal_types.QsciLexerPascal, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fQsciLexerPascal_virtualbase_metaObject(self.h))

type QsciLexerPascalmetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qscilexerpascal_types.QsciLexerPascal, slot: QsciLexerPascalmetaObjectProc) =
  # TODO check subclass
  var tmp = new QsciLexerPascalmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_metaObject(self: ptr cQsciLexerPascal, slot: int): pointer {.exportc: "miqt_exec_callback_QsciLexerPascal_metaObject ".} =
  var nimfunc = cast[ptr QsciLexerPascalmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QsciLexerPascalmetacast*(self: gen_qscilexerpascal_types.QsciLexerPascal, param1: cstring): pointer =

  fQsciLexerPascal_virtualbase_metacast(self.h, param1)

type QsciLexerPascalmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qscilexerpascal_types.QsciLexerPascal, slot: QsciLexerPascalmetacastProc) =
  # TODO check subclass
  var tmp = new QsciLexerPascalmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_metacast(self: ptr cQsciLexerPascal, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciLexerPascal_metacast ".} =
  var nimfunc = cast[ptr QsciLexerPascalmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerPascalmetacall*(self: gen_qscilexerpascal_types.QsciLexerPascal, param1: cint, param2: cint, param3: pointer): cint =

  fQsciLexerPascal_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerPascalmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qscilexerpascal_types.QsciLexerPascal, slot: QsciLexerPascalmetacallProc) =
  # TODO check subclass
  var tmp = new QsciLexerPascalmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_metacall(self: ptr cQsciLexerPascal, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerPascal_metacall ".} =
  var nimfunc = cast[ptr QsciLexerPascalmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QsciLexerPascalsetFoldComments*(self: gen_qscilexerpascal_types.QsciLexerPascal, fold: bool): void =

  fQsciLexerPascal_virtualbase_setFoldComments(self.h, fold)

type QsciLexerPascalsetFoldCommentsProc* = proc(fold: bool): void
proc onsetFoldComments*(self: gen_qscilexerpascal_types.QsciLexerPascal, slot: QsciLexerPascalsetFoldCommentsProc) =
  # TODO check subclass
  var tmp = new QsciLexerPascalsetFoldCommentsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_setFoldComments(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_setFoldComments(self: ptr cQsciLexerPascal, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerPascal_setFoldComments ".} =
  var nimfunc = cast[ptr QsciLexerPascalsetFoldCommentsProc](cast[pointer](slot))
  let slotval1 = fold


  nimfunc[](slotval1)
proc QsciLexerPascalsetFoldCompact*(self: gen_qscilexerpascal_types.QsciLexerPascal, fold: bool): void =

  fQsciLexerPascal_virtualbase_setFoldCompact(self.h, fold)

type QsciLexerPascalsetFoldCompactProc* = proc(fold: bool): void
proc onsetFoldCompact*(self: gen_qscilexerpascal_types.QsciLexerPascal, slot: QsciLexerPascalsetFoldCompactProc) =
  # TODO check subclass
  var tmp = new QsciLexerPascalsetFoldCompactProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_setFoldCompact(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_setFoldCompact(self: ptr cQsciLexerPascal, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerPascal_setFoldCompact ".} =
  var nimfunc = cast[ptr QsciLexerPascalsetFoldCompactProc](cast[pointer](slot))
  let slotval1 = fold


  nimfunc[](slotval1)
proc QsciLexerPascalsetFoldPreprocessor*(self: gen_qscilexerpascal_types.QsciLexerPascal, fold: bool): void =

  fQsciLexerPascal_virtualbase_setFoldPreprocessor(self.h, fold)

type QsciLexerPascalsetFoldPreprocessorProc* = proc(fold: bool): void
proc onsetFoldPreprocessor*(self: gen_qscilexerpascal_types.QsciLexerPascal, slot: QsciLexerPascalsetFoldPreprocessorProc) =
  # TODO check subclass
  var tmp = new QsciLexerPascalsetFoldPreprocessorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_setFoldPreprocessor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_setFoldPreprocessor(self: ptr cQsciLexerPascal, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerPascal_setFoldPreprocessor ".} =
  var nimfunc = cast[ptr QsciLexerPascalsetFoldPreprocessorProc](cast[pointer](slot))
  let slotval1 = fold


  nimfunc[](slotval1)
type QsciLexerPascallanguageProc* = proc(): cstring
proc onlanguage*(self: gen_qscilexerpascal_types.QsciLexerPascal, slot: QsciLexerPascallanguageProc) =
  # TODO check subclass
  var tmp = new QsciLexerPascallanguageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_language(self: ptr cQsciLexerPascal, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerPascal_language ".} =
  var nimfunc = cast[ptr QsciLexerPascallanguageProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPascallexer*(self: gen_qscilexerpascal_types.QsciLexerPascal, ): cstring =

  (fQsciLexerPascal_virtualbase_lexer(self.h))

type QsciLexerPascallexerProc* = proc(): cstring
proc onlexer*(self: gen_qscilexerpascal_types.QsciLexerPascal, slot: QsciLexerPascallexerProc) =
  # TODO check subclass
  var tmp = new QsciLexerPascallexerProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_lexer(self: ptr cQsciLexerPascal, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerPascal_lexer ".} =
  var nimfunc = cast[ptr QsciLexerPascallexerProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPascallexerId*(self: gen_qscilexerpascal_types.QsciLexerPascal, ): cint =

  fQsciLexerPascal_virtualbase_lexerId(self.h)

type QsciLexerPascallexerIdProc* = proc(): cint
proc onlexerId*(self: gen_qscilexerpascal_types.QsciLexerPascal, slot: QsciLexerPascallexerIdProc) =
  # TODO check subclass
  var tmp = new QsciLexerPascallexerIdProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_lexerId(self: ptr cQsciLexerPascal, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPascal_lexerId ".} =
  var nimfunc = cast[ptr QsciLexerPascallexerIdProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPascalautoCompletionFillups*(self: gen_qscilexerpascal_types.QsciLexerPascal, ): cstring =

  (fQsciLexerPascal_virtualbase_autoCompletionFillups(self.h))

type QsciLexerPascalautoCompletionFillupsProc* = proc(): cstring
proc onautoCompletionFillups*(self: gen_qscilexerpascal_types.QsciLexerPascal, slot: QsciLexerPascalautoCompletionFillupsProc) =
  # TODO check subclass
  var tmp = new QsciLexerPascalautoCompletionFillupsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_autoCompletionFillups(self: ptr cQsciLexerPascal, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerPascal_autoCompletionFillups ".} =
  var nimfunc = cast[ptr QsciLexerPascalautoCompletionFillupsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPascalautoCompletionWordSeparators*(self: gen_qscilexerpascal_types.QsciLexerPascal, ): seq[string] =

  var v_ma = fQsciLexerPascal_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerPascalautoCompletionWordSeparatorsProc* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: gen_qscilexerpascal_types.QsciLexerPascal, slot: QsciLexerPascalautoCompletionWordSeparatorsProc) =
  # TODO check subclass
  var tmp = new QsciLexerPascalautoCompletionWordSeparatorsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_autoCompletionWordSeparators(self: ptr cQsciLexerPascal, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerPascal_autoCompletionWordSeparators ".} =
  var nimfunc = cast[ptr QsciLexerPascalautoCompletionWordSeparatorsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QsciLexerPascalblockEnd*(self: gen_qscilexerpascal_types.QsciLexerPascal, style: ptr cint): cstring =

  (fQsciLexerPascal_virtualbase_blockEnd(self.h, style))

type QsciLexerPascalblockEndProc* = proc(style: ptr cint): cstring
proc onblockEnd*(self: gen_qscilexerpascal_types.QsciLexerPascal, slot: QsciLexerPascalblockEndProc) =
  # TODO check subclass
  var tmp = new QsciLexerPascalblockEndProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_blockEnd(self: ptr cQsciLexerPascal, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerPascal_blockEnd ".} =
  var nimfunc = cast[ptr QsciLexerPascalblockEndProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerPascalblockLookback*(self: gen_qscilexerpascal_types.QsciLexerPascal, ): cint =

  fQsciLexerPascal_virtualbase_blockLookback(self.h)

type QsciLexerPascalblockLookbackProc* = proc(): cint
proc onblockLookback*(self: gen_qscilexerpascal_types.QsciLexerPascal, slot: QsciLexerPascalblockLookbackProc) =
  # TODO check subclass
  var tmp = new QsciLexerPascalblockLookbackProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_blockLookback(self: ptr cQsciLexerPascal, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPascal_blockLookback ".} =
  var nimfunc = cast[ptr QsciLexerPascalblockLookbackProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPascalblockStart*(self: gen_qscilexerpascal_types.QsciLexerPascal, style: ptr cint): cstring =

  (fQsciLexerPascal_virtualbase_blockStart(self.h, style))

type QsciLexerPascalblockStartProc* = proc(style: ptr cint): cstring
proc onblockStart*(self: gen_qscilexerpascal_types.QsciLexerPascal, slot: QsciLexerPascalblockStartProc) =
  # TODO check subclass
  var tmp = new QsciLexerPascalblockStartProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_blockStart(self: ptr cQsciLexerPascal, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerPascal_blockStart ".} =
  var nimfunc = cast[ptr QsciLexerPascalblockStartProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerPascalblockStartKeyword*(self: gen_qscilexerpascal_types.QsciLexerPascal, style: ptr cint): cstring =

  (fQsciLexerPascal_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerPascalblockStartKeywordProc* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: gen_qscilexerpascal_types.QsciLexerPascal, slot: QsciLexerPascalblockStartKeywordProc) =
  # TODO check subclass
  var tmp = new QsciLexerPascalblockStartKeywordProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_blockStartKeyword(self: ptr cQsciLexerPascal, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerPascal_blockStartKeyword ".} =
  var nimfunc = cast[ptr QsciLexerPascalblockStartKeywordProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerPascalbraceStyle*(self: gen_qscilexerpascal_types.QsciLexerPascal, ): cint =

  fQsciLexerPascal_virtualbase_braceStyle(self.h)

type QsciLexerPascalbraceStyleProc* = proc(): cint
proc onbraceStyle*(self: gen_qscilexerpascal_types.QsciLexerPascal, slot: QsciLexerPascalbraceStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerPascalbraceStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_braceStyle(self: ptr cQsciLexerPascal, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPascal_braceStyle ".} =
  var nimfunc = cast[ptr QsciLexerPascalbraceStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPascalcaseSensitive*(self: gen_qscilexerpascal_types.QsciLexerPascal, ): bool =

  fQsciLexerPascal_virtualbase_caseSensitive(self.h)

type QsciLexerPascalcaseSensitiveProc* = proc(): bool
proc oncaseSensitive*(self: gen_qscilexerpascal_types.QsciLexerPascal, slot: QsciLexerPascalcaseSensitiveProc) =
  # TODO check subclass
  var tmp = new QsciLexerPascalcaseSensitiveProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_caseSensitive(self: ptr cQsciLexerPascal, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerPascal_caseSensitive ".} =
  var nimfunc = cast[ptr QsciLexerPascalcaseSensitiveProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPascalcolor*(self: gen_qscilexerpascal_types.QsciLexerPascal, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fQsciLexerPascal_virtualbase_color(self.h, style))

type QsciLexerPascalcolorProc* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: gen_qscilexerpascal_types.QsciLexerPascal, slot: QsciLexerPascalcolorProc) =
  # TODO check subclass
  var tmp = new QsciLexerPascalcolorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_color(self: ptr cQsciLexerPascal, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPascal_color ".} =
  var nimfunc = cast[ptr QsciLexerPascalcolorProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerPascaleolFill*(self: gen_qscilexerpascal_types.QsciLexerPascal, style: cint): bool =

  fQsciLexerPascal_virtualbase_eolFill(self.h, style)

type QsciLexerPascaleolFillProc* = proc(style: cint): bool
proc oneolFill*(self: gen_qscilexerpascal_types.QsciLexerPascal, slot: QsciLexerPascaleolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerPascaleolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_eolFill(self: ptr cQsciLexerPascal, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerPascal_eolFill ".} =
  var nimfunc = cast[ptr QsciLexerPascaleolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerPascalfont*(self: gen_qscilexerpascal_types.QsciLexerPascal, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fQsciLexerPascal_virtualbase_font(self.h, style))

type QsciLexerPascalfontProc* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: gen_qscilexerpascal_types.QsciLexerPascal, slot: QsciLexerPascalfontProc) =
  # TODO check subclass
  var tmp = new QsciLexerPascalfontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_font(self: ptr cQsciLexerPascal, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPascal_font ".} =
  var nimfunc = cast[ptr QsciLexerPascalfontProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerPascalindentationGuideView*(self: gen_qscilexerpascal_types.QsciLexerPascal, ): cint =

  fQsciLexerPascal_virtualbase_indentationGuideView(self.h)

type QsciLexerPascalindentationGuideViewProc* = proc(): cint
proc onindentationGuideView*(self: gen_qscilexerpascal_types.QsciLexerPascal, slot: QsciLexerPascalindentationGuideViewProc) =
  # TODO check subclass
  var tmp = new QsciLexerPascalindentationGuideViewProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_indentationGuideView(self: ptr cQsciLexerPascal, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPascal_indentationGuideView ".} =
  var nimfunc = cast[ptr QsciLexerPascalindentationGuideViewProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPascalkeywords*(self: gen_qscilexerpascal_types.QsciLexerPascal, set: cint): cstring =

  (fQsciLexerPascal_virtualbase_keywords(self.h, set))

type QsciLexerPascalkeywordsProc* = proc(set: cint): cstring
proc onkeywords*(self: gen_qscilexerpascal_types.QsciLexerPascal, slot: QsciLexerPascalkeywordsProc) =
  # TODO check subclass
  var tmp = new QsciLexerPascalkeywordsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_keywords(self: ptr cQsciLexerPascal, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerPascal_keywords ".} =
  var nimfunc = cast[ptr QsciLexerPascalkeywordsProc](cast[pointer](slot))
  let slotval1 = set


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerPascaldefaultStyle*(self: gen_qscilexerpascal_types.QsciLexerPascal, ): cint =

  fQsciLexerPascal_virtualbase_defaultStyle(self.h)

type QsciLexerPascaldefaultStyleProc* = proc(): cint
proc ondefaultStyle*(self: gen_qscilexerpascal_types.QsciLexerPascal, slot: QsciLexerPascaldefaultStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerPascaldefaultStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_defaultStyle(self: ptr cQsciLexerPascal, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPascal_defaultStyle ".} =
  var nimfunc = cast[ptr QsciLexerPascaldefaultStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QsciLexerPascaldescriptionProc* = proc(style: cint): string
proc ondescription*(self: gen_qscilexerpascal_types.QsciLexerPascal, slot: QsciLexerPascaldescriptionProc) =
  # TODO check subclass
  var tmp = new QsciLexerPascaldescriptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_description(self: ptr cQsciLexerPascal, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerPascal_description ".} =
  var nimfunc = cast[ptr QsciLexerPascaldescriptionProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc QsciLexerPascalpaper*(self: gen_qscilexerpascal_types.QsciLexerPascal, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fQsciLexerPascal_virtualbase_paper(self.h, style))

type QsciLexerPascalpaperProc* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: gen_qscilexerpascal_types.QsciLexerPascal, slot: QsciLexerPascalpaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerPascalpaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_paper(self: ptr cQsciLexerPascal, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPascal_paper ".} =
  var nimfunc = cast[ptr QsciLexerPascalpaperProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerPascaldefaultColorWithStyle*(self: gen_qscilexerpascal_types.QsciLexerPascal, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fQsciLexerPascal_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerPascaldefaultColorWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColorWithStyle*(self: gen_qscilexerpascal_types.QsciLexerPascal, slot: QsciLexerPascaldefaultColorWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerPascaldefaultColorWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_defaultColorWithStyle(self: ptr cQsciLexerPascal, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPascal_defaultColorWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerPascaldefaultColorWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerPascaldefaultEolFill*(self: gen_qscilexerpascal_types.QsciLexerPascal, style: cint): bool =

  fQsciLexerPascal_virtualbase_defaultEolFill(self.h, style)

type QsciLexerPascaldefaultEolFillProc* = proc(style: cint): bool
proc ondefaultEolFill*(self: gen_qscilexerpascal_types.QsciLexerPascal, slot: QsciLexerPascaldefaultEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerPascaldefaultEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_defaultEolFill(self: ptr cQsciLexerPascal, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerPascal_defaultEolFill ".} =
  var nimfunc = cast[ptr QsciLexerPascaldefaultEolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerPascaldefaultFontWithStyle*(self: gen_qscilexerpascal_types.QsciLexerPascal, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fQsciLexerPascal_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerPascaldefaultFontWithStyleProc* = proc(style: cint): gen_qfont.QFont
proc ondefaultFontWithStyle*(self: gen_qscilexerpascal_types.QsciLexerPascal, slot: QsciLexerPascaldefaultFontWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerPascaldefaultFontWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_defaultFontWithStyle(self: ptr cQsciLexerPascal, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPascal_defaultFontWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerPascaldefaultFontWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerPascaldefaultPaperWithStyle*(self: gen_qscilexerpascal_types.QsciLexerPascal, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fQsciLexerPascal_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerPascaldefaultPaperWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaperWithStyle*(self: gen_qscilexerpascal_types.QsciLexerPascal, slot: QsciLexerPascaldefaultPaperWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerPascaldefaultPaperWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_defaultPaperWithStyle(self: ptr cQsciLexerPascal, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPascal_defaultPaperWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerPascaldefaultPaperWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerPascalsetEditor*(self: gen_qscilexerpascal_types.QsciLexerPascal, editor: gen_qsciscintilla.QsciScintilla): void =

  fQsciLexerPascal_virtualbase_setEditor(self.h, editor.h)

type QsciLexerPascalsetEditorProc* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: gen_qscilexerpascal_types.QsciLexerPascal, slot: QsciLexerPascalsetEditorProc) =
  # TODO check subclass
  var tmp = new QsciLexerPascalsetEditorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_setEditor(self: ptr cQsciLexerPascal, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPascal_setEditor ".} =
  var nimfunc = cast[ptr QsciLexerPascalsetEditorProc](cast[pointer](slot))
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](slotval1)
proc QsciLexerPascalrefreshProperties*(self: gen_qscilexerpascal_types.QsciLexerPascal, ): void =

  fQsciLexerPascal_virtualbase_refreshProperties(self.h)

type QsciLexerPascalrefreshPropertiesProc* = proc(): void
proc onrefreshProperties*(self: gen_qscilexerpascal_types.QsciLexerPascal, slot: QsciLexerPascalrefreshPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerPascalrefreshPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_refreshProperties(self: ptr cQsciLexerPascal, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerPascal_refreshProperties ".} =
  var nimfunc = cast[ptr QsciLexerPascalrefreshPropertiesProc](cast[pointer](slot))

  nimfunc[]()
proc QsciLexerPascalstyleBitsNeeded*(self: gen_qscilexerpascal_types.QsciLexerPascal, ): cint =

  fQsciLexerPascal_virtualbase_styleBitsNeeded(self.h)

type QsciLexerPascalstyleBitsNeededProc* = proc(): cint
proc onstyleBitsNeeded*(self: gen_qscilexerpascal_types.QsciLexerPascal, slot: QsciLexerPascalstyleBitsNeededProc) =
  # TODO check subclass
  var tmp = new QsciLexerPascalstyleBitsNeededProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_styleBitsNeeded(self: ptr cQsciLexerPascal, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPascal_styleBitsNeeded ".} =
  var nimfunc = cast[ptr QsciLexerPascalstyleBitsNeededProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPascalwordCharacters*(self: gen_qscilexerpascal_types.QsciLexerPascal, ): cstring =

  (fQsciLexerPascal_virtualbase_wordCharacters(self.h))

type QsciLexerPascalwordCharactersProc* = proc(): cstring
proc onwordCharacters*(self: gen_qscilexerpascal_types.QsciLexerPascal, slot: QsciLexerPascalwordCharactersProc) =
  # TODO check subclass
  var tmp = new QsciLexerPascalwordCharactersProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_wordCharacters(self: ptr cQsciLexerPascal, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerPascal_wordCharacters ".} =
  var nimfunc = cast[ptr QsciLexerPascalwordCharactersProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPascalsetAutoIndentStyle*(self: gen_qscilexerpascal_types.QsciLexerPascal, autoindentstyle: cint): void =

  fQsciLexerPascal_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerPascalsetAutoIndentStyleProc* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: gen_qscilexerpascal_types.QsciLexerPascal, slot: QsciLexerPascalsetAutoIndentStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerPascalsetAutoIndentStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_setAutoIndentStyle(self: ptr cQsciLexerPascal, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerPascal_setAutoIndentStyle ".} =
  var nimfunc = cast[ptr QsciLexerPascalsetAutoIndentStyleProc](cast[pointer](slot))
  let slotval1 = autoindentstyle


  nimfunc[](slotval1)
proc QsciLexerPascalsetColor*(self: gen_qscilexerpascal_types.QsciLexerPascal, c: gen_qcolor.QColor, style: cint): void =

  fQsciLexerPascal_virtualbase_setColor(self.h, c.h, style)

type QsciLexerPascalsetColorProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: gen_qscilexerpascal_types.QsciLexerPascal, slot: QsciLexerPascalsetColorProc) =
  # TODO check subclass
  var tmp = new QsciLexerPascalsetColorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_setColor(self: ptr cQsciLexerPascal, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerPascal_setColor ".} =
  var nimfunc = cast[ptr QsciLexerPascalsetColorProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerPascalsetEolFill*(self: gen_qscilexerpascal_types.QsciLexerPascal, eoffill: bool, style: cint): void =

  fQsciLexerPascal_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerPascalsetEolFillProc* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: gen_qscilexerpascal_types.QsciLexerPascal, slot: QsciLexerPascalsetEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerPascalsetEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_setEolFill(self: ptr cQsciLexerPascal, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerPascal_setEolFill ".} =
  var nimfunc = cast[ptr QsciLexerPascalsetEolFillProc](cast[pointer](slot))
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerPascalsetFont*(self: gen_qscilexerpascal_types.QsciLexerPascal, f: gen_qfont.QFont, style: cint): void =

  fQsciLexerPascal_virtualbase_setFont(self.h, f.h, style)

type QsciLexerPascalsetFontProc* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: gen_qscilexerpascal_types.QsciLexerPascal, slot: QsciLexerPascalsetFontProc) =
  # TODO check subclass
  var tmp = new QsciLexerPascalsetFontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_setFont(self: ptr cQsciLexerPascal, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerPascal_setFont ".} =
  var nimfunc = cast[ptr QsciLexerPascalsetFontProc](cast[pointer](slot))
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerPascalsetPaper*(self: gen_qscilexerpascal_types.QsciLexerPascal, c: gen_qcolor.QColor, style: cint): void =

  fQsciLexerPascal_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerPascalsetPaperProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: gen_qscilexerpascal_types.QsciLexerPascal, slot: QsciLexerPascalsetPaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerPascalsetPaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_setPaper(self: ptr cQsciLexerPascal, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerPascal_setPaper ".} =
  var nimfunc = cast[ptr QsciLexerPascalsetPaperProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerPascalreadProperties*(self: gen_qscilexerpascal_types.QsciLexerPascal, qs: gen_qsettings.QSettings, prefix: string): bool =

  fQsciLexerPascal_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerPascalreadPropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: gen_qscilexerpascal_types.QsciLexerPascal, slot: QsciLexerPascalreadPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerPascalreadPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_readProperties(self: ptr cQsciLexerPascal, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerPascal_readProperties ".} =
  var nimfunc = cast[ptr QsciLexerPascalreadPropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerPascalwriteProperties*(self: gen_qscilexerpascal_types.QsciLexerPascal, qs: gen_qsettings.QSettings, prefix: string): bool =

  fQsciLexerPascal_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerPascalwritePropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: gen_qscilexerpascal_types.QsciLexerPascal, slot: QsciLexerPascalwritePropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerPascalwritePropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_writeProperties(self: ptr cQsciLexerPascal, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerPascal_writeProperties ".} =
  var nimfunc = cast[ptr QsciLexerPascalwritePropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerPascalevent*(self: gen_qscilexerpascal_types.QsciLexerPascal, event: gen_qcoreevent.QEvent): bool =

  fQsciLexerPascal_virtualbase_event(self.h, event.h)

type QsciLexerPascaleventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qscilexerpascal_types.QsciLexerPascal, slot: QsciLexerPascaleventProc) =
  # TODO check subclass
  var tmp = new QsciLexerPascaleventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_event(self: ptr cQsciLexerPascal, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerPascal_event ".} =
  var nimfunc = cast[ptr QsciLexerPascaleventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerPascaleventFilter*(self: gen_qscilexerpascal_types.QsciLexerPascal, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =

  fQsciLexerPascal_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerPascaleventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qscilexerpascal_types.QsciLexerPascal, slot: QsciLexerPascaleventFilterProc) =
  # TODO check subclass
  var tmp = new QsciLexerPascaleventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_eventFilter(self: ptr cQsciLexerPascal, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerPascal_eventFilter ".} =
  var nimfunc = cast[ptr QsciLexerPascaleventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerPascaltimerEvent*(self: gen_qscilexerpascal_types.QsciLexerPascal, event: gen_qcoreevent.QTimerEvent): void =

  fQsciLexerPascal_virtualbase_timerEvent(self.h, event.h)

type QsciLexerPascaltimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qscilexerpascal_types.QsciLexerPascal, slot: QsciLexerPascaltimerEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerPascaltimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_timerEvent(self: ptr cQsciLexerPascal, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPascal_timerEvent ".} =
  var nimfunc = cast[ptr QsciLexerPascaltimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerPascalchildEvent*(self: gen_qscilexerpascal_types.QsciLexerPascal, event: gen_qcoreevent.QChildEvent): void =

  fQsciLexerPascal_virtualbase_childEvent(self.h, event.h)

type QsciLexerPascalchildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qscilexerpascal_types.QsciLexerPascal, slot: QsciLexerPascalchildEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerPascalchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_childEvent(self: ptr cQsciLexerPascal, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPascal_childEvent ".} =
  var nimfunc = cast[ptr QsciLexerPascalchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerPascalcustomEvent*(self: gen_qscilexerpascal_types.QsciLexerPascal, event: gen_qcoreevent.QEvent): void =

  fQsciLexerPascal_virtualbase_customEvent(self.h, event.h)

type QsciLexerPascalcustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qscilexerpascal_types.QsciLexerPascal, slot: QsciLexerPascalcustomEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerPascalcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_customEvent(self: ptr cQsciLexerPascal, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPascal_customEvent ".} =
  var nimfunc = cast[ptr QsciLexerPascalcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerPascalconnectNotify*(self: gen_qscilexerpascal_types.QsciLexerPascal, signal: gen_qmetaobject.QMetaMethod): void =

  fQsciLexerPascal_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerPascalconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qscilexerpascal_types.QsciLexerPascal, slot: QsciLexerPascalconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerPascalconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_connectNotify(self: ptr cQsciLexerPascal, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPascal_connectNotify ".} =
  var nimfunc = cast[ptr QsciLexerPascalconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QsciLexerPascaldisconnectNotify*(self: gen_qscilexerpascal_types.QsciLexerPascal, signal: gen_qmetaobject.QMetaMethod): void =

  fQsciLexerPascal_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerPascaldisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qscilexerpascal_types.QsciLexerPascal, slot: QsciLexerPascaldisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerPascaldisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_disconnectNotify(self: ptr cQsciLexerPascal, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPascal_disconnectNotify ".} =
  var nimfunc = cast[ptr QsciLexerPascaldisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qscilexerpascal_types.QsciLexerPascal): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerPascal_staticMetaObject())
proc delete*(self: gen_qscilexerpascal_types.QsciLexerPascal) =
  fcQsciLexerPascal_delete(self.h)
