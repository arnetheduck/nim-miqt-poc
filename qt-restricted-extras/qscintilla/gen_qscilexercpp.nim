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
{.compile("gen_qscilexercpp.cpp", cflags).}


type QsciLexerCPPEnumEnum* = distinct cint
template Default*(_: type QsciLexerCPPEnumEnum): untyped = 0
template InactiveDefault*(_: type QsciLexerCPPEnumEnum): untyped = 64
template Comment*(_: type QsciLexerCPPEnumEnum): untyped = 1
template InactiveComment*(_: type QsciLexerCPPEnumEnum): untyped = 65
template CommentLine*(_: type QsciLexerCPPEnumEnum): untyped = 2
template InactiveCommentLine*(_: type QsciLexerCPPEnumEnum): untyped = 66
template CommentDoc*(_: type QsciLexerCPPEnumEnum): untyped = 3
template InactiveCommentDoc*(_: type QsciLexerCPPEnumEnum): untyped = 67
template Number*(_: type QsciLexerCPPEnumEnum): untyped = 4
template InactiveNumber*(_: type QsciLexerCPPEnumEnum): untyped = 68
template Keyword*(_: type QsciLexerCPPEnumEnum): untyped = 5
template InactiveKeyword*(_: type QsciLexerCPPEnumEnum): untyped = 69
template DoubleQuotedString*(_: type QsciLexerCPPEnumEnum): untyped = 6
template InactiveDoubleQuotedString*(_: type QsciLexerCPPEnumEnum): untyped = 70
template SingleQuotedString*(_: type QsciLexerCPPEnumEnum): untyped = 7
template InactiveSingleQuotedString*(_: type QsciLexerCPPEnumEnum): untyped = 71
template UUID*(_: type QsciLexerCPPEnumEnum): untyped = 8
template InactiveUUID*(_: type QsciLexerCPPEnumEnum): untyped = 72
template PreProcessor*(_: type QsciLexerCPPEnumEnum): untyped = 9
template InactivePreProcessor*(_: type QsciLexerCPPEnumEnum): untyped = 73
template Operator*(_: type QsciLexerCPPEnumEnum): untyped = 10
template InactiveOperator*(_: type QsciLexerCPPEnumEnum): untyped = 74
template Identifier*(_: type QsciLexerCPPEnumEnum): untyped = 11
template InactiveIdentifier*(_: type QsciLexerCPPEnumEnum): untyped = 75
template UnclosedString*(_: type QsciLexerCPPEnumEnum): untyped = 12
template InactiveUnclosedString*(_: type QsciLexerCPPEnumEnum): untyped = 76
template VerbatimString*(_: type QsciLexerCPPEnumEnum): untyped = 13
template InactiveVerbatimString*(_: type QsciLexerCPPEnumEnum): untyped = 77
template Regex*(_: type QsciLexerCPPEnumEnum): untyped = 14
template InactiveRegex*(_: type QsciLexerCPPEnumEnum): untyped = 78
template CommentLineDoc*(_: type QsciLexerCPPEnumEnum): untyped = 15
template InactiveCommentLineDoc*(_: type QsciLexerCPPEnumEnum): untyped = 79
template KeywordSet2*(_: type QsciLexerCPPEnumEnum): untyped = 16
template InactiveKeywordSet2*(_: type QsciLexerCPPEnumEnum): untyped = 80
template CommentDocKeyword*(_: type QsciLexerCPPEnumEnum): untyped = 17
template InactiveCommentDocKeyword*(_: type QsciLexerCPPEnumEnum): untyped = 81
template CommentDocKeywordError*(_: type QsciLexerCPPEnumEnum): untyped = 18
template InactiveCommentDocKeywordError*(_: type QsciLexerCPPEnumEnum): untyped = 82
template GlobalClass*(_: type QsciLexerCPPEnumEnum): untyped = 19
template InactiveGlobalClass*(_: type QsciLexerCPPEnumEnum): untyped = 83
template RawString*(_: type QsciLexerCPPEnumEnum): untyped = 20
template InactiveRawString*(_: type QsciLexerCPPEnumEnum): untyped = 84
template TripleQuotedVerbatimString*(_: type QsciLexerCPPEnumEnum): untyped = 21
template InactiveTripleQuotedVerbatimString*(_: type QsciLexerCPPEnumEnum): untyped = 85
template HashQuotedString*(_: type QsciLexerCPPEnumEnum): untyped = 22
template InactiveHashQuotedString*(_: type QsciLexerCPPEnumEnum): untyped = 86
template PreProcessorComment*(_: type QsciLexerCPPEnumEnum): untyped = 23
template InactivePreProcessorComment*(_: type QsciLexerCPPEnumEnum): untyped = 87
template PreProcessorCommentLineDoc*(_: type QsciLexerCPPEnumEnum): untyped = 24
template InactivePreProcessorCommentLineDoc*(_: type QsciLexerCPPEnumEnum): untyped = 88
template UserLiteral*(_: type QsciLexerCPPEnumEnum): untyped = 25
template InactiveUserLiteral*(_: type QsciLexerCPPEnumEnum): untyped = 89
template TaskMarker*(_: type QsciLexerCPPEnumEnum): untyped = 26
template InactiveTaskMarker*(_: type QsciLexerCPPEnumEnum): untyped = 90
template EscapeSequence*(_: type QsciLexerCPPEnumEnum): untyped = 27
template InactiveEscapeSequence*(_: type QsciLexerCPPEnumEnum): untyped = 91


import gen_qscilexercpp_types
export gen_qscilexercpp_types

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

type cQsciLexerCPP*{.exportc: "QsciLexerCPP", incompleteStruct.} = object

