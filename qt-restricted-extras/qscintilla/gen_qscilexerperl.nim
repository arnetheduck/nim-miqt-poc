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
{.compile("gen_qscilexerperl.cpp", cflags).}


type QsciLexerPerlEnumEnum* = distinct cint
template Default*(_: type QsciLexerPerlEnumEnum): untyped = 0
template Error*(_: type QsciLexerPerlEnumEnum): untyped = 1
template Comment*(_: type QsciLexerPerlEnumEnum): untyped = 2
template POD*(_: type QsciLexerPerlEnumEnum): untyped = 3
template Number*(_: type QsciLexerPerlEnumEnum): untyped = 4
template Keyword*(_: type QsciLexerPerlEnumEnum): untyped = 5
template DoubleQuotedString*(_: type QsciLexerPerlEnumEnum): untyped = 6
template SingleQuotedString*(_: type QsciLexerPerlEnumEnum): untyped = 7
template Operator*(_: type QsciLexerPerlEnumEnum): untyped = 10
template Identifier*(_: type QsciLexerPerlEnumEnum): untyped = 11
template Scalar*(_: type QsciLexerPerlEnumEnum): untyped = 12
template Array*(_: type QsciLexerPerlEnumEnum): untyped = 13
template Hash*(_: type QsciLexerPerlEnumEnum): untyped = 14
template SymbolTable*(_: type QsciLexerPerlEnumEnum): untyped = 15
template Regex*(_: type QsciLexerPerlEnumEnum): untyped = 17
template Substitution*(_: type QsciLexerPerlEnumEnum): untyped = 18
template Backticks*(_: type QsciLexerPerlEnumEnum): untyped = 20
template DataSection*(_: type QsciLexerPerlEnumEnum): untyped = 21
template HereDocumentDelimiter*(_: type QsciLexerPerlEnumEnum): untyped = 22
template SingleQuotedHereDocument*(_: type QsciLexerPerlEnumEnum): untyped = 23
template DoubleQuotedHereDocument*(_: type QsciLexerPerlEnumEnum): untyped = 24
template BacktickHereDocument*(_: type QsciLexerPerlEnumEnum): untyped = 25
template QuotedStringQ*(_: type QsciLexerPerlEnumEnum): untyped = 26
template QuotedStringQQ*(_: type QsciLexerPerlEnumEnum): untyped = 27
template QuotedStringQX*(_: type QsciLexerPerlEnumEnum): untyped = 28
template QuotedStringQR*(_: type QsciLexerPerlEnumEnum): untyped = 29
template QuotedStringQW*(_: type QsciLexerPerlEnumEnum): untyped = 30
template PODVerbatim*(_: type QsciLexerPerlEnumEnum): untyped = 31
template SubroutinePrototype*(_: type QsciLexerPerlEnumEnum): untyped = 40
template FormatIdentifier*(_: type QsciLexerPerlEnumEnum): untyped = 41
template FormatBody*(_: type QsciLexerPerlEnumEnum): untyped = 42
template DoubleQuotedStringVar*(_: type QsciLexerPerlEnumEnum): untyped = 43
template Translation*(_: type QsciLexerPerlEnumEnum): untyped = 44
template RegexVar*(_: type QsciLexerPerlEnumEnum): untyped = 54
template SubstitutionVar*(_: type QsciLexerPerlEnumEnum): untyped = 55
template BackticksVar*(_: type QsciLexerPerlEnumEnum): untyped = 57
template DoubleQuotedHereDocumentVar*(_: type QsciLexerPerlEnumEnum): untyped = 61
template BacktickHereDocumentVar*(_: type QsciLexerPerlEnumEnum): untyped = 62
template QuotedStringQQVar*(_: type QsciLexerPerlEnumEnum): untyped = 64
template QuotedStringQXVar*(_: type QsciLexerPerlEnumEnum): untyped = 65
template QuotedStringQRVar*(_: type QsciLexerPerlEnumEnum): untyped = 66


import gen_qscilexerperl_types
export gen_qscilexerperl_types

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

type cQsciLexerPerl*{.exportc: "QsciLexerPerl", incompleteStruct.} = object

proc fcQsciLexerPerl_new(): ptr cQsciLexerPerl {.importc: "QsciLexerPerl_new".}
proc fcQsciLexerPerl_new2(parent: pointer): ptr cQsciLexerPerl {.importc: "QsciLexerPerl_new2".}
proc fcQsciLexerPerl_metaObject(self: pointer, ): pointer {.importc: "QsciLexerPerl_metaObject".}
proc fcQsciLexerPerl_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerPerl_metacast".}
proc fcQsciLexerPerl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerPerl_metacall".}
proc fcQsciLexerPerl_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerPerl_tr".}
proc fcQsciLexerPerl_trUtf8(s: cstring): struct_miqt_string {.importc: "QsciLexerPerl_trUtf8".}
proc fcQsciLexerPerl_language(self: pointer, ): cstring {.importc: "QsciLexerPerl_language".}
proc fcQsciLexerPerl_lexer(self: pointer, ): cstring {.importc: "QsciLexerPerl_lexer".}
proc fcQsciLexerPerl_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array {.importc: "QsciLexerPerl_autoCompletionWordSeparators".}
proc fcQsciLexerPerl_blockEnd(self: pointer, ): cstring {.importc: "QsciLexerPerl_blockEnd".}
proc fcQsciLexerPerl_blockStart(self: pointer, ): cstring {.importc: "QsciLexerPerl_blockStart".}
proc fcQsciLexerPerl_braceStyle(self: pointer, ): cint {.importc: "QsciLexerPerl_braceStyle".}
proc fcQsciLexerPerl_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerPerl_wordCharacters".}
proc fcQsciLexerPerl_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerPerl_defaultColor".}
proc fcQsciLexerPerl_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerPerl_defaultEolFill".}
proc fcQsciLexerPerl_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerPerl_defaultFont".}
proc fcQsciLexerPerl_defaultPaper(self: pointer, style: cint): pointer {.importc: "QsciLexerPerl_defaultPaper".}
proc fcQsciLexerPerl_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerPerl_keywords".}
proc fcQsciLexerPerl_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerPerl_description".}
proc fcQsciLexerPerl_refreshProperties(self: pointer, ): void {.importc: "QsciLexerPerl_refreshProperties".}
proc fcQsciLexerPerl_setFoldAtElse(self: pointer, fold: bool): void {.importc: "QsciLexerPerl_setFoldAtElse".}
proc fcQsciLexerPerl_foldAtElse(self: pointer, ): bool {.importc: "QsciLexerPerl_foldAtElse".}
proc fcQsciLexerPerl_foldComments(self: pointer, ): bool {.importc: "QsciLexerPerl_foldComments".}
proc fcQsciLexerPerl_foldCompact(self: pointer, ): bool {.importc: "QsciLexerPerl_foldCompact".}
proc fcQsciLexerPerl_setFoldPackages(self: pointer, fold: bool): void {.importc: "QsciLexerPerl_setFoldPackages".}
proc fcQsciLexerPerl_foldPackages(self: pointer, ): bool {.importc: "QsciLexerPerl_foldPackages".}
proc fcQsciLexerPerl_setFoldPODBlocks(self: pointer, fold: bool): void {.importc: "QsciLexerPerl_setFoldPODBlocks".}
proc fcQsciLexerPerl_foldPODBlocks(self: pointer, ): bool {.importc: "QsciLexerPerl_foldPODBlocks".}
proc fcQsciLexerPerl_setFoldComments(self: pointer, fold: bool): void {.importc: "QsciLexerPerl_setFoldComments".}
proc fcQsciLexerPerl_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerPerl_setFoldCompact".}
proc fcQsciLexerPerl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerPerl_tr2".}
proc fcQsciLexerPerl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerPerl_tr3".}
proc fcQsciLexerPerl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerPerl_trUtf82".}
proc fcQsciLexerPerl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerPerl_trUtf83".}
proc fcQsciLexerPerl_blockEnd1(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerPerl_blockEnd1".}
proc fcQsciLexerPerl_blockStart1(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerPerl_blockStart1".}
proc fQsciLexerPerl_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QsciLexerPerl_virtualbase_metaObject".}
proc fcQsciLexerPerl_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QsciLexerPerl_override_virtual_metaObject".}
proc fQsciLexerPerl_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QsciLexerPerl_virtualbase_metacast".}
proc fcQsciLexerPerl_override_virtual_metacast(self: pointer, slot: int) {.importc: "QsciLexerPerl_override_virtual_metacast".}
proc fQsciLexerPerl_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciLexerPerl_virtualbase_metacall".}
proc fcQsciLexerPerl_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciLexerPerl_override_virtual_metacall".}
proc fQsciLexerPerl_virtualbase_setFoldComments(self: pointer, fold: bool): void{.importc: "QsciLexerPerl_virtualbase_setFoldComments".}
proc fcQsciLexerPerl_override_virtual_setFoldComments(self: pointer, slot: int) {.importc: "QsciLexerPerl_override_virtual_setFoldComments".}
proc fQsciLexerPerl_virtualbase_setFoldCompact(self: pointer, fold: bool): void{.importc: "QsciLexerPerl_virtualbase_setFoldCompact".}
proc fcQsciLexerPerl_override_virtual_setFoldCompact(self: pointer, slot: int) {.importc: "QsciLexerPerl_override_virtual_setFoldCompact".}
proc fcQsciLexerPerl_override_virtual_language(self: pointer, slot: int) {.importc: "QsciLexerPerl_override_virtual_language".}
proc fQsciLexerPerl_virtualbase_lexer(self: pointer, ): cstring{.importc: "QsciLexerPerl_virtualbase_lexer".}
proc fcQsciLexerPerl_override_virtual_lexer(self: pointer, slot: int) {.importc: "QsciLexerPerl_override_virtual_lexer".}
proc fQsciLexerPerl_virtualbase_lexerId(self: pointer, ): cint{.importc: "QsciLexerPerl_virtualbase_lexerId".}
proc fcQsciLexerPerl_override_virtual_lexerId(self: pointer, slot: int) {.importc: "QsciLexerPerl_override_virtual_lexerId".}
proc fQsciLexerPerl_virtualbase_autoCompletionFillups(self: pointer, ): cstring{.importc: "QsciLexerPerl_virtualbase_autoCompletionFillups".}
proc fcQsciLexerPerl_override_virtual_autoCompletionFillups(self: pointer, slot: int) {.importc: "QsciLexerPerl_override_virtual_autoCompletionFillups".}
proc fQsciLexerPerl_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array{.importc: "QsciLexerPerl_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerPerl_override_virtual_autoCompletionWordSeparators(self: pointer, slot: int) {.importc: "QsciLexerPerl_override_virtual_autoCompletionWordSeparators".}
proc fQsciLexerPerl_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerPerl_virtualbase_blockEnd".}
proc fcQsciLexerPerl_override_virtual_blockEnd(self: pointer, slot: int) {.importc: "QsciLexerPerl_override_virtual_blockEnd".}
proc fQsciLexerPerl_virtualbase_blockLookback(self: pointer, ): cint{.importc: "QsciLexerPerl_virtualbase_blockLookback".}
proc fcQsciLexerPerl_override_virtual_blockLookback(self: pointer, slot: int) {.importc: "QsciLexerPerl_override_virtual_blockLookback".}
proc fQsciLexerPerl_virtualbase_blockStart(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerPerl_virtualbase_blockStart".}
proc fcQsciLexerPerl_override_virtual_blockStart(self: pointer, slot: int) {.importc: "QsciLexerPerl_override_virtual_blockStart".}
proc fQsciLexerPerl_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerPerl_virtualbase_blockStartKeyword".}
proc fcQsciLexerPerl_override_virtual_blockStartKeyword(self: pointer, slot: int) {.importc: "QsciLexerPerl_override_virtual_blockStartKeyword".}
proc fQsciLexerPerl_virtualbase_braceStyle(self: pointer, ): cint{.importc: "QsciLexerPerl_virtualbase_braceStyle".}
proc fcQsciLexerPerl_override_virtual_braceStyle(self: pointer, slot: int) {.importc: "QsciLexerPerl_override_virtual_braceStyle".}
proc fQsciLexerPerl_virtualbase_caseSensitive(self: pointer, ): bool{.importc: "QsciLexerPerl_virtualbase_caseSensitive".}
proc fcQsciLexerPerl_override_virtual_caseSensitive(self: pointer, slot: int) {.importc: "QsciLexerPerl_override_virtual_caseSensitive".}
proc fQsciLexerPerl_virtualbase_color(self: pointer, style: cint): pointer{.importc: "QsciLexerPerl_virtualbase_color".}
proc fcQsciLexerPerl_override_virtual_color(self: pointer, slot: int) {.importc: "QsciLexerPerl_override_virtual_color".}
proc fQsciLexerPerl_virtualbase_eolFill(self: pointer, style: cint): bool{.importc: "QsciLexerPerl_virtualbase_eolFill".}
proc fcQsciLexerPerl_override_virtual_eolFill(self: pointer, slot: int) {.importc: "QsciLexerPerl_override_virtual_eolFill".}
proc fQsciLexerPerl_virtualbase_font(self: pointer, style: cint): pointer{.importc: "QsciLexerPerl_virtualbase_font".}
proc fcQsciLexerPerl_override_virtual_font(self: pointer, slot: int) {.importc: "QsciLexerPerl_override_virtual_font".}
proc fQsciLexerPerl_virtualbase_indentationGuideView(self: pointer, ): cint{.importc: "QsciLexerPerl_virtualbase_indentationGuideView".}
proc fcQsciLexerPerl_override_virtual_indentationGuideView(self: pointer, slot: int) {.importc: "QsciLexerPerl_override_virtual_indentationGuideView".}
proc fQsciLexerPerl_virtualbase_keywords(self: pointer, set: cint): cstring{.importc: "QsciLexerPerl_virtualbase_keywords".}
proc fcQsciLexerPerl_override_virtual_keywords(self: pointer, slot: int) {.importc: "QsciLexerPerl_override_virtual_keywords".}
proc fQsciLexerPerl_virtualbase_defaultStyle(self: pointer, ): cint{.importc: "QsciLexerPerl_virtualbase_defaultStyle".}
proc fcQsciLexerPerl_override_virtual_defaultStyle(self: pointer, slot: int) {.importc: "QsciLexerPerl_override_virtual_defaultStyle".}
proc fcQsciLexerPerl_override_virtual_description(self: pointer, slot: int) {.importc: "QsciLexerPerl_override_virtual_description".}
proc fQsciLexerPerl_virtualbase_paper(self: pointer, style: cint): pointer{.importc: "QsciLexerPerl_virtualbase_paper".}
proc fcQsciLexerPerl_override_virtual_paper(self: pointer, slot: int) {.importc: "QsciLexerPerl_override_virtual_paper".}
proc fQsciLexerPerl_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerPerl_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerPerl_override_virtual_defaultColorWithStyle(self: pointer, slot: int) {.importc: "QsciLexerPerl_override_virtual_defaultColorWithStyle".}
proc fQsciLexerPerl_virtualbase_defaultEolFill(self: pointer, style: cint): bool{.importc: "QsciLexerPerl_virtualbase_defaultEolFill".}
proc fcQsciLexerPerl_override_virtual_defaultEolFill(self: pointer, slot: int) {.importc: "QsciLexerPerl_override_virtual_defaultEolFill".}
proc fQsciLexerPerl_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerPerl_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerPerl_override_virtual_defaultFontWithStyle(self: pointer, slot: int) {.importc: "QsciLexerPerl_override_virtual_defaultFontWithStyle".}
proc fQsciLexerPerl_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerPerl_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerPerl_override_virtual_defaultPaperWithStyle(self: pointer, slot: int) {.importc: "QsciLexerPerl_override_virtual_defaultPaperWithStyle".}
proc fQsciLexerPerl_virtualbase_setEditor(self: pointer, editor: pointer): void{.importc: "QsciLexerPerl_virtualbase_setEditor".}
proc fcQsciLexerPerl_override_virtual_setEditor(self: pointer, slot: int) {.importc: "QsciLexerPerl_override_virtual_setEditor".}
proc fQsciLexerPerl_virtualbase_refreshProperties(self: pointer, ): void{.importc: "QsciLexerPerl_virtualbase_refreshProperties".}
proc fcQsciLexerPerl_override_virtual_refreshProperties(self: pointer, slot: int) {.importc: "QsciLexerPerl_override_virtual_refreshProperties".}
proc fQsciLexerPerl_virtualbase_styleBitsNeeded(self: pointer, ): cint{.importc: "QsciLexerPerl_virtualbase_styleBitsNeeded".}
proc fcQsciLexerPerl_override_virtual_styleBitsNeeded(self: pointer, slot: int) {.importc: "QsciLexerPerl_override_virtual_styleBitsNeeded".}
proc fQsciLexerPerl_virtualbase_wordCharacters(self: pointer, ): cstring{.importc: "QsciLexerPerl_virtualbase_wordCharacters".}
proc fcQsciLexerPerl_override_virtual_wordCharacters(self: pointer, slot: int) {.importc: "QsciLexerPerl_override_virtual_wordCharacters".}
proc fQsciLexerPerl_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void{.importc: "QsciLexerPerl_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerPerl_override_virtual_setAutoIndentStyle(self: pointer, slot: int) {.importc: "QsciLexerPerl_override_virtual_setAutoIndentStyle".}
proc fQsciLexerPerl_virtualbase_setColor(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerPerl_virtualbase_setColor".}
proc fcQsciLexerPerl_override_virtual_setColor(self: pointer, slot: int) {.importc: "QsciLexerPerl_override_virtual_setColor".}
proc fQsciLexerPerl_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void{.importc: "QsciLexerPerl_virtualbase_setEolFill".}
proc fcQsciLexerPerl_override_virtual_setEolFill(self: pointer, slot: int) {.importc: "QsciLexerPerl_override_virtual_setEolFill".}
proc fQsciLexerPerl_virtualbase_setFont(self: pointer, f: pointer, style: cint): void{.importc: "QsciLexerPerl_virtualbase_setFont".}
proc fcQsciLexerPerl_override_virtual_setFont(self: pointer, slot: int) {.importc: "QsciLexerPerl_override_virtual_setFont".}
proc fQsciLexerPerl_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerPerl_virtualbase_setPaper".}
proc fcQsciLexerPerl_override_virtual_setPaper(self: pointer, slot: int) {.importc: "QsciLexerPerl_override_virtual_setPaper".}
proc fQsciLexerPerl_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerPerl_virtualbase_readProperties".}
proc fcQsciLexerPerl_override_virtual_readProperties(self: pointer, slot: int) {.importc: "QsciLexerPerl_override_virtual_readProperties".}
proc fQsciLexerPerl_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerPerl_virtualbase_writeProperties".}
proc fcQsciLexerPerl_override_virtual_writeProperties(self: pointer, slot: int) {.importc: "QsciLexerPerl_override_virtual_writeProperties".}
proc fQsciLexerPerl_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QsciLexerPerl_virtualbase_event".}
proc fcQsciLexerPerl_override_virtual_event(self: pointer, slot: int) {.importc: "QsciLexerPerl_override_virtual_event".}
proc fQsciLexerPerl_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciLexerPerl_virtualbase_eventFilter".}
proc fcQsciLexerPerl_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciLexerPerl_override_virtual_eventFilter".}
proc fQsciLexerPerl_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciLexerPerl_virtualbase_timerEvent".}
proc fcQsciLexerPerl_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciLexerPerl_override_virtual_timerEvent".}
proc fQsciLexerPerl_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciLexerPerl_virtualbase_childEvent".}
proc fcQsciLexerPerl_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciLexerPerl_override_virtual_childEvent".}
proc fQsciLexerPerl_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciLexerPerl_virtualbase_customEvent".}
proc fcQsciLexerPerl_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciLexerPerl_override_virtual_customEvent".}
proc fQsciLexerPerl_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerPerl_virtualbase_connectNotify".}
proc fcQsciLexerPerl_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciLexerPerl_override_virtual_connectNotify".}
proc fQsciLexerPerl_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerPerl_virtualbase_disconnectNotify".}
proc fcQsciLexerPerl_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciLexerPerl_override_virtual_disconnectNotify".}
proc fcQsciLexerPerl_staticMetaObject(): pointer {.importc: "QsciLexerPerl_staticMetaObject".}
proc fcQsciLexerPerl_delete(self: pointer) {.importc: "QsciLexerPerl_delete".}


func init*(T: type gen_qscilexerperl_types.QsciLexerPerl, h: ptr cQsciLexerPerl): gen_qscilexerperl_types.QsciLexerPerl =
  T(h: h)
proc create*(T: type gen_qscilexerperl_types.QsciLexerPerl, ): gen_qscilexerperl_types.QsciLexerPerl =

  gen_qscilexerperl_types.QsciLexerPerl.init(fcQsciLexerPerl_new())
proc create*(T: type gen_qscilexerperl_types.QsciLexerPerl, parent: gen_qobject.QObject): gen_qscilexerperl_types.QsciLexerPerl =

  gen_qscilexerperl_types.QsciLexerPerl.init(fcQsciLexerPerl_new2(parent.h))
proc metaObject*(self: gen_qscilexerperl_types.QsciLexerPerl, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQsciLexerPerl_metaObject(self.h))

proc metacast*(self: gen_qscilexerperl_types.QsciLexerPerl, param1: cstring): pointer =

  fcQsciLexerPerl_metacast(self.h, param1)

proc metacall*(self: gen_qscilexerperl_types.QsciLexerPerl, param1: cint, param2: cint, param3: pointer): cint =

  fcQsciLexerPerl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexerperl_types.QsciLexerPerl, s: cstring): string =

  let v_ms = fcQsciLexerPerl_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexerperl_types.QsciLexerPerl, s: cstring): string =

  let v_ms = fcQsciLexerPerl_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexerperl_types.QsciLexerPerl, ): cstring =

  (fcQsciLexerPerl_language(self.h))

proc lexer*(self: gen_qscilexerperl_types.QsciLexerPerl, ): cstring =

  (fcQsciLexerPerl_lexer(self.h))

proc autoCompletionWordSeparators*(self: gen_qscilexerperl_types.QsciLexerPerl, ): seq[string] =

  var v_ma = fcQsciLexerPerl_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc blockEnd*(self: gen_qscilexerperl_types.QsciLexerPerl, ): cstring =

  (fcQsciLexerPerl_blockEnd(self.h))

proc blockStart*(self: gen_qscilexerperl_types.QsciLexerPerl, ): cstring =

  (fcQsciLexerPerl_blockStart(self.h))

proc braceStyle*(self: gen_qscilexerperl_types.QsciLexerPerl, ): cint =

  fcQsciLexerPerl_braceStyle(self.h)

proc wordCharacters*(self: gen_qscilexerperl_types.QsciLexerPerl, ): cstring =

  (fcQsciLexerPerl_wordCharacters(self.h))

proc defaultColor*(self: gen_qscilexerperl_types.QsciLexerPerl, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerPerl_defaultColor(self.h, style))

proc defaultEolFill*(self: gen_qscilexerperl_types.QsciLexerPerl, style: cint): bool =

  fcQsciLexerPerl_defaultEolFill(self.h, style)

proc defaultFont*(self: gen_qscilexerperl_types.QsciLexerPerl, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQsciLexerPerl_defaultFont(self.h, style))

proc defaultPaper*(self: gen_qscilexerperl_types.QsciLexerPerl, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerPerl_defaultPaper(self.h, style))

proc keywords*(self: gen_qscilexerperl_types.QsciLexerPerl, set: cint): cstring =

  (fcQsciLexerPerl_keywords(self.h, set))

proc description*(self: gen_qscilexerperl_types.QsciLexerPerl, style: cint): string =

  let v_ms = fcQsciLexerPerl_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: gen_qscilexerperl_types.QsciLexerPerl, ): void =

  fcQsciLexerPerl_refreshProperties(self.h)

proc setFoldAtElse*(self: gen_qscilexerperl_types.QsciLexerPerl, fold: bool): void =

  fcQsciLexerPerl_setFoldAtElse(self.h, fold)

proc foldAtElse*(self: gen_qscilexerperl_types.QsciLexerPerl, ): bool =

  fcQsciLexerPerl_foldAtElse(self.h)

proc foldComments*(self: gen_qscilexerperl_types.QsciLexerPerl, ): bool =

  fcQsciLexerPerl_foldComments(self.h)

proc foldCompact*(self: gen_qscilexerperl_types.QsciLexerPerl, ): bool =

  fcQsciLexerPerl_foldCompact(self.h)

proc setFoldPackages*(self: gen_qscilexerperl_types.QsciLexerPerl, fold: bool): void =

  fcQsciLexerPerl_setFoldPackages(self.h, fold)

proc foldPackages*(self: gen_qscilexerperl_types.QsciLexerPerl, ): bool =

  fcQsciLexerPerl_foldPackages(self.h)

proc setFoldPODBlocks*(self: gen_qscilexerperl_types.QsciLexerPerl, fold: bool): void =

  fcQsciLexerPerl_setFoldPODBlocks(self.h, fold)

proc foldPODBlocks*(self: gen_qscilexerperl_types.QsciLexerPerl, ): bool =

  fcQsciLexerPerl_foldPODBlocks(self.h)

proc setFoldComments*(self: gen_qscilexerperl_types.QsciLexerPerl, fold: bool): void =

  fcQsciLexerPerl_setFoldComments(self.h, fold)

proc setFoldCompact*(self: gen_qscilexerperl_types.QsciLexerPerl, fold: bool): void =

  fcQsciLexerPerl_setFoldCompact(self.h, fold)

proc tr2*(_: type gen_qscilexerperl_types.QsciLexerPerl, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerPerl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type gen_qscilexerperl_types.QsciLexerPerl, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerPerl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type gen_qscilexerperl_types.QsciLexerPerl, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerPerl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type gen_qscilexerperl_types.QsciLexerPerl, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerPerl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc blockEnd1*(self: gen_qscilexerperl_types.QsciLexerPerl, style: ptr cint): cstring =

  (fcQsciLexerPerl_blockEnd1(self.h, style))

proc blockStart1*(self: gen_qscilexerperl_types.QsciLexerPerl, style: ptr cint): cstring =

  (fcQsciLexerPerl_blockStart1(self.h, style))

proc QsciLexerPerlmetaObject*(self: gen_qscilexerperl_types.QsciLexerPerl, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fQsciLexerPerl_virtualbase_metaObject(self.h))

type QsciLexerPerlmetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qscilexerperl_types.QsciLexerPerl, slot: QsciLexerPerlmetaObjectProc) =
  # TODO check subclass
  var tmp = new QsciLexerPerlmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_metaObject(self: ptr cQsciLexerPerl, slot: int): pointer {.exportc: "miqt_exec_callback_QsciLexerPerl_metaObject ".} =
  var nimfunc = cast[ptr QsciLexerPerlmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QsciLexerPerlmetacast*(self: gen_qscilexerperl_types.QsciLexerPerl, param1: cstring): pointer =

  fQsciLexerPerl_virtualbase_metacast(self.h, param1)

type QsciLexerPerlmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qscilexerperl_types.QsciLexerPerl, slot: QsciLexerPerlmetacastProc) =
  # TODO check subclass
  var tmp = new QsciLexerPerlmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_metacast(self: ptr cQsciLexerPerl, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciLexerPerl_metacast ".} =
  var nimfunc = cast[ptr QsciLexerPerlmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerPerlmetacall*(self: gen_qscilexerperl_types.QsciLexerPerl, param1: cint, param2: cint, param3: pointer): cint =

  fQsciLexerPerl_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerPerlmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qscilexerperl_types.QsciLexerPerl, slot: QsciLexerPerlmetacallProc) =
  # TODO check subclass
  var tmp = new QsciLexerPerlmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_metacall(self: ptr cQsciLexerPerl, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerPerl_metacall ".} =
  var nimfunc = cast[ptr QsciLexerPerlmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QsciLexerPerlsetFoldComments*(self: gen_qscilexerperl_types.QsciLexerPerl, fold: bool): void =

  fQsciLexerPerl_virtualbase_setFoldComments(self.h, fold)

type QsciLexerPerlsetFoldCommentsProc* = proc(fold: bool): void
proc onsetFoldComments*(self: gen_qscilexerperl_types.QsciLexerPerl, slot: QsciLexerPerlsetFoldCommentsProc) =
  # TODO check subclass
  var tmp = new QsciLexerPerlsetFoldCommentsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_setFoldComments(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_setFoldComments(self: ptr cQsciLexerPerl, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerPerl_setFoldComments ".} =
  var nimfunc = cast[ptr QsciLexerPerlsetFoldCommentsProc](cast[pointer](slot))
  let slotval1 = fold


  nimfunc[](slotval1)
proc QsciLexerPerlsetFoldCompact*(self: gen_qscilexerperl_types.QsciLexerPerl, fold: bool): void =

  fQsciLexerPerl_virtualbase_setFoldCompact(self.h, fold)

type QsciLexerPerlsetFoldCompactProc* = proc(fold: bool): void
proc onsetFoldCompact*(self: gen_qscilexerperl_types.QsciLexerPerl, slot: QsciLexerPerlsetFoldCompactProc) =
  # TODO check subclass
  var tmp = new QsciLexerPerlsetFoldCompactProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_setFoldCompact(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_setFoldCompact(self: ptr cQsciLexerPerl, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerPerl_setFoldCompact ".} =
  var nimfunc = cast[ptr QsciLexerPerlsetFoldCompactProc](cast[pointer](slot))
  let slotval1 = fold


  nimfunc[](slotval1)
type QsciLexerPerllanguageProc* = proc(): cstring
proc onlanguage*(self: gen_qscilexerperl_types.QsciLexerPerl, slot: QsciLexerPerllanguageProc) =
  # TODO check subclass
  var tmp = new QsciLexerPerllanguageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_language(self: ptr cQsciLexerPerl, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerPerl_language ".} =
  var nimfunc = cast[ptr QsciLexerPerllanguageProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPerllexer*(self: gen_qscilexerperl_types.QsciLexerPerl, ): cstring =

  (fQsciLexerPerl_virtualbase_lexer(self.h))

type QsciLexerPerllexerProc* = proc(): cstring
proc onlexer*(self: gen_qscilexerperl_types.QsciLexerPerl, slot: QsciLexerPerllexerProc) =
  # TODO check subclass
  var tmp = new QsciLexerPerllexerProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_lexer(self: ptr cQsciLexerPerl, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerPerl_lexer ".} =
  var nimfunc = cast[ptr QsciLexerPerllexerProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPerllexerId*(self: gen_qscilexerperl_types.QsciLexerPerl, ): cint =

  fQsciLexerPerl_virtualbase_lexerId(self.h)

type QsciLexerPerllexerIdProc* = proc(): cint
proc onlexerId*(self: gen_qscilexerperl_types.QsciLexerPerl, slot: QsciLexerPerllexerIdProc) =
  # TODO check subclass
  var tmp = new QsciLexerPerllexerIdProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_lexerId(self: ptr cQsciLexerPerl, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPerl_lexerId ".} =
  var nimfunc = cast[ptr QsciLexerPerllexerIdProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPerlautoCompletionFillups*(self: gen_qscilexerperl_types.QsciLexerPerl, ): cstring =

  (fQsciLexerPerl_virtualbase_autoCompletionFillups(self.h))

type QsciLexerPerlautoCompletionFillupsProc* = proc(): cstring
proc onautoCompletionFillups*(self: gen_qscilexerperl_types.QsciLexerPerl, slot: QsciLexerPerlautoCompletionFillupsProc) =
  # TODO check subclass
  var tmp = new QsciLexerPerlautoCompletionFillupsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_autoCompletionFillups(self: ptr cQsciLexerPerl, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerPerl_autoCompletionFillups ".} =
  var nimfunc = cast[ptr QsciLexerPerlautoCompletionFillupsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPerlautoCompletionWordSeparators*(self: gen_qscilexerperl_types.QsciLexerPerl, ): seq[string] =

  var v_ma = fQsciLexerPerl_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerPerlautoCompletionWordSeparatorsProc* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: gen_qscilexerperl_types.QsciLexerPerl, slot: QsciLexerPerlautoCompletionWordSeparatorsProc) =
  # TODO check subclass
  var tmp = new QsciLexerPerlautoCompletionWordSeparatorsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_autoCompletionWordSeparators(self: ptr cQsciLexerPerl, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerPerl_autoCompletionWordSeparators ".} =
  var nimfunc = cast[ptr QsciLexerPerlautoCompletionWordSeparatorsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QsciLexerPerlblockEnd*(self: gen_qscilexerperl_types.QsciLexerPerl, style: ptr cint): cstring =

  (fQsciLexerPerl_virtualbase_blockEnd(self.h, style))

type QsciLexerPerlblockEndProc* = proc(style: ptr cint): cstring
proc onblockEnd*(self: gen_qscilexerperl_types.QsciLexerPerl, slot: QsciLexerPerlblockEndProc) =
  # TODO check subclass
  var tmp = new QsciLexerPerlblockEndProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_blockEnd(self: ptr cQsciLexerPerl, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerPerl_blockEnd ".} =
  var nimfunc = cast[ptr QsciLexerPerlblockEndProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerPerlblockLookback*(self: gen_qscilexerperl_types.QsciLexerPerl, ): cint =

  fQsciLexerPerl_virtualbase_blockLookback(self.h)

type QsciLexerPerlblockLookbackProc* = proc(): cint
proc onblockLookback*(self: gen_qscilexerperl_types.QsciLexerPerl, slot: QsciLexerPerlblockLookbackProc) =
  # TODO check subclass
  var tmp = new QsciLexerPerlblockLookbackProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_blockLookback(self: ptr cQsciLexerPerl, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPerl_blockLookback ".} =
  var nimfunc = cast[ptr QsciLexerPerlblockLookbackProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPerlblockStart*(self: gen_qscilexerperl_types.QsciLexerPerl, style: ptr cint): cstring =

  (fQsciLexerPerl_virtualbase_blockStart(self.h, style))

type QsciLexerPerlblockStartProc* = proc(style: ptr cint): cstring
proc onblockStart*(self: gen_qscilexerperl_types.QsciLexerPerl, slot: QsciLexerPerlblockStartProc) =
  # TODO check subclass
  var tmp = new QsciLexerPerlblockStartProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_blockStart(self: ptr cQsciLexerPerl, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerPerl_blockStart ".} =
  var nimfunc = cast[ptr QsciLexerPerlblockStartProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerPerlblockStartKeyword*(self: gen_qscilexerperl_types.QsciLexerPerl, style: ptr cint): cstring =

  (fQsciLexerPerl_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerPerlblockStartKeywordProc* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: gen_qscilexerperl_types.QsciLexerPerl, slot: QsciLexerPerlblockStartKeywordProc) =
  # TODO check subclass
  var tmp = new QsciLexerPerlblockStartKeywordProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_blockStartKeyword(self: ptr cQsciLexerPerl, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerPerl_blockStartKeyword ".} =
  var nimfunc = cast[ptr QsciLexerPerlblockStartKeywordProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerPerlbraceStyle*(self: gen_qscilexerperl_types.QsciLexerPerl, ): cint =

  fQsciLexerPerl_virtualbase_braceStyle(self.h)

type QsciLexerPerlbraceStyleProc* = proc(): cint
proc onbraceStyle*(self: gen_qscilexerperl_types.QsciLexerPerl, slot: QsciLexerPerlbraceStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerPerlbraceStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_braceStyle(self: ptr cQsciLexerPerl, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPerl_braceStyle ".} =
  var nimfunc = cast[ptr QsciLexerPerlbraceStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPerlcaseSensitive*(self: gen_qscilexerperl_types.QsciLexerPerl, ): bool =

  fQsciLexerPerl_virtualbase_caseSensitive(self.h)

type QsciLexerPerlcaseSensitiveProc* = proc(): bool
proc oncaseSensitive*(self: gen_qscilexerperl_types.QsciLexerPerl, slot: QsciLexerPerlcaseSensitiveProc) =
  # TODO check subclass
  var tmp = new QsciLexerPerlcaseSensitiveProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_caseSensitive(self: ptr cQsciLexerPerl, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerPerl_caseSensitive ".} =
  var nimfunc = cast[ptr QsciLexerPerlcaseSensitiveProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPerlcolor*(self: gen_qscilexerperl_types.QsciLexerPerl, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fQsciLexerPerl_virtualbase_color(self.h, style))

type QsciLexerPerlcolorProc* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: gen_qscilexerperl_types.QsciLexerPerl, slot: QsciLexerPerlcolorProc) =
  # TODO check subclass
  var tmp = new QsciLexerPerlcolorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_color(self: ptr cQsciLexerPerl, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPerl_color ".} =
  var nimfunc = cast[ptr QsciLexerPerlcolorProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerPerleolFill*(self: gen_qscilexerperl_types.QsciLexerPerl, style: cint): bool =

  fQsciLexerPerl_virtualbase_eolFill(self.h, style)

type QsciLexerPerleolFillProc* = proc(style: cint): bool
proc oneolFill*(self: gen_qscilexerperl_types.QsciLexerPerl, slot: QsciLexerPerleolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerPerleolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_eolFill(self: ptr cQsciLexerPerl, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerPerl_eolFill ".} =
  var nimfunc = cast[ptr QsciLexerPerleolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerPerlfont*(self: gen_qscilexerperl_types.QsciLexerPerl, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fQsciLexerPerl_virtualbase_font(self.h, style))

type QsciLexerPerlfontProc* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: gen_qscilexerperl_types.QsciLexerPerl, slot: QsciLexerPerlfontProc) =
  # TODO check subclass
  var tmp = new QsciLexerPerlfontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_font(self: ptr cQsciLexerPerl, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPerl_font ".} =
  var nimfunc = cast[ptr QsciLexerPerlfontProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerPerlindentationGuideView*(self: gen_qscilexerperl_types.QsciLexerPerl, ): cint =

  fQsciLexerPerl_virtualbase_indentationGuideView(self.h)

type QsciLexerPerlindentationGuideViewProc* = proc(): cint
proc onindentationGuideView*(self: gen_qscilexerperl_types.QsciLexerPerl, slot: QsciLexerPerlindentationGuideViewProc) =
  # TODO check subclass
  var tmp = new QsciLexerPerlindentationGuideViewProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_indentationGuideView(self: ptr cQsciLexerPerl, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPerl_indentationGuideView ".} =
  var nimfunc = cast[ptr QsciLexerPerlindentationGuideViewProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPerlkeywords*(self: gen_qscilexerperl_types.QsciLexerPerl, set: cint): cstring =

  (fQsciLexerPerl_virtualbase_keywords(self.h, set))

type QsciLexerPerlkeywordsProc* = proc(set: cint): cstring
proc onkeywords*(self: gen_qscilexerperl_types.QsciLexerPerl, slot: QsciLexerPerlkeywordsProc) =
  # TODO check subclass
  var tmp = new QsciLexerPerlkeywordsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_keywords(self: ptr cQsciLexerPerl, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerPerl_keywords ".} =
  var nimfunc = cast[ptr QsciLexerPerlkeywordsProc](cast[pointer](slot))
  let slotval1 = set


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerPerldefaultStyle*(self: gen_qscilexerperl_types.QsciLexerPerl, ): cint =

  fQsciLexerPerl_virtualbase_defaultStyle(self.h)

type QsciLexerPerldefaultStyleProc* = proc(): cint
proc ondefaultStyle*(self: gen_qscilexerperl_types.QsciLexerPerl, slot: QsciLexerPerldefaultStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerPerldefaultStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_defaultStyle(self: ptr cQsciLexerPerl, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPerl_defaultStyle ".} =
  var nimfunc = cast[ptr QsciLexerPerldefaultStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QsciLexerPerldescriptionProc* = proc(style: cint): string
proc ondescription*(self: gen_qscilexerperl_types.QsciLexerPerl, slot: QsciLexerPerldescriptionProc) =
  # TODO check subclass
  var tmp = new QsciLexerPerldescriptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_description(self: ptr cQsciLexerPerl, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerPerl_description ".} =
  var nimfunc = cast[ptr QsciLexerPerldescriptionProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc QsciLexerPerlpaper*(self: gen_qscilexerperl_types.QsciLexerPerl, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fQsciLexerPerl_virtualbase_paper(self.h, style))

type QsciLexerPerlpaperProc* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: gen_qscilexerperl_types.QsciLexerPerl, slot: QsciLexerPerlpaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerPerlpaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_paper(self: ptr cQsciLexerPerl, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPerl_paper ".} =
  var nimfunc = cast[ptr QsciLexerPerlpaperProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerPerldefaultColorWithStyle*(self: gen_qscilexerperl_types.QsciLexerPerl, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fQsciLexerPerl_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerPerldefaultColorWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColorWithStyle*(self: gen_qscilexerperl_types.QsciLexerPerl, slot: QsciLexerPerldefaultColorWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerPerldefaultColorWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_defaultColorWithStyle(self: ptr cQsciLexerPerl, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPerl_defaultColorWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerPerldefaultColorWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerPerldefaultEolFill*(self: gen_qscilexerperl_types.QsciLexerPerl, style: cint): bool =

  fQsciLexerPerl_virtualbase_defaultEolFill(self.h, style)

type QsciLexerPerldefaultEolFillProc* = proc(style: cint): bool
proc ondefaultEolFill*(self: gen_qscilexerperl_types.QsciLexerPerl, slot: QsciLexerPerldefaultEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerPerldefaultEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_defaultEolFill(self: ptr cQsciLexerPerl, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerPerl_defaultEolFill ".} =
  var nimfunc = cast[ptr QsciLexerPerldefaultEolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerPerldefaultFontWithStyle*(self: gen_qscilexerperl_types.QsciLexerPerl, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fQsciLexerPerl_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerPerldefaultFontWithStyleProc* = proc(style: cint): gen_qfont.QFont
proc ondefaultFontWithStyle*(self: gen_qscilexerperl_types.QsciLexerPerl, slot: QsciLexerPerldefaultFontWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerPerldefaultFontWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_defaultFontWithStyle(self: ptr cQsciLexerPerl, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPerl_defaultFontWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerPerldefaultFontWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerPerldefaultPaperWithStyle*(self: gen_qscilexerperl_types.QsciLexerPerl, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fQsciLexerPerl_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerPerldefaultPaperWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaperWithStyle*(self: gen_qscilexerperl_types.QsciLexerPerl, slot: QsciLexerPerldefaultPaperWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerPerldefaultPaperWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_defaultPaperWithStyle(self: ptr cQsciLexerPerl, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPerl_defaultPaperWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerPerldefaultPaperWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerPerlsetEditor*(self: gen_qscilexerperl_types.QsciLexerPerl, editor: gen_qsciscintilla.QsciScintilla): void =

  fQsciLexerPerl_virtualbase_setEditor(self.h, editor.h)

type QsciLexerPerlsetEditorProc* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: gen_qscilexerperl_types.QsciLexerPerl, slot: QsciLexerPerlsetEditorProc) =
  # TODO check subclass
  var tmp = new QsciLexerPerlsetEditorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_setEditor(self: ptr cQsciLexerPerl, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPerl_setEditor ".} =
  var nimfunc = cast[ptr QsciLexerPerlsetEditorProc](cast[pointer](slot))
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](slotval1)
proc QsciLexerPerlrefreshProperties*(self: gen_qscilexerperl_types.QsciLexerPerl, ): void =

  fQsciLexerPerl_virtualbase_refreshProperties(self.h)

type QsciLexerPerlrefreshPropertiesProc* = proc(): void
proc onrefreshProperties*(self: gen_qscilexerperl_types.QsciLexerPerl, slot: QsciLexerPerlrefreshPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerPerlrefreshPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_refreshProperties(self: ptr cQsciLexerPerl, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerPerl_refreshProperties ".} =
  var nimfunc = cast[ptr QsciLexerPerlrefreshPropertiesProc](cast[pointer](slot))

  nimfunc[]()
proc QsciLexerPerlstyleBitsNeeded*(self: gen_qscilexerperl_types.QsciLexerPerl, ): cint =

  fQsciLexerPerl_virtualbase_styleBitsNeeded(self.h)

type QsciLexerPerlstyleBitsNeededProc* = proc(): cint
proc onstyleBitsNeeded*(self: gen_qscilexerperl_types.QsciLexerPerl, slot: QsciLexerPerlstyleBitsNeededProc) =
  # TODO check subclass
  var tmp = new QsciLexerPerlstyleBitsNeededProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_styleBitsNeeded(self: ptr cQsciLexerPerl, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPerl_styleBitsNeeded ".} =
  var nimfunc = cast[ptr QsciLexerPerlstyleBitsNeededProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPerlwordCharacters*(self: gen_qscilexerperl_types.QsciLexerPerl, ): cstring =

  (fQsciLexerPerl_virtualbase_wordCharacters(self.h))

type QsciLexerPerlwordCharactersProc* = proc(): cstring
proc onwordCharacters*(self: gen_qscilexerperl_types.QsciLexerPerl, slot: QsciLexerPerlwordCharactersProc) =
  # TODO check subclass
  var tmp = new QsciLexerPerlwordCharactersProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_wordCharacters(self: ptr cQsciLexerPerl, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerPerl_wordCharacters ".} =
  var nimfunc = cast[ptr QsciLexerPerlwordCharactersProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPerlsetAutoIndentStyle*(self: gen_qscilexerperl_types.QsciLexerPerl, autoindentstyle: cint): void =

  fQsciLexerPerl_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerPerlsetAutoIndentStyleProc* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: gen_qscilexerperl_types.QsciLexerPerl, slot: QsciLexerPerlsetAutoIndentStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerPerlsetAutoIndentStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_setAutoIndentStyle(self: ptr cQsciLexerPerl, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerPerl_setAutoIndentStyle ".} =
  var nimfunc = cast[ptr QsciLexerPerlsetAutoIndentStyleProc](cast[pointer](slot))
  let slotval1 = autoindentstyle


  nimfunc[](slotval1)
proc QsciLexerPerlsetColor*(self: gen_qscilexerperl_types.QsciLexerPerl, c: gen_qcolor.QColor, style: cint): void =

  fQsciLexerPerl_virtualbase_setColor(self.h, c.h, style)

type QsciLexerPerlsetColorProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: gen_qscilexerperl_types.QsciLexerPerl, slot: QsciLexerPerlsetColorProc) =
  # TODO check subclass
  var tmp = new QsciLexerPerlsetColorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_setColor(self: ptr cQsciLexerPerl, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerPerl_setColor ".} =
  var nimfunc = cast[ptr QsciLexerPerlsetColorProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerPerlsetEolFill*(self: gen_qscilexerperl_types.QsciLexerPerl, eoffill: bool, style: cint): void =

  fQsciLexerPerl_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerPerlsetEolFillProc* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: gen_qscilexerperl_types.QsciLexerPerl, slot: QsciLexerPerlsetEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerPerlsetEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_setEolFill(self: ptr cQsciLexerPerl, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerPerl_setEolFill ".} =
  var nimfunc = cast[ptr QsciLexerPerlsetEolFillProc](cast[pointer](slot))
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerPerlsetFont*(self: gen_qscilexerperl_types.QsciLexerPerl, f: gen_qfont.QFont, style: cint): void =

  fQsciLexerPerl_virtualbase_setFont(self.h, f.h, style)

type QsciLexerPerlsetFontProc* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: gen_qscilexerperl_types.QsciLexerPerl, slot: QsciLexerPerlsetFontProc) =
  # TODO check subclass
  var tmp = new QsciLexerPerlsetFontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_setFont(self: ptr cQsciLexerPerl, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerPerl_setFont ".} =
  var nimfunc = cast[ptr QsciLexerPerlsetFontProc](cast[pointer](slot))
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerPerlsetPaper*(self: gen_qscilexerperl_types.QsciLexerPerl, c: gen_qcolor.QColor, style: cint): void =

  fQsciLexerPerl_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerPerlsetPaperProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: gen_qscilexerperl_types.QsciLexerPerl, slot: QsciLexerPerlsetPaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerPerlsetPaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_setPaper(self: ptr cQsciLexerPerl, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerPerl_setPaper ".} =
  var nimfunc = cast[ptr QsciLexerPerlsetPaperProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerPerlreadProperties*(self: gen_qscilexerperl_types.QsciLexerPerl, qs: gen_qsettings.QSettings, prefix: string): bool =

  fQsciLexerPerl_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerPerlreadPropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: gen_qscilexerperl_types.QsciLexerPerl, slot: QsciLexerPerlreadPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerPerlreadPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_readProperties(self: ptr cQsciLexerPerl, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerPerl_readProperties ".} =
  var nimfunc = cast[ptr QsciLexerPerlreadPropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerPerlwriteProperties*(self: gen_qscilexerperl_types.QsciLexerPerl, qs: gen_qsettings.QSettings, prefix: string): bool =

  fQsciLexerPerl_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerPerlwritePropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: gen_qscilexerperl_types.QsciLexerPerl, slot: QsciLexerPerlwritePropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerPerlwritePropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_writeProperties(self: ptr cQsciLexerPerl, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerPerl_writeProperties ".} =
  var nimfunc = cast[ptr QsciLexerPerlwritePropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerPerlevent*(self: gen_qscilexerperl_types.QsciLexerPerl, event: gen_qcoreevent.QEvent): bool =

  fQsciLexerPerl_virtualbase_event(self.h, event.h)

type QsciLexerPerleventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qscilexerperl_types.QsciLexerPerl, slot: QsciLexerPerleventProc) =
  # TODO check subclass
  var tmp = new QsciLexerPerleventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_event(self: ptr cQsciLexerPerl, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerPerl_event ".} =
  var nimfunc = cast[ptr QsciLexerPerleventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerPerleventFilter*(self: gen_qscilexerperl_types.QsciLexerPerl, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =

  fQsciLexerPerl_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerPerleventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qscilexerperl_types.QsciLexerPerl, slot: QsciLexerPerleventFilterProc) =
  # TODO check subclass
  var tmp = new QsciLexerPerleventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_eventFilter(self: ptr cQsciLexerPerl, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerPerl_eventFilter ".} =
  var nimfunc = cast[ptr QsciLexerPerleventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerPerltimerEvent*(self: gen_qscilexerperl_types.QsciLexerPerl, event: gen_qcoreevent.QTimerEvent): void =

  fQsciLexerPerl_virtualbase_timerEvent(self.h, event.h)

type QsciLexerPerltimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qscilexerperl_types.QsciLexerPerl, slot: QsciLexerPerltimerEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerPerltimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_timerEvent(self: ptr cQsciLexerPerl, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPerl_timerEvent ".} =
  var nimfunc = cast[ptr QsciLexerPerltimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerPerlchildEvent*(self: gen_qscilexerperl_types.QsciLexerPerl, event: gen_qcoreevent.QChildEvent): void =

  fQsciLexerPerl_virtualbase_childEvent(self.h, event.h)

type QsciLexerPerlchildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qscilexerperl_types.QsciLexerPerl, slot: QsciLexerPerlchildEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerPerlchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_childEvent(self: ptr cQsciLexerPerl, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPerl_childEvent ".} =
  var nimfunc = cast[ptr QsciLexerPerlchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerPerlcustomEvent*(self: gen_qscilexerperl_types.QsciLexerPerl, event: gen_qcoreevent.QEvent): void =

  fQsciLexerPerl_virtualbase_customEvent(self.h, event.h)

type QsciLexerPerlcustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qscilexerperl_types.QsciLexerPerl, slot: QsciLexerPerlcustomEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerPerlcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_customEvent(self: ptr cQsciLexerPerl, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPerl_customEvent ".} =
  var nimfunc = cast[ptr QsciLexerPerlcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerPerlconnectNotify*(self: gen_qscilexerperl_types.QsciLexerPerl, signal: gen_qmetaobject.QMetaMethod): void =

  fQsciLexerPerl_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerPerlconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qscilexerperl_types.QsciLexerPerl, slot: QsciLexerPerlconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerPerlconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_connectNotify(self: ptr cQsciLexerPerl, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPerl_connectNotify ".} =
  var nimfunc = cast[ptr QsciLexerPerlconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QsciLexerPerldisconnectNotify*(self: gen_qscilexerperl_types.QsciLexerPerl, signal: gen_qmetaobject.QMetaMethod): void =

  fQsciLexerPerl_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerPerldisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qscilexerperl_types.QsciLexerPerl, slot: QsciLexerPerldisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerPerldisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_disconnectNotify(self: ptr cQsciLexerPerl, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPerl_disconnectNotify ".} =
  var nimfunc = cast[ptr QsciLexerPerldisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qscilexerperl_types.QsciLexerPerl): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerPerl_staticMetaObject())
proc delete*(self: gen_qscilexerperl_types.QsciLexerPerl) =
  fcQsciLexerPerl_delete(self.h)