proc fcQsciLexerCPP_new(): ptr cQsciLexerCPP {.importc: "QsciLexerCPP_new".}
proc fcQsciLexerCPP_new2(parent: pointer): ptr cQsciLexerCPP {.importc: "QsciLexerCPP_new2".}
proc fcQsciLexerCPP_new3(parent: pointer, caseInsensitiveKeywords: bool): ptr cQsciLexerCPP {.importc: "QsciLexerCPP_new3".}
proc fcQsciLexerCPP_metaObject(self: pointer, ): pointer {.importc: "QsciLexerCPP_metaObject".}
proc fcQsciLexerCPP_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerCPP_metacast".}
proc fcQsciLexerCPP_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerCPP_metacall".}
proc fcQsciLexerCPP_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerCPP_tr".}
proc fcQsciLexerCPP_trUtf8(s: cstring): struct_miqt_string {.importc: "QsciLexerCPP_trUtf8".}
proc fcQsciLexerCPP_language(self: pointer, ): cstring {.importc: "QsciLexerCPP_language".}
proc fcQsciLexerCPP_lexer(self: pointer, ): cstring {.importc: "QsciLexerCPP_lexer".}
proc fcQsciLexerCPP_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array {.importc: "QsciLexerCPP_autoCompletionWordSeparators".}
proc fcQsciLexerCPP_blockEnd(self: pointer, ): cstring {.importc: "QsciLexerCPP_blockEnd".}
proc fcQsciLexerCPP_blockStart(self: pointer, ): cstring {.importc: "QsciLexerCPP_blockStart".}
proc fcQsciLexerCPP_blockStartKeyword(self: pointer, ): cstring {.importc: "QsciLexerCPP_blockStartKeyword".}
proc fcQsciLexerCPP_braceStyle(self: pointer, ): cint {.importc: "QsciLexerCPP_braceStyle".}
proc fcQsciLexerCPP_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerCPP_wordCharacters".}
proc fcQsciLexerCPP_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerCPP_defaultColor".}
proc fcQsciLexerCPP_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerCPP_defaultEolFill".}
proc fcQsciLexerCPP_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerCPP_defaultFont".}
proc fcQsciLexerCPP_defaultPaper(self: pointer, style: cint): pointer {.importc: "QsciLexerCPP_defaultPaper".}
proc fcQsciLexerCPP_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerCPP_keywords".}
proc fcQsciLexerCPP_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerCPP_description".}
proc fcQsciLexerCPP_refreshProperties(self: pointer, ): void {.importc: "QsciLexerCPP_refreshProperties".}
proc fcQsciLexerCPP_foldAtElse(self: pointer, ): bool {.importc: "QsciLexerCPP_foldAtElse".}
proc fcQsciLexerCPP_foldComments(self: pointer, ): bool {.importc: "QsciLexerCPP_foldComments".}
proc fcQsciLexerCPP_foldCompact(self: pointer, ): bool {.importc: "QsciLexerCPP_foldCompact".}
proc fcQsciLexerCPP_foldPreprocessor(self: pointer, ): bool {.importc: "QsciLexerCPP_foldPreprocessor".}
proc fcQsciLexerCPP_stylePreprocessor(self: pointer, ): bool {.importc: "QsciLexerCPP_stylePreprocessor".}
proc fcQsciLexerCPP_setDollarsAllowed(self: pointer, allowed: bool): void {.importc: "QsciLexerCPP_setDollarsAllowed".}
proc fcQsciLexerCPP_dollarsAllowed(self: pointer, ): bool {.importc: "QsciLexerCPP_dollarsAllowed".}
proc fcQsciLexerCPP_setHighlightTripleQuotedStrings(self: pointer, enabled: bool): void {.importc: "QsciLexerCPP_setHighlightTripleQuotedStrings".}
proc fcQsciLexerCPP_highlightTripleQuotedStrings(self: pointer, ): bool {.importc: "QsciLexerCPP_highlightTripleQuotedStrings".}
proc fcQsciLexerCPP_setHighlightHashQuotedStrings(self: pointer, enabled: bool): void {.importc: "QsciLexerCPP_setHighlightHashQuotedStrings".}
proc fcQsciLexerCPP_highlightHashQuotedStrings(self: pointer, ): bool {.importc: "QsciLexerCPP_highlightHashQuotedStrings".}
proc fcQsciLexerCPP_setHighlightBackQuotedStrings(self: pointer, enabled: bool): void {.importc: "QsciLexerCPP_setHighlightBackQuotedStrings".}
proc fcQsciLexerCPP_highlightBackQuotedStrings(self: pointer, ): bool {.importc: "QsciLexerCPP_highlightBackQuotedStrings".}
proc fcQsciLexerCPP_setHighlightEscapeSequences(self: pointer, enabled: bool): void {.importc: "QsciLexerCPP_setHighlightEscapeSequences".}
proc fcQsciLexerCPP_highlightEscapeSequences(self: pointer, ): bool {.importc: "QsciLexerCPP_highlightEscapeSequences".}
proc fcQsciLexerCPP_setVerbatimStringEscapeSequencesAllowed(self: pointer, allowed: bool): void {.importc: "QsciLexerCPP_setVerbatimStringEscapeSequencesAllowed".}
proc fcQsciLexerCPP_verbatimStringEscapeSequencesAllowed(self: pointer, ): bool {.importc: "QsciLexerCPP_verbatimStringEscapeSequencesAllowed".}
proc fcQsciLexerCPP_setFoldAtElse(self: pointer, fold: bool): void {.importc: "QsciLexerCPP_setFoldAtElse".}
proc fcQsciLexerCPP_setFoldComments(self: pointer, fold: bool): void {.importc: "QsciLexerCPP_setFoldComments".}
proc fcQsciLexerCPP_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerCPP_setFoldCompact".}
proc fcQsciLexerCPP_setFoldPreprocessor(self: pointer, fold: bool): void {.importc: "QsciLexerCPP_setFoldPreprocessor".}
proc fcQsciLexerCPP_setStylePreprocessor(self: pointer, style: bool): void {.importc: "QsciLexerCPP_setStylePreprocessor".}
proc fcQsciLexerCPP_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerCPP_tr2".}
proc fcQsciLexerCPP_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerCPP_tr3".}
proc fcQsciLexerCPP_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerCPP_trUtf82".}
proc fcQsciLexerCPP_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerCPP_trUtf83".}
proc fcQsciLexerCPP_blockEnd1(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerCPP_blockEnd1".}
proc fcQsciLexerCPP_blockStart1(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerCPP_blockStart1".}
proc fcQsciLexerCPP_blockStartKeyword1(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerCPP_blockStartKeyword1".}
proc fQsciLexerCPP_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QsciLexerCPP_virtualbase_metaObject".}
proc fcQsciLexerCPP_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QsciLexerCPP_override_virtual_metaObject".}
proc fQsciLexerCPP_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QsciLexerCPP_virtualbase_metacast".}
proc fcQsciLexerCPP_override_virtual_metacast(self: pointer, slot: int) {.importc: "QsciLexerCPP_override_virtual_metacast".}
proc fQsciLexerCPP_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciLexerCPP_virtualbase_metacall".}
proc fcQsciLexerCPP_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciLexerCPP_override_virtual_metacall".}
proc fQsciLexerCPP_virtualbase_setFoldAtElse(self: pointer, fold: bool): void{.importc: "QsciLexerCPP_virtualbase_setFoldAtElse".}
proc fcQsciLexerCPP_override_virtual_setFoldAtElse(self: pointer, slot: int) {.importc: "QsciLexerCPP_override_virtual_setFoldAtElse".}
proc fQsciLexerCPP_virtualbase_setFoldComments(self: pointer, fold: bool): void{.importc: "QsciLexerCPP_virtualbase_setFoldComments".}
proc fcQsciLexerCPP_override_virtual_setFoldComments(self: pointer, slot: int) {.importc: "QsciLexerCPP_override_virtual_setFoldComments".}
proc fQsciLexerCPP_virtualbase_setFoldCompact(self: pointer, fold: bool): void{.importc: "QsciLexerCPP_virtualbase_setFoldCompact".}
proc fcQsciLexerCPP_override_virtual_setFoldCompact(self: pointer, slot: int) {.importc: "QsciLexerCPP_override_virtual_setFoldCompact".}
proc fQsciLexerCPP_virtualbase_setFoldPreprocessor(self: pointer, fold: bool): void{.importc: "QsciLexerCPP_virtualbase_setFoldPreprocessor".}
proc fcQsciLexerCPP_override_virtual_setFoldPreprocessor(self: pointer, slot: int) {.importc: "QsciLexerCPP_override_virtual_setFoldPreprocessor".}
proc fQsciLexerCPP_virtualbase_setStylePreprocessor(self: pointer, style: bool): void{.importc: "QsciLexerCPP_virtualbase_setStylePreprocessor".}
proc fcQsciLexerCPP_override_virtual_setStylePreprocessor(self: pointer, slot: int) {.importc: "QsciLexerCPP_override_virtual_setStylePreprocessor".}
proc fcQsciLexerCPP_override_virtual_language(self: pointer, slot: int) {.importc: "QsciLexerCPP_override_virtual_language".}
proc fQsciLexerCPP_virtualbase_lexer(self: pointer, ): cstring{.importc: "QsciLexerCPP_virtualbase_lexer".}
proc fcQsciLexerCPP_override_virtual_lexer(self: pointer, slot: int) {.importc: "QsciLexerCPP_override_virtual_lexer".}
proc fQsciLexerCPP_virtualbase_lexerId(self: pointer, ): cint{.importc: "QsciLexerCPP_virtualbase_lexerId".}
proc fcQsciLexerCPP_override_virtual_lexerId(self: pointer, slot: int) {.importc: "QsciLexerCPP_override_virtual_lexerId".}
proc fQsciLexerCPP_virtualbase_autoCompletionFillups(self: pointer, ): cstring{.importc: "QsciLexerCPP_virtualbase_autoCompletionFillups".}
proc fcQsciLexerCPP_override_virtual_autoCompletionFillups(self: pointer, slot: int) {.importc: "QsciLexerCPP_override_virtual_autoCompletionFillups".}
proc fQsciLexerCPP_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array{.importc: "QsciLexerCPP_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerCPP_override_virtual_autoCompletionWordSeparators(self: pointer, slot: int) {.importc: "QsciLexerCPP_override_virtual_autoCompletionWordSeparators".}
proc fQsciLexerCPP_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerCPP_virtualbase_blockEnd".}
proc fcQsciLexerCPP_override_virtual_blockEnd(self: pointer, slot: int) {.importc: "QsciLexerCPP_override_virtual_blockEnd".}
proc fQsciLexerCPP_virtualbase_blockLookback(self: pointer, ): cint{.importc: "QsciLexerCPP_virtualbase_blockLookback".}
proc fcQsciLexerCPP_override_virtual_blockLookback(self: pointer, slot: int) {.importc: "QsciLexerCPP_override_virtual_blockLookback".}
proc fQsciLexerCPP_virtualbase_blockStart(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerCPP_virtualbase_blockStart".}
proc fcQsciLexerCPP_override_virtual_blockStart(self: pointer, slot: int) {.importc: "QsciLexerCPP_override_virtual_blockStart".}
proc fQsciLexerCPP_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerCPP_virtualbase_blockStartKeyword".}
proc fcQsciLexerCPP_override_virtual_blockStartKeyword(self: pointer, slot: int) {.importc: "QsciLexerCPP_override_virtual_blockStartKeyword".}
proc fQsciLexerCPP_virtualbase_braceStyle(self: pointer, ): cint{.importc: "QsciLexerCPP_virtualbase_braceStyle".}
proc fcQsciLexerCPP_override_virtual_braceStyle(self: pointer, slot: int) {.importc: "QsciLexerCPP_override_virtual_braceStyle".}
proc fQsciLexerCPP_virtualbase_caseSensitive(self: pointer, ): bool{.importc: "QsciLexerCPP_virtualbase_caseSensitive".}
proc fcQsciLexerCPP_override_virtual_caseSensitive(self: pointer, slot: int) {.importc: "QsciLexerCPP_override_virtual_caseSensitive".}
proc fQsciLexerCPP_virtualbase_color(self: pointer, style: cint): pointer{.importc: "QsciLexerCPP_virtualbase_color".}
proc fcQsciLexerCPP_override_virtual_color(self: pointer, slot: int) {.importc: "QsciLexerCPP_override_virtual_color".}
proc fQsciLexerCPP_virtualbase_eolFill(self: pointer, style: cint): bool{.importc: "QsciLexerCPP_virtualbase_eolFill".}
proc fcQsciLexerCPP_override_virtual_eolFill(self: pointer, slot: int) {.importc: "QsciLexerCPP_override_virtual_eolFill".}
proc fQsciLexerCPP_virtualbase_font(self: pointer, style: cint): pointer{.importc: "QsciLexerCPP_virtualbase_font".}
proc fcQsciLexerCPP_override_virtual_font(self: pointer, slot: int) {.importc: "QsciLexerCPP_override_virtual_font".}
proc fQsciLexerCPP_virtualbase_indentationGuideView(self: pointer, ): cint{.importc: "QsciLexerCPP_virtualbase_indentationGuideView".}
proc fcQsciLexerCPP_override_virtual_indentationGuideView(self: pointer, slot: int) {.importc: "QsciLexerCPP_override_virtual_indentationGuideView".}
proc fQsciLexerCPP_virtualbase_keywords(self: pointer, set: cint): cstring{.importc: "QsciLexerCPP_virtualbase_keywords".}
proc fcQsciLexerCPP_override_virtual_keywords(self: pointer, slot: int) {.importc: "QsciLexerCPP_override_virtual_keywords".}
proc fQsciLexerCPP_virtualbase_defaultStyle(self: pointer, ): cint{.importc: "QsciLexerCPP_virtualbase_defaultStyle".}
proc fcQsciLexerCPP_override_virtual_defaultStyle(self: pointer, slot: int) {.importc: "QsciLexerCPP_override_virtual_defaultStyle".}
proc fcQsciLexerCPP_override_virtual_description(self: pointer, slot: int) {.importc: "QsciLexerCPP_override_virtual_description".}
proc fQsciLexerCPP_virtualbase_paper(self: pointer, style: cint): pointer{.importc: "QsciLexerCPP_virtualbase_paper".}
proc fcQsciLexerCPP_override_virtual_paper(self: pointer, slot: int) {.importc: "QsciLexerCPP_override_virtual_paper".}
proc fQsciLexerCPP_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerCPP_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerCPP_override_virtual_defaultColorWithStyle(self: pointer, slot: int) {.importc: "QsciLexerCPP_override_virtual_defaultColorWithStyle".}
proc fQsciLexerCPP_virtualbase_defaultEolFill(self: pointer, style: cint): bool{.importc: "QsciLexerCPP_virtualbase_defaultEolFill".}
proc fcQsciLexerCPP_override_virtual_defaultEolFill(self: pointer, slot: int) {.importc: "QsciLexerCPP_override_virtual_defaultEolFill".}
proc fQsciLexerCPP_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerCPP_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerCPP_override_virtual_defaultFontWithStyle(self: pointer, slot: int) {.importc: "QsciLexerCPP_override_virtual_defaultFontWithStyle".}
proc fQsciLexerCPP_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerCPP_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerCPP_override_virtual_defaultPaperWithStyle(self: pointer, slot: int) {.importc: "QsciLexerCPP_override_virtual_defaultPaperWithStyle".}
proc fQsciLexerCPP_virtualbase_setEditor(self: pointer, editor: pointer): void{.importc: "QsciLexerCPP_virtualbase_setEditor".}
proc fcQsciLexerCPP_override_virtual_setEditor(self: pointer, slot: int) {.importc: "QsciLexerCPP_override_virtual_setEditor".}
proc fQsciLexerCPP_virtualbase_refreshProperties(self: pointer, ): void{.importc: "QsciLexerCPP_virtualbase_refreshProperties".}
proc fcQsciLexerCPP_override_virtual_refreshProperties(self: pointer, slot: int) {.importc: "QsciLexerCPP_override_virtual_refreshProperties".}
proc fQsciLexerCPP_virtualbase_styleBitsNeeded(self: pointer, ): cint{.importc: "QsciLexerCPP_virtualbase_styleBitsNeeded".}
proc fcQsciLexerCPP_override_virtual_styleBitsNeeded(self: pointer, slot: int) {.importc: "QsciLexerCPP_override_virtual_styleBitsNeeded".}
proc fQsciLexerCPP_virtualbase_wordCharacters(self: pointer, ): cstring{.importc: "QsciLexerCPP_virtualbase_wordCharacters".}
proc fcQsciLexerCPP_override_virtual_wordCharacters(self: pointer, slot: int) {.importc: "QsciLexerCPP_override_virtual_wordCharacters".}
proc fQsciLexerCPP_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void{.importc: "QsciLexerCPP_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerCPP_override_virtual_setAutoIndentStyle(self: pointer, slot: int) {.importc: "QsciLexerCPP_override_virtual_setAutoIndentStyle".}
proc fQsciLexerCPP_virtualbase_setColor(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerCPP_virtualbase_setColor".}
proc fcQsciLexerCPP_override_virtual_setColor(self: pointer, slot: int) {.importc: "QsciLexerCPP_override_virtual_setColor".}
proc fQsciLexerCPP_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void{.importc: "QsciLexerCPP_virtualbase_setEolFill".}
proc fcQsciLexerCPP_override_virtual_setEolFill(self: pointer, slot: int) {.importc: "QsciLexerCPP_override_virtual_setEolFill".}
proc fQsciLexerCPP_virtualbase_setFont(self: pointer, f: pointer, style: cint): void{.importc: "QsciLexerCPP_virtualbase_setFont".}
proc fcQsciLexerCPP_override_virtual_setFont(self: pointer, slot: int) {.importc: "QsciLexerCPP_override_virtual_setFont".}
proc fQsciLexerCPP_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerCPP_virtualbase_setPaper".}
proc fcQsciLexerCPP_override_virtual_setPaper(self: pointer, slot: int) {.importc: "QsciLexerCPP_override_virtual_setPaper".}
proc fQsciLexerCPP_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerCPP_virtualbase_readProperties".}
proc fcQsciLexerCPP_override_virtual_readProperties(self: pointer, slot: int) {.importc: "QsciLexerCPP_override_virtual_readProperties".}
proc fQsciLexerCPP_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerCPP_virtualbase_writeProperties".}
proc fcQsciLexerCPP_override_virtual_writeProperties(self: pointer, slot: int) {.importc: "QsciLexerCPP_override_virtual_writeProperties".}
proc fQsciLexerCPP_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QsciLexerCPP_virtualbase_event".}
proc fcQsciLexerCPP_override_virtual_event(self: pointer, slot: int) {.importc: "QsciLexerCPP_override_virtual_event".}
proc fQsciLexerCPP_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciLexerCPP_virtualbase_eventFilter".}
proc fcQsciLexerCPP_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciLexerCPP_override_virtual_eventFilter".}
proc fQsciLexerCPP_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciLexerCPP_virtualbase_timerEvent".}
proc fcQsciLexerCPP_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciLexerCPP_override_virtual_timerEvent".}
proc fQsciLexerCPP_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciLexerCPP_virtualbase_childEvent".}
proc fcQsciLexerCPP_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciLexerCPP_override_virtual_childEvent".}
proc fQsciLexerCPP_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciLexerCPP_virtualbase_customEvent".}
proc fcQsciLexerCPP_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciLexerCPP_override_virtual_customEvent".}
proc fQsciLexerCPP_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerCPP_virtualbase_connectNotify".}
proc fcQsciLexerCPP_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciLexerCPP_override_virtual_connectNotify".}
proc fQsciLexerCPP_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerCPP_virtualbase_disconnectNotify".}
proc fcQsciLexerCPP_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciLexerCPP_override_virtual_disconnectNotify".}
proc fcQsciLexerCPP_staticMetaObject(): pointer {.importc: "QsciLexerCPP_staticMetaObject".}
proc fcQsciLexerCPP_delete(self: pointer) {.importc: "QsciLexerCPP_delete".}


func init*(T: type gen_qscilexercpp_types.QsciLexerCPP, h: ptr cQsciLexerCPP): gen_qscilexercpp_types.QsciLexerCPP =
  T(h: h)
proc create*(T: type gen_qscilexercpp_types.QsciLexerCPP, ): gen_qscilexercpp_types.QsciLexerCPP =
  gen_qscilexercpp_types.QsciLexerCPP.init(fcQsciLexerCPP_new())

proc create*(T: type gen_qscilexercpp_types.QsciLexerCPP, parent: gen_qobject.QObject): gen_qscilexercpp_types.QsciLexerCPP =
  gen_qscilexercpp_types.QsciLexerCPP.init(fcQsciLexerCPP_new2(parent.h))

proc create*(T: type gen_qscilexercpp_types.QsciLexerCPP, parent: gen_qobject.QObject, caseInsensitiveKeywords: bool): gen_qscilexercpp_types.QsciLexerCPP =
  gen_qscilexercpp_types.QsciLexerCPP.init(fcQsciLexerCPP_new3(parent.h, caseInsensitiveKeywords))

proc metaObject*(self: gen_qscilexercpp_types.QsciLexerCPP, ): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerCPP_metaObject(self.h))

proc metacast*(self: gen_qscilexercpp_types.QsciLexerCPP, param1: cstring): pointer =
  fcQsciLexerCPP_metacast(self.h, param1)

proc metacall*(self: gen_qscilexercpp_types.QsciLexerCPP, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerCPP_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexercpp_types.QsciLexerCPP, s: cstring): string =
  let v_ms = fcQsciLexerCPP_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexercpp_types.QsciLexerCPP, s: cstring): string =
  let v_ms = fcQsciLexerCPP_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexercpp_types.QsciLexerCPP, ): cstring =
  (fcQsciLexerCPP_language(self.h))

proc lexer*(self: gen_qscilexercpp_types.QsciLexerCPP, ): cstring =
  (fcQsciLexerCPP_lexer(self.h))

proc autoCompletionWordSeparators*(self: gen_qscilexercpp_types.QsciLexerCPP, ): seq[string] =
  var v_ma = fcQsciLexerCPP_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc blockEnd*(self: gen_qscilexercpp_types.QsciLexerCPP, ): cstring =
  (fcQsciLexerCPP_blockEnd(self.h))

proc blockStart*(self: gen_qscilexercpp_types.QsciLexerCPP, ): cstring =
  (fcQsciLexerCPP_blockStart(self.h))

proc blockStartKeyword*(self: gen_qscilexercpp_types.QsciLexerCPP, ): cstring =
  (fcQsciLexerCPP_blockStartKeyword(self.h))

proc braceStyle*(self: gen_qscilexercpp_types.QsciLexerCPP, ): cint =
  fcQsciLexerCPP_braceStyle(self.h)

proc wordCharacters*(self: gen_qscilexercpp_types.QsciLexerCPP, ): cstring =
  (fcQsciLexerCPP_wordCharacters(self.h))

proc defaultColor*(self: gen_qscilexercpp_types.QsciLexerCPP, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fcQsciLexerCPP_defaultColor(self.h, style))

proc defaultEolFill*(self: gen_qscilexercpp_types.QsciLexerCPP, style: cint): bool =
  fcQsciLexerCPP_defaultEolFill(self.h, style)

proc defaultFont*(self: gen_qscilexercpp_types.QsciLexerCPP, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fcQsciLexerCPP_defaultFont(self.h, style))

proc defaultPaper*(self: gen_qscilexercpp_types.QsciLexerCPP, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fcQsciLexerCPP_defaultPaper(self.h, style))

proc keywords*(self: gen_qscilexercpp_types.QsciLexerCPP, set: cint): cstring =
  (fcQsciLexerCPP_keywords(self.h, set))

proc description*(self: gen_qscilexercpp_types.QsciLexerCPP, style: cint): string =
  let v_ms = fcQsciLexerCPP_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: gen_qscilexercpp_types.QsciLexerCPP, ): void =
  fcQsciLexerCPP_refreshProperties(self.h)

proc foldAtElse*(self: gen_qscilexercpp_types.QsciLexerCPP, ): bool =
  fcQsciLexerCPP_foldAtElse(self.h)

proc foldComments*(self: gen_qscilexercpp_types.QsciLexerCPP, ): bool =
  fcQsciLexerCPP_foldComments(self.h)

proc foldCompact*(self: gen_qscilexercpp_types.QsciLexerCPP, ): bool =
  fcQsciLexerCPP_foldCompact(self.h)

proc foldPreprocessor*(self: gen_qscilexercpp_types.QsciLexerCPP, ): bool =
  fcQsciLexerCPP_foldPreprocessor(self.h)

proc stylePreprocessor*(self: gen_qscilexercpp_types.QsciLexerCPP, ): bool =
  fcQsciLexerCPP_stylePreprocessor(self.h)

proc setDollarsAllowed*(self: gen_qscilexercpp_types.QsciLexerCPP, allowed: bool): void =
  fcQsciLexerCPP_setDollarsAllowed(self.h, allowed)

proc dollarsAllowed*(self: gen_qscilexercpp_types.QsciLexerCPP, ): bool =
  fcQsciLexerCPP_dollarsAllowed(self.h)

proc setHighlightTripleQuotedStrings*(self: gen_qscilexercpp_types.QsciLexerCPP, enabled: bool): void =
  fcQsciLexerCPP_setHighlightTripleQuotedStrings(self.h, enabled)

proc highlightTripleQuotedStrings*(self: gen_qscilexercpp_types.QsciLexerCPP, ): bool =
  fcQsciLexerCPP_highlightTripleQuotedStrings(self.h)

proc setHighlightHashQuotedStrings*(self: gen_qscilexercpp_types.QsciLexerCPP, enabled: bool): void =
  fcQsciLexerCPP_setHighlightHashQuotedStrings(self.h, enabled)

proc highlightHashQuotedStrings*(self: gen_qscilexercpp_types.QsciLexerCPP, ): bool =
  fcQsciLexerCPP_highlightHashQuotedStrings(self.h)

proc setHighlightBackQuotedStrings*(self: gen_qscilexercpp_types.QsciLexerCPP, enabled: bool): void =
  fcQsciLexerCPP_setHighlightBackQuotedStrings(self.h, enabled)

proc highlightBackQuotedStrings*(self: gen_qscilexercpp_types.QsciLexerCPP, ): bool =
  fcQsciLexerCPP_highlightBackQuotedStrings(self.h)

proc setHighlightEscapeSequences*(self: gen_qscilexercpp_types.QsciLexerCPP, enabled: bool): void =
  fcQsciLexerCPP_setHighlightEscapeSequences(self.h, enabled)

proc highlightEscapeSequences*(self: gen_qscilexercpp_types.QsciLexerCPP, ): bool =
  fcQsciLexerCPP_highlightEscapeSequences(self.h)

proc setVerbatimStringEscapeSequencesAllowed*(self: gen_qscilexercpp_types.QsciLexerCPP, allowed: bool): void =
  fcQsciLexerCPP_setVerbatimStringEscapeSequencesAllowed(self.h, allowed)

proc verbatimStringEscapeSequencesAllowed*(self: gen_qscilexercpp_types.QsciLexerCPP, ): bool =
  fcQsciLexerCPP_verbatimStringEscapeSequencesAllowed(self.h)

proc setFoldAtElse*(self: gen_qscilexercpp_types.QsciLexerCPP, fold: bool): void =
  fcQsciLexerCPP_setFoldAtElse(self.h, fold)

proc setFoldComments*(self: gen_qscilexercpp_types.QsciLexerCPP, fold: bool): void =
  fcQsciLexerCPP_setFoldComments(self.h, fold)

proc setFoldCompact*(self: gen_qscilexercpp_types.QsciLexerCPP, fold: bool): void =
  fcQsciLexerCPP_setFoldCompact(self.h, fold)

proc setFoldPreprocessor*(self: gen_qscilexercpp_types.QsciLexerCPP, fold: bool): void =
  fcQsciLexerCPP_setFoldPreprocessor(self.h, fold)

proc setStylePreprocessor*(self: gen_qscilexercpp_types.QsciLexerCPP, style: bool): void =
  fcQsciLexerCPP_setStylePreprocessor(self.h, style)

proc tr*(_: type gen_qscilexercpp_types.QsciLexerCPP, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerCPP_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexercpp_types.QsciLexerCPP, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerCPP_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexercpp_types.QsciLexerCPP, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerCPP_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexercpp_types.QsciLexerCPP, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerCPP_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc blockEnd*(self: gen_qscilexercpp_types.QsciLexerCPP, style: ptr cint): cstring =
  (fcQsciLexerCPP_blockEnd1(self.h, style))

proc blockStart*(self: gen_qscilexercpp_types.QsciLexerCPP, style: ptr cint): cstring =
  (fcQsciLexerCPP_blockStart1(self.h, style))

proc blockStartKeyword*(self: gen_qscilexercpp_types.QsciLexerCPP, style: ptr cint): cstring =
  (fcQsciLexerCPP_blockStartKeyword1(self.h, style))

proc QsciLexerCPPmetaObject*(self: gen_qscilexercpp_types.QsciLexerCPP, ): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fQsciLexerCPP_virtualbase_metaObject(self.h))

type QsciLexerCPPmetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qscilexercpp_types.QsciLexerCPP, slot: QsciLexerCPPmetaObjectProc) =
  # TODO check subclass
  var tmp = new QsciLexerCPPmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_metaObject(self: ptr cQsciLexerCPP, slot: int): pointer {.exportc: "miqt_exec_callback_QsciLexerCPP_metaObject ".} =
  var nimfunc = cast[ptr QsciLexerCPPmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QsciLexerCPPmetacast*(self: gen_qscilexercpp_types.QsciLexerCPP, param1: cstring): pointer =
  fQsciLexerCPP_virtualbase_metacast(self.h, param1)

type QsciLexerCPPmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qscilexercpp_types.QsciLexerCPP, slot: QsciLexerCPPmetacastProc) =
  # TODO check subclass
  var tmp = new QsciLexerCPPmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_metacast(self: ptr cQsciLexerCPP, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciLexerCPP_metacast ".} =
  var nimfunc = cast[ptr QsciLexerCPPmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerCPPmetacall*(self: gen_qscilexercpp_types.QsciLexerCPP, param1: cint, param2: cint, param3: pointer): cint =
  fQsciLexerCPP_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerCPPmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qscilexercpp_types.QsciLexerCPP, slot: QsciLexerCPPmetacallProc) =
  # TODO check subclass
  var tmp = new QsciLexerCPPmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_metacall(self: ptr cQsciLexerCPP, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerCPP_metacall ".} =
  var nimfunc = cast[ptr QsciLexerCPPmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QsciLexerCPPsetFoldAtElse*(self: gen_qscilexercpp_types.QsciLexerCPP, fold: bool): void =
  fQsciLexerCPP_virtualbase_setFoldAtElse(self.h, fold)

type QsciLexerCPPsetFoldAtElseProc* = proc(fold: bool): void
proc onsetFoldAtElse*(self: gen_qscilexercpp_types.QsciLexerCPP, slot: QsciLexerCPPsetFoldAtElseProc) =
  # TODO check subclass
  var tmp = new QsciLexerCPPsetFoldAtElseProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_setFoldAtElse(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_setFoldAtElse(self: ptr cQsciLexerCPP, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerCPP_setFoldAtElse ".} =
  var nimfunc = cast[ptr QsciLexerCPPsetFoldAtElseProc](cast[pointer](slot))
  let slotval1 = fold


  nimfunc[](slotval1)
proc QsciLexerCPPsetFoldComments*(self: gen_qscilexercpp_types.QsciLexerCPP, fold: bool): void =
  fQsciLexerCPP_virtualbase_setFoldComments(self.h, fold)

type QsciLexerCPPsetFoldCommentsProc* = proc(fold: bool): void
proc onsetFoldComments*(self: gen_qscilexercpp_types.QsciLexerCPP, slot: QsciLexerCPPsetFoldCommentsProc) =
  # TODO check subclass
  var tmp = new QsciLexerCPPsetFoldCommentsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_setFoldComments(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_setFoldComments(self: ptr cQsciLexerCPP, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerCPP_setFoldComments ".} =
  var nimfunc = cast[ptr QsciLexerCPPsetFoldCommentsProc](cast[pointer](slot))
  let slotval1 = fold


  nimfunc[](slotval1)
proc QsciLexerCPPsetFoldCompact*(self: gen_qscilexercpp_types.QsciLexerCPP, fold: bool): void =
  fQsciLexerCPP_virtualbase_setFoldCompact(self.h, fold)

type QsciLexerCPPsetFoldCompactProc* = proc(fold: bool): void
proc onsetFoldCompact*(self: gen_qscilexercpp_types.QsciLexerCPP, slot: QsciLexerCPPsetFoldCompactProc) =
  # TODO check subclass
  var tmp = new QsciLexerCPPsetFoldCompactProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_setFoldCompact(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_setFoldCompact(self: ptr cQsciLexerCPP, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerCPP_setFoldCompact ".} =
  var nimfunc = cast[ptr QsciLexerCPPsetFoldCompactProc](cast[pointer](slot))
  let slotval1 = fold


  nimfunc[](slotval1)
proc QsciLexerCPPsetFoldPreprocessor*(self: gen_qscilexercpp_types.QsciLexerCPP, fold: bool): void =
  fQsciLexerCPP_virtualbase_setFoldPreprocessor(self.h, fold)

type QsciLexerCPPsetFoldPreprocessorProc* = proc(fold: bool): void
proc onsetFoldPreprocessor*(self: gen_qscilexercpp_types.QsciLexerCPP, slot: QsciLexerCPPsetFoldPreprocessorProc) =
  # TODO check subclass
  var tmp = new QsciLexerCPPsetFoldPreprocessorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_setFoldPreprocessor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_setFoldPreprocessor(self: ptr cQsciLexerCPP, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerCPP_setFoldPreprocessor ".} =
  var nimfunc = cast[ptr QsciLexerCPPsetFoldPreprocessorProc](cast[pointer](slot))
  let slotval1 = fold


  nimfunc[](slotval1)
proc QsciLexerCPPsetStylePreprocessor*(self: gen_qscilexercpp_types.QsciLexerCPP, style: bool): void =
  fQsciLexerCPP_virtualbase_setStylePreprocessor(self.h, style)

type QsciLexerCPPsetStylePreprocessorProc* = proc(style: bool): void
proc onsetStylePreprocessor*(self: gen_qscilexercpp_types.QsciLexerCPP, slot: QsciLexerCPPsetStylePreprocessorProc) =
  # TODO check subclass
  var tmp = new QsciLexerCPPsetStylePreprocessorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_setStylePreprocessor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_setStylePreprocessor(self: ptr cQsciLexerCPP, slot: int, style: bool): void {.exportc: "miqt_exec_callback_QsciLexerCPP_setStylePreprocessor ".} =
  var nimfunc = cast[ptr QsciLexerCPPsetStylePreprocessorProc](cast[pointer](slot))
  let slotval1 = style


  nimfunc[](slotval1)
type QsciLexerCPPlanguageProc* = proc(): cstring
proc onlanguage*(self: gen_qscilexercpp_types.QsciLexerCPP, slot: QsciLexerCPPlanguageProc) =
  # TODO check subclass
  var tmp = new QsciLexerCPPlanguageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_language(self: ptr cQsciLexerCPP, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerCPP_language ".} =
  var nimfunc = cast[ptr QsciLexerCPPlanguageProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerCPPlexer*(self: gen_qscilexercpp_types.QsciLexerCPP, ): cstring =
  (fQsciLexerCPP_virtualbase_lexer(self.h))

type QsciLexerCPPlexerProc* = proc(): cstring
proc onlexer*(self: gen_qscilexercpp_types.QsciLexerCPP, slot: QsciLexerCPPlexerProc) =
  # TODO check subclass
  var tmp = new QsciLexerCPPlexerProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_lexer(self: ptr cQsciLexerCPP, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerCPP_lexer ".} =
  var nimfunc = cast[ptr QsciLexerCPPlexerProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerCPPlexerId*(self: gen_qscilexercpp_types.QsciLexerCPP, ): cint =
  fQsciLexerCPP_virtualbase_lexerId(self.h)

type QsciLexerCPPlexerIdProc* = proc(): cint
proc onlexerId*(self: gen_qscilexercpp_types.QsciLexerCPP, slot: QsciLexerCPPlexerIdProc) =
  # TODO check subclass
  var tmp = new QsciLexerCPPlexerIdProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_lexerId(self: ptr cQsciLexerCPP, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCPP_lexerId ".} =
  var nimfunc = cast[ptr QsciLexerCPPlexerIdProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerCPPautoCompletionFillups*(self: gen_qscilexercpp_types.QsciLexerCPP, ): cstring =
  (fQsciLexerCPP_virtualbase_autoCompletionFillups(self.h))

type QsciLexerCPPautoCompletionFillupsProc* = proc(): cstring
proc onautoCompletionFillups*(self: gen_qscilexercpp_types.QsciLexerCPP, slot: QsciLexerCPPautoCompletionFillupsProc) =
  # TODO check subclass
  var tmp = new QsciLexerCPPautoCompletionFillupsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_autoCompletionFillups(self: ptr cQsciLexerCPP, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerCPP_autoCompletionFillups ".} =
  var nimfunc = cast[ptr QsciLexerCPPautoCompletionFillupsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerCPPautoCompletionWordSeparators*(self: gen_qscilexercpp_types.QsciLexerCPP, ): seq[string] =
  var v_ma = fQsciLexerCPP_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerCPPautoCompletionWordSeparatorsProc* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: gen_qscilexercpp_types.QsciLexerCPP, slot: QsciLexerCPPautoCompletionWordSeparatorsProc) =
  # TODO check subclass
  var tmp = new QsciLexerCPPautoCompletionWordSeparatorsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_autoCompletionWordSeparators(self: ptr cQsciLexerCPP, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerCPP_autoCompletionWordSeparators ".} =
  var nimfunc = cast[ptr QsciLexerCPPautoCompletionWordSeparatorsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QsciLexerCPPblockEnd*(self: gen_qscilexercpp_types.QsciLexerCPP, style: ptr cint): cstring =
  (fQsciLexerCPP_virtualbase_blockEnd(self.h, style))

type QsciLexerCPPblockEndProc* = proc(style: ptr cint): cstring
proc onblockEnd*(self: gen_qscilexercpp_types.QsciLexerCPP, slot: QsciLexerCPPblockEndProc) =
  # TODO check subclass
  var tmp = new QsciLexerCPPblockEndProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_blockEnd(self: ptr cQsciLexerCPP, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerCPP_blockEnd ".} =
  var nimfunc = cast[ptr QsciLexerCPPblockEndProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerCPPblockLookback*(self: gen_qscilexercpp_types.QsciLexerCPP, ): cint =
  fQsciLexerCPP_virtualbase_blockLookback(self.h)

type QsciLexerCPPblockLookbackProc* = proc(): cint
proc onblockLookback*(self: gen_qscilexercpp_types.QsciLexerCPP, slot: QsciLexerCPPblockLookbackProc) =
  # TODO check subclass
  var tmp = new QsciLexerCPPblockLookbackProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_blockLookback(self: ptr cQsciLexerCPP, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCPP_blockLookback ".} =
  var nimfunc = cast[ptr QsciLexerCPPblockLookbackProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerCPPblockStart*(self: gen_qscilexercpp_types.QsciLexerCPP, style: ptr cint): cstring =
  (fQsciLexerCPP_virtualbase_blockStart(self.h, style))

type QsciLexerCPPblockStartProc* = proc(style: ptr cint): cstring
proc onblockStart*(self: gen_qscilexercpp_types.QsciLexerCPP, slot: QsciLexerCPPblockStartProc) =
  # TODO check subclass
  var tmp = new QsciLexerCPPblockStartProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_blockStart(self: ptr cQsciLexerCPP, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerCPP_blockStart ".} =
  var nimfunc = cast[ptr QsciLexerCPPblockStartProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerCPPblockStartKeyword*(self: gen_qscilexercpp_types.QsciLexerCPP, style: ptr cint): cstring =
  (fQsciLexerCPP_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerCPPblockStartKeywordProc* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: gen_qscilexercpp_types.QsciLexerCPP, slot: QsciLexerCPPblockStartKeywordProc) =
  # TODO check subclass
  var tmp = new QsciLexerCPPblockStartKeywordProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_blockStartKeyword(self: ptr cQsciLexerCPP, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerCPP_blockStartKeyword ".} =
  var nimfunc = cast[ptr QsciLexerCPPblockStartKeywordProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerCPPbraceStyle*(self: gen_qscilexercpp_types.QsciLexerCPP, ): cint =
  fQsciLexerCPP_virtualbase_braceStyle(self.h)

type QsciLexerCPPbraceStyleProc* = proc(): cint
proc onbraceStyle*(self: gen_qscilexercpp_types.QsciLexerCPP, slot: QsciLexerCPPbraceStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerCPPbraceStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_braceStyle(self: ptr cQsciLexerCPP, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCPP_braceStyle ".} =
  var nimfunc = cast[ptr QsciLexerCPPbraceStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerCPPcaseSensitive*(self: gen_qscilexercpp_types.QsciLexerCPP, ): bool =
  fQsciLexerCPP_virtualbase_caseSensitive(self.h)

type QsciLexerCPPcaseSensitiveProc* = proc(): bool
proc oncaseSensitive*(self: gen_qscilexercpp_types.QsciLexerCPP, slot: QsciLexerCPPcaseSensitiveProc) =
  # TODO check subclass
  var tmp = new QsciLexerCPPcaseSensitiveProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_caseSensitive(self: ptr cQsciLexerCPP, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerCPP_caseSensitive ".} =
  var nimfunc = cast[ptr QsciLexerCPPcaseSensitiveProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerCPPcolor*(self: gen_qscilexercpp_types.QsciLexerCPP, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerCPP_virtualbase_color(self.h, style))

type QsciLexerCPPcolorProc* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: gen_qscilexercpp_types.QsciLexerCPP, slot: QsciLexerCPPcolorProc) =
  # TODO check subclass
  var tmp = new QsciLexerCPPcolorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_color(self: ptr cQsciLexerCPP, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCPP_color ".} =
  var nimfunc = cast[ptr QsciLexerCPPcolorProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerCPPeolFill*(self: gen_qscilexercpp_types.QsciLexerCPP, style: cint): bool =
  fQsciLexerCPP_virtualbase_eolFill(self.h, style)

type QsciLexerCPPeolFillProc* = proc(style: cint): bool
proc oneolFill*(self: gen_qscilexercpp_types.QsciLexerCPP, slot: QsciLexerCPPeolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerCPPeolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_eolFill(self: ptr cQsciLexerCPP, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerCPP_eolFill ".} =
  var nimfunc = cast[ptr QsciLexerCPPeolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerCPPfont*(self: gen_qscilexercpp_types.QsciLexerCPP, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fQsciLexerCPP_virtualbase_font(self.h, style))

type QsciLexerCPPfontProc* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: gen_qscilexercpp_types.QsciLexerCPP, slot: QsciLexerCPPfontProc) =
  # TODO check subclass
  var tmp = new QsciLexerCPPfontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_font(self: ptr cQsciLexerCPP, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCPP_font ".} =
  var nimfunc = cast[ptr QsciLexerCPPfontProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerCPPindentationGuideView*(self: gen_qscilexercpp_types.QsciLexerCPP, ): cint =
  fQsciLexerCPP_virtualbase_indentationGuideView(self.h)

type QsciLexerCPPindentationGuideViewProc* = proc(): cint
proc onindentationGuideView*(self: gen_qscilexercpp_types.QsciLexerCPP, slot: QsciLexerCPPindentationGuideViewProc) =
  # TODO check subclass
  var tmp = new QsciLexerCPPindentationGuideViewProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_indentationGuideView(self: ptr cQsciLexerCPP, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCPP_indentationGuideView ".} =
  var nimfunc = cast[ptr QsciLexerCPPindentationGuideViewProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerCPPkeywords*(self: gen_qscilexercpp_types.QsciLexerCPP, set: cint): cstring =
  (fQsciLexerCPP_virtualbase_keywords(self.h, set))

type QsciLexerCPPkeywordsProc* = proc(set: cint): cstring
proc onkeywords*(self: gen_qscilexercpp_types.QsciLexerCPP, slot: QsciLexerCPPkeywordsProc) =
  # TODO check subclass
  var tmp = new QsciLexerCPPkeywordsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_keywords(self: ptr cQsciLexerCPP, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerCPP_keywords ".} =
  var nimfunc = cast[ptr QsciLexerCPPkeywordsProc](cast[pointer](slot))
  let slotval1 = set


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerCPPdefaultStyle*(self: gen_qscilexercpp_types.QsciLexerCPP, ): cint =
  fQsciLexerCPP_virtualbase_defaultStyle(self.h)

type QsciLexerCPPdefaultStyleProc* = proc(): cint
proc ondefaultStyle*(self: gen_qscilexercpp_types.QsciLexerCPP, slot: QsciLexerCPPdefaultStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerCPPdefaultStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_defaultStyle(self: ptr cQsciLexerCPP, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCPP_defaultStyle ".} =
  var nimfunc = cast[ptr QsciLexerCPPdefaultStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QsciLexerCPPdescriptionProc* = proc(style: cint): string
proc ondescription*(self: gen_qscilexercpp_types.QsciLexerCPP, slot: QsciLexerCPPdescriptionProc) =
  # TODO check subclass
  var tmp = new QsciLexerCPPdescriptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_description(self: ptr cQsciLexerCPP, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerCPP_description ".} =
  var nimfunc = cast[ptr QsciLexerCPPdescriptionProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc QsciLexerCPPpaper*(self: gen_qscilexercpp_types.QsciLexerCPP, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerCPP_virtualbase_paper(self.h, style))

type QsciLexerCPPpaperProc* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: gen_qscilexercpp_types.QsciLexerCPP, slot: QsciLexerCPPpaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerCPPpaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_paper(self: ptr cQsciLexerCPP, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCPP_paper ".} =
  var nimfunc = cast[ptr QsciLexerCPPpaperProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerCPPdefaultColor*(self: gen_qscilexercpp_types.QsciLexerCPP, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerCPP_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerCPPdefaultColorWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColor*(self: gen_qscilexercpp_types.QsciLexerCPP, slot: QsciLexerCPPdefaultColorWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerCPPdefaultColorWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_defaultColorWithStyle(self: ptr cQsciLexerCPP, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCPP_defaultColorWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerCPPdefaultColorWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerCPPdefaultEolFill*(self: gen_qscilexercpp_types.QsciLexerCPP, style: cint): bool =
  fQsciLexerCPP_virtualbase_defaultEolFill(self.h, style)

type QsciLexerCPPdefaultEolFillProc* = proc(style: cint): bool
proc ondefaultEolFill*(self: gen_qscilexercpp_types.QsciLexerCPP, slot: QsciLexerCPPdefaultEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerCPPdefaultEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_defaultEolFill(self: ptr cQsciLexerCPP, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerCPP_defaultEolFill ".} =
  var nimfunc = cast[ptr QsciLexerCPPdefaultEolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerCPPdefaultFont*(self: gen_qscilexercpp_types.QsciLexerCPP, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fQsciLexerCPP_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerCPPdefaultFontWithStyleProc* = proc(style: cint): gen_qfont.QFont
proc ondefaultFont*(self: gen_qscilexercpp_types.QsciLexerCPP, slot: QsciLexerCPPdefaultFontWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerCPPdefaultFontWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_defaultFontWithStyle(self: ptr cQsciLexerCPP, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCPP_defaultFontWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerCPPdefaultFontWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerCPPdefaultPaper*(self: gen_qscilexercpp_types.QsciLexerCPP, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerCPP_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerCPPdefaultPaperWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaper*(self: gen_qscilexercpp_types.QsciLexerCPP, slot: QsciLexerCPPdefaultPaperWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerCPPdefaultPaperWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_defaultPaperWithStyle(self: ptr cQsciLexerCPP, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCPP_defaultPaperWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerCPPdefaultPaperWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerCPPsetEditor*(self: gen_qscilexercpp_types.QsciLexerCPP, editor: gen_qsciscintilla.QsciScintilla): void =
  fQsciLexerCPP_virtualbase_setEditor(self.h, editor.h)

type QsciLexerCPPsetEditorProc* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: gen_qscilexercpp_types.QsciLexerCPP, slot: QsciLexerCPPsetEditorProc) =
  # TODO check subclass
  var tmp = new QsciLexerCPPsetEditorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_setEditor(self: ptr cQsciLexerCPP, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCPP_setEditor ".} =
  var nimfunc = cast[ptr QsciLexerCPPsetEditorProc](cast[pointer](slot))
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](slotval1)
proc QsciLexerCPPrefreshProperties*(self: gen_qscilexercpp_types.QsciLexerCPP, ): void =
  fQsciLexerCPP_virtualbase_refreshProperties(self.h)

type QsciLexerCPPrefreshPropertiesProc* = proc(): void
proc onrefreshProperties*(self: gen_qscilexercpp_types.QsciLexerCPP, slot: QsciLexerCPPrefreshPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerCPPrefreshPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_refreshProperties(self: ptr cQsciLexerCPP, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerCPP_refreshProperties ".} =
  var nimfunc = cast[ptr QsciLexerCPPrefreshPropertiesProc](cast[pointer](slot))

  nimfunc[]()
proc QsciLexerCPPstyleBitsNeeded*(self: gen_qscilexercpp_types.QsciLexerCPP, ): cint =
  fQsciLexerCPP_virtualbase_styleBitsNeeded(self.h)

type QsciLexerCPPstyleBitsNeededProc* = proc(): cint
proc onstyleBitsNeeded*(self: gen_qscilexercpp_types.QsciLexerCPP, slot: QsciLexerCPPstyleBitsNeededProc) =
  # TODO check subclass
  var tmp = new QsciLexerCPPstyleBitsNeededProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_styleBitsNeeded(self: ptr cQsciLexerCPP, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCPP_styleBitsNeeded ".} =
  var nimfunc = cast[ptr QsciLexerCPPstyleBitsNeededProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerCPPwordCharacters*(self: gen_qscilexercpp_types.QsciLexerCPP, ): cstring =
  (fQsciLexerCPP_virtualbase_wordCharacters(self.h))

type QsciLexerCPPwordCharactersProc* = proc(): cstring
proc onwordCharacters*(self: gen_qscilexercpp_types.QsciLexerCPP, slot: QsciLexerCPPwordCharactersProc) =
  # TODO check subclass
  var tmp = new QsciLexerCPPwordCharactersProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_wordCharacters(self: ptr cQsciLexerCPP, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerCPP_wordCharacters ".} =
  var nimfunc = cast[ptr QsciLexerCPPwordCharactersProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerCPPsetAutoIndentStyle*(self: gen_qscilexercpp_types.QsciLexerCPP, autoindentstyle: cint): void =
  fQsciLexerCPP_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerCPPsetAutoIndentStyleProc* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: gen_qscilexercpp_types.QsciLexerCPP, slot: QsciLexerCPPsetAutoIndentStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerCPPsetAutoIndentStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_setAutoIndentStyle(self: ptr cQsciLexerCPP, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerCPP_setAutoIndentStyle ".} =
  var nimfunc = cast[ptr QsciLexerCPPsetAutoIndentStyleProc](cast[pointer](slot))
  let slotval1 = autoindentstyle


  nimfunc[](slotval1)
proc QsciLexerCPPsetColor*(self: gen_qscilexercpp_types.QsciLexerCPP, c: gen_qcolor.QColor, style: cint): void =
  fQsciLexerCPP_virtualbase_setColor(self.h, c.h, style)

type QsciLexerCPPsetColorProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: gen_qscilexercpp_types.QsciLexerCPP, slot: QsciLexerCPPsetColorProc) =
  # TODO check subclass
  var tmp = new QsciLexerCPPsetColorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_setColor(self: ptr cQsciLexerCPP, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerCPP_setColor ".} =
  var nimfunc = cast[ptr QsciLexerCPPsetColorProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerCPPsetEolFill*(self: gen_qscilexercpp_types.QsciLexerCPP, eoffill: bool, style: cint): void =
  fQsciLexerCPP_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerCPPsetEolFillProc* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: gen_qscilexercpp_types.QsciLexerCPP, slot: QsciLexerCPPsetEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerCPPsetEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_setEolFill(self: ptr cQsciLexerCPP, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerCPP_setEolFill ".} =
  var nimfunc = cast[ptr QsciLexerCPPsetEolFillProc](cast[pointer](slot))
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerCPPsetFont*(self: gen_qscilexercpp_types.QsciLexerCPP, f: gen_qfont.QFont, style: cint): void =
  fQsciLexerCPP_virtualbase_setFont(self.h, f.h, style)

type QsciLexerCPPsetFontProc* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: gen_qscilexercpp_types.QsciLexerCPP, slot: QsciLexerCPPsetFontProc) =
  # TODO check subclass
  var tmp = new QsciLexerCPPsetFontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_setFont(self: ptr cQsciLexerCPP, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerCPP_setFont ".} =
  var nimfunc = cast[ptr QsciLexerCPPsetFontProc](cast[pointer](slot))
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerCPPsetPaper*(self: gen_qscilexercpp_types.QsciLexerCPP, c: gen_qcolor.QColor, style: cint): void =
  fQsciLexerCPP_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerCPPsetPaperProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: gen_qscilexercpp_types.QsciLexerCPP, slot: QsciLexerCPPsetPaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerCPPsetPaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_setPaper(self: ptr cQsciLexerCPP, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerCPP_setPaper ".} =
  var nimfunc = cast[ptr QsciLexerCPPsetPaperProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerCPPreadProperties*(self: gen_qscilexercpp_types.QsciLexerCPP, qs: gen_qsettings.QSettings, prefix: string): bool =
  fQsciLexerCPP_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerCPPreadPropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: gen_qscilexercpp_types.QsciLexerCPP, slot: QsciLexerCPPreadPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerCPPreadPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_readProperties(self: ptr cQsciLexerCPP, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerCPP_readProperties ".} =
  var nimfunc = cast[ptr QsciLexerCPPreadPropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerCPPwriteProperties*(self: gen_qscilexercpp_types.QsciLexerCPP, qs: gen_qsettings.QSettings, prefix: string): bool =
  fQsciLexerCPP_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerCPPwritePropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: gen_qscilexercpp_types.QsciLexerCPP, slot: QsciLexerCPPwritePropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerCPPwritePropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_writeProperties(self: ptr cQsciLexerCPP, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerCPP_writeProperties ".} =
  var nimfunc = cast[ptr QsciLexerCPPwritePropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerCPPevent*(self: gen_qscilexercpp_types.QsciLexerCPP, event: gen_qcoreevent.QEvent): bool =
  fQsciLexerCPP_virtualbase_event(self.h, event.h)

type QsciLexerCPPeventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qscilexercpp_types.QsciLexerCPP, slot: QsciLexerCPPeventProc) =
  # TODO check subclass
  var tmp = new QsciLexerCPPeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_event(self: ptr cQsciLexerCPP, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerCPP_event ".} =
  var nimfunc = cast[ptr QsciLexerCPPeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerCPPeventFilter*(self: gen_qscilexercpp_types.QsciLexerCPP, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =
  fQsciLexerCPP_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerCPPeventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qscilexercpp_types.QsciLexerCPP, slot: QsciLexerCPPeventFilterProc) =
  # TODO check subclass
  var tmp = new QsciLexerCPPeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_eventFilter(self: ptr cQsciLexerCPP, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerCPP_eventFilter ".} =
  var nimfunc = cast[ptr QsciLexerCPPeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerCPPtimerEvent*(self: gen_qscilexercpp_types.QsciLexerCPP, event: gen_qcoreevent.QTimerEvent): void =
  fQsciLexerCPP_virtualbase_timerEvent(self.h, event.h)

type QsciLexerCPPtimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qscilexercpp_types.QsciLexerCPP, slot: QsciLexerCPPtimerEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerCPPtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_timerEvent(self: ptr cQsciLexerCPP, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCPP_timerEvent ".} =
  var nimfunc = cast[ptr QsciLexerCPPtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerCPPchildEvent*(self: gen_qscilexercpp_types.QsciLexerCPP, event: gen_qcoreevent.QChildEvent): void =
  fQsciLexerCPP_virtualbase_childEvent(self.h, event.h)

type QsciLexerCPPchildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qscilexercpp_types.QsciLexerCPP, slot: QsciLexerCPPchildEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerCPPchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_childEvent(self: ptr cQsciLexerCPP, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCPP_childEvent ".} =
  var nimfunc = cast[ptr QsciLexerCPPchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerCPPcustomEvent*(self: gen_qscilexercpp_types.QsciLexerCPP, event: gen_qcoreevent.QEvent): void =
  fQsciLexerCPP_virtualbase_customEvent(self.h, event.h)

type QsciLexerCPPcustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qscilexercpp_types.QsciLexerCPP, slot: QsciLexerCPPcustomEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerCPPcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_customEvent(self: ptr cQsciLexerCPP, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCPP_customEvent ".} =
  var nimfunc = cast[ptr QsciLexerCPPcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerCPPconnectNotify*(self: gen_qscilexercpp_types.QsciLexerCPP, signal: gen_qmetaobject.QMetaMethod): void =
  fQsciLexerCPP_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerCPPconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qscilexercpp_types.QsciLexerCPP, slot: QsciLexerCPPconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerCPPconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_connectNotify(self: ptr cQsciLexerCPP, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCPP_connectNotify ".} =
  var nimfunc = cast[ptr QsciLexerCPPconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QsciLexerCPPdisconnectNotify*(self: gen_qscilexercpp_types.QsciLexerCPP, signal: gen_qmetaobject.QMetaMethod): void =
  fQsciLexerCPP_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerCPPdisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qscilexercpp_types.QsciLexerCPP, slot: QsciLexerCPPdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerCPPdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_disconnectNotify(self: ptr cQsciLexerCPP, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCPP_disconnectNotify ".} =
  var nimfunc = cast[ptr QsciLexerCPPdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qscilexercpp_types.QsciLexerCPP): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerCPP_staticMetaObject())
proc delete*(self: gen_qscilexercpp_types.QsciLexerCPP) =
  fcQsciLexerCPP_delete(self.h)
