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
{.compile("gen_qscilexercpp.cpp", cflags).}


type QsciLexerCPPEnum* = cint
const
  QsciLexerCPPDefault* = 0
  QsciLexerCPPInactiveDefault* = 64
  QsciLexerCPPComment* = 1
  QsciLexerCPPInactiveComment* = 65
  QsciLexerCPPCommentLine* = 2
  QsciLexerCPPInactiveCommentLine* = 66
  QsciLexerCPPCommentDoc* = 3
  QsciLexerCPPInactiveCommentDoc* = 67
  QsciLexerCPPNumber* = 4
  QsciLexerCPPInactiveNumber* = 68
  QsciLexerCPPKeyword* = 5
  QsciLexerCPPInactiveKeyword* = 69
  QsciLexerCPPDoubleQuotedString* = 6
  QsciLexerCPPInactiveDoubleQuotedString* = 70
  QsciLexerCPPSingleQuotedString* = 7
  QsciLexerCPPInactiveSingleQuotedString* = 71
  QsciLexerCPPUUID* = 8
  QsciLexerCPPInactiveUUID* = 72
  QsciLexerCPPPreProcessor* = 9
  QsciLexerCPPInactivePreProcessor* = 73
  QsciLexerCPPOperator* = 10
  QsciLexerCPPInactiveOperator* = 74
  QsciLexerCPPIdentifier* = 11
  QsciLexerCPPInactiveIdentifier* = 75
  QsciLexerCPPUnclosedString* = 12
  QsciLexerCPPInactiveUnclosedString* = 76
  QsciLexerCPPVerbatimString* = 13
  QsciLexerCPPInactiveVerbatimString* = 77
  QsciLexerCPPRegex* = 14
  QsciLexerCPPInactiveRegex* = 78
  QsciLexerCPPCommentLineDoc* = 15
  QsciLexerCPPInactiveCommentLineDoc* = 79
  QsciLexerCPPKeywordSet2* = 16
  QsciLexerCPPInactiveKeywordSet2* = 80
  QsciLexerCPPCommentDocKeyword* = 17
  QsciLexerCPPInactiveCommentDocKeyword* = 81
  QsciLexerCPPCommentDocKeywordError* = 18
  QsciLexerCPPInactiveCommentDocKeywordError* = 82
  QsciLexerCPPGlobalClass* = 19
  QsciLexerCPPInactiveGlobalClass* = 83
  QsciLexerCPPRawString* = 20
  QsciLexerCPPInactiveRawString* = 84
  QsciLexerCPPTripleQuotedVerbatimString* = 21
  QsciLexerCPPInactiveTripleQuotedVerbatimString* = 85
  QsciLexerCPPHashQuotedString* = 22
  QsciLexerCPPInactiveHashQuotedString* = 86
  QsciLexerCPPPreProcessorComment* = 23
  QsciLexerCPPInactivePreProcessorComment* = 87
  QsciLexerCPPPreProcessorCommentLineDoc* = 24
  QsciLexerCPPInactivePreProcessorCommentLineDoc* = 88
  QsciLexerCPPUserLiteral* = 25
  QsciLexerCPPInactiveUserLiteral* = 89
  QsciLexerCPPTaskMarker* = 26
  QsciLexerCPPInactiveTaskMarker* = 90
  QsciLexerCPPEscapeSequence* = 27
  QsciLexerCPPInactiveEscapeSequence* = 91



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
proc fcQsciLexerCPP_blockEnd1(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerCPP_blockEnd1".}
proc fcQsciLexerCPP_blockStart1(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerCPP_blockStart1".}
proc fcQsciLexerCPP_blockStartKeyword1(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerCPP_blockStartKeyword1".}
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
proc fcQsciLexerCPP_delete(self: pointer) {.importc: "QsciLexerCPP_delete".}


func init*(T: type QsciLexerCPP, h: ptr cQsciLexerCPP): QsciLexerCPP =
  T(h: h)
proc create*(T: type QsciLexerCPP, ): QsciLexerCPP =

  QsciLexerCPP.init(fcQsciLexerCPP_new())
proc create*(T: type QsciLexerCPP, parent: gen_qobject.QObject): QsciLexerCPP =

  QsciLexerCPP.init(fcQsciLexerCPP_new2(parent.h))
proc create*(T: type QsciLexerCPP, parent: gen_qobject.QObject, caseInsensitiveKeywords: bool): QsciLexerCPP =

  QsciLexerCPP.init(fcQsciLexerCPP_new3(parent.h, caseInsensitiveKeywords))
proc metaObject*(self: QsciLexerCPP, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQsciLexerCPP_metaObject(self.h))

proc metacast*(self: QsciLexerCPP, param1: cstring): pointer =

  fcQsciLexerCPP_metacast(self.h, param1)

proc metacall*(self: QsciLexerCPP, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQsciLexerCPP_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QsciLexerCPP, s: cstring): string =

  let v_ms = fcQsciLexerCPP_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: QsciLexerCPP, ): cstring =

  (fcQsciLexerCPP_language(self.h))

proc lexer*(self: QsciLexerCPP, ): cstring =

  (fcQsciLexerCPP_lexer(self.h))

proc autoCompletionWordSeparators*(self: QsciLexerCPP, ): seq[string] =

  var v_ma = fcQsciLexerCPP_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc blockEnd*(self: QsciLexerCPP, ): cstring =

  (fcQsciLexerCPP_blockEnd(self.h))

proc blockStart*(self: QsciLexerCPP, ): cstring =

  (fcQsciLexerCPP_blockStart(self.h))

proc blockStartKeyword*(self: QsciLexerCPP, ): cstring =

  (fcQsciLexerCPP_blockStartKeyword(self.h))

proc braceStyle*(self: QsciLexerCPP, ): cint =

  fcQsciLexerCPP_braceStyle(self.h)

proc wordCharacters*(self: QsciLexerCPP, ): cstring =

  (fcQsciLexerCPP_wordCharacters(self.h))

proc defaultColor*(self: QsciLexerCPP, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerCPP_defaultColor(self.h, style))

proc defaultEolFill*(self: QsciLexerCPP, style: cint): bool =

  fcQsciLexerCPP_defaultEolFill(self.h, style)

proc defaultFont*(self: QsciLexerCPP, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQsciLexerCPP_defaultFont(self.h, style))

proc defaultPaper*(self: QsciLexerCPP, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerCPP_defaultPaper(self.h, style))

proc keywords*(self: QsciLexerCPP, set: cint): cstring =

  (fcQsciLexerCPP_keywords(self.h, set))

proc description*(self: QsciLexerCPP, style: cint): string =

  let v_ms = fcQsciLexerCPP_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: QsciLexerCPP, ): void =

  fcQsciLexerCPP_refreshProperties(self.h)

proc foldAtElse*(self: QsciLexerCPP, ): bool =

  fcQsciLexerCPP_foldAtElse(self.h)

proc foldComments*(self: QsciLexerCPP, ): bool =

  fcQsciLexerCPP_foldComments(self.h)

proc foldCompact*(self: QsciLexerCPP, ): bool =

  fcQsciLexerCPP_foldCompact(self.h)

proc foldPreprocessor*(self: QsciLexerCPP, ): bool =

  fcQsciLexerCPP_foldPreprocessor(self.h)

proc stylePreprocessor*(self: QsciLexerCPP, ): bool =

  fcQsciLexerCPP_stylePreprocessor(self.h)

proc setDollarsAllowed*(self: QsciLexerCPP, allowed: bool): void =

  fcQsciLexerCPP_setDollarsAllowed(self.h, allowed)

proc dollarsAllowed*(self: QsciLexerCPP, ): bool =

  fcQsciLexerCPP_dollarsAllowed(self.h)

proc setHighlightTripleQuotedStrings*(self: QsciLexerCPP, enabled: bool): void =

  fcQsciLexerCPP_setHighlightTripleQuotedStrings(self.h, enabled)

proc highlightTripleQuotedStrings*(self: QsciLexerCPP, ): bool =

  fcQsciLexerCPP_highlightTripleQuotedStrings(self.h)

proc setHighlightHashQuotedStrings*(self: QsciLexerCPP, enabled: bool): void =

  fcQsciLexerCPP_setHighlightHashQuotedStrings(self.h, enabled)

proc highlightHashQuotedStrings*(self: QsciLexerCPP, ): bool =

  fcQsciLexerCPP_highlightHashQuotedStrings(self.h)

proc setHighlightBackQuotedStrings*(self: QsciLexerCPP, enabled: bool): void =

  fcQsciLexerCPP_setHighlightBackQuotedStrings(self.h, enabled)

proc highlightBackQuotedStrings*(self: QsciLexerCPP, ): bool =

  fcQsciLexerCPP_highlightBackQuotedStrings(self.h)

proc setHighlightEscapeSequences*(self: QsciLexerCPP, enabled: bool): void =

  fcQsciLexerCPP_setHighlightEscapeSequences(self.h, enabled)

proc highlightEscapeSequences*(self: QsciLexerCPP, ): bool =

  fcQsciLexerCPP_highlightEscapeSequences(self.h)

proc setVerbatimStringEscapeSequencesAllowed*(self: QsciLexerCPP, allowed: bool): void =

  fcQsciLexerCPP_setVerbatimStringEscapeSequencesAllowed(self.h, allowed)

proc verbatimStringEscapeSequencesAllowed*(self: QsciLexerCPP, ): bool =

  fcQsciLexerCPP_verbatimStringEscapeSequencesAllowed(self.h)

proc setFoldAtElse*(self: QsciLexerCPP, fold: bool): void =

  fcQsciLexerCPP_setFoldAtElse(self.h, fold)

proc setFoldComments*(self: QsciLexerCPP, fold: bool): void =

  fcQsciLexerCPP_setFoldComments(self.h, fold)

proc setFoldCompact*(self: QsciLexerCPP, fold: bool): void =

  fcQsciLexerCPP_setFoldCompact(self.h, fold)

proc setFoldPreprocessor*(self: QsciLexerCPP, fold: bool): void =

  fcQsciLexerCPP_setFoldPreprocessor(self.h, fold)

proc setStylePreprocessor*(self: QsciLexerCPP, style: bool): void =

  fcQsciLexerCPP_setStylePreprocessor(self.h, style)

proc tr2*(_: type QsciLexerCPP, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerCPP_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QsciLexerCPP, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerCPP_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc blockEnd1*(self: QsciLexerCPP, style: ptr cint): cstring =

  (fcQsciLexerCPP_blockEnd1(self.h, style))

proc blockStart1*(self: QsciLexerCPP, style: ptr cint): cstring =

  (fcQsciLexerCPP_blockStart1(self.h, style))

proc blockStartKeyword1*(self: QsciLexerCPP, style: ptr cint): cstring =

  (fcQsciLexerCPP_blockStartKeyword1(self.h, style))

proc callVirtualBase_metacall(self: QsciLexerCPP, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQsciLexerCPP_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerCPPmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QsciLexerCPP, slot: proc(super: QsciLexerCPPmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCPPmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_metacall(self: ptr cQsciLexerCPP, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerCPP_metacall ".} =
  type Cb = proc(super: QsciLexerCPPmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QsciLexerCPP(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_setFoldAtElse(self: QsciLexerCPP, fold: bool): void =


  fQsciLexerCPP_virtualbase_setFoldAtElse(self.h, fold)

type QsciLexerCPPsetFoldAtElseBase* = proc(fold: bool): void
proc onsetFoldAtElse*(self: QsciLexerCPP, slot: proc(super: QsciLexerCPPsetFoldAtElseBase, fold: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCPPsetFoldAtElseBase, fold: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_setFoldAtElse(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_setFoldAtElse(self: ptr cQsciLexerCPP, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerCPP_setFoldAtElse ".} =
  type Cb = proc(super: QsciLexerCPPsetFoldAtElseBase, fold: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: bool): auto =
    callVirtualBase_setFoldAtElse(QsciLexerCPP(h: self), fold)
  let slotval1 = fold


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setFoldComments(self: QsciLexerCPP, fold: bool): void =


  fQsciLexerCPP_virtualbase_setFoldComments(self.h, fold)

type QsciLexerCPPsetFoldCommentsBase* = proc(fold: bool): void
proc onsetFoldComments*(self: QsciLexerCPP, slot: proc(super: QsciLexerCPPsetFoldCommentsBase, fold: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCPPsetFoldCommentsBase, fold: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_setFoldComments(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_setFoldComments(self: ptr cQsciLexerCPP, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerCPP_setFoldComments ".} =
  type Cb = proc(super: QsciLexerCPPsetFoldCommentsBase, fold: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: bool): auto =
    callVirtualBase_setFoldComments(QsciLexerCPP(h: self), fold)
  let slotval1 = fold


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setFoldCompact(self: QsciLexerCPP, fold: bool): void =


  fQsciLexerCPP_virtualbase_setFoldCompact(self.h, fold)

type QsciLexerCPPsetFoldCompactBase* = proc(fold: bool): void
proc onsetFoldCompact*(self: QsciLexerCPP, slot: proc(super: QsciLexerCPPsetFoldCompactBase, fold: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCPPsetFoldCompactBase, fold: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_setFoldCompact(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_setFoldCompact(self: ptr cQsciLexerCPP, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerCPP_setFoldCompact ".} =
  type Cb = proc(super: QsciLexerCPPsetFoldCompactBase, fold: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: bool): auto =
    callVirtualBase_setFoldCompact(QsciLexerCPP(h: self), fold)
  let slotval1 = fold


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setFoldPreprocessor(self: QsciLexerCPP, fold: bool): void =


  fQsciLexerCPP_virtualbase_setFoldPreprocessor(self.h, fold)

type QsciLexerCPPsetFoldPreprocessorBase* = proc(fold: bool): void
proc onsetFoldPreprocessor*(self: QsciLexerCPP, slot: proc(super: QsciLexerCPPsetFoldPreprocessorBase, fold: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCPPsetFoldPreprocessorBase, fold: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_setFoldPreprocessor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_setFoldPreprocessor(self: ptr cQsciLexerCPP, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerCPP_setFoldPreprocessor ".} =
  type Cb = proc(super: QsciLexerCPPsetFoldPreprocessorBase, fold: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: bool): auto =
    callVirtualBase_setFoldPreprocessor(QsciLexerCPP(h: self), fold)
  let slotval1 = fold


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setStylePreprocessor(self: QsciLexerCPP, style: bool): void =


  fQsciLexerCPP_virtualbase_setStylePreprocessor(self.h, style)

type QsciLexerCPPsetStylePreprocessorBase* = proc(style: bool): void
proc onsetStylePreprocessor*(self: QsciLexerCPP, slot: proc(super: QsciLexerCPPsetStylePreprocessorBase, style: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCPPsetStylePreprocessorBase, style: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_setStylePreprocessor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_setStylePreprocessor(self: ptr cQsciLexerCPP, slot: int, style: bool): void {.exportc: "miqt_exec_callback_QsciLexerCPP_setStylePreprocessor ".} =
  type Cb = proc(super: QsciLexerCPPsetStylePreprocessorBase, style: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: bool): auto =
    callVirtualBase_setStylePreprocessor(QsciLexerCPP(h: self), style)
  let slotval1 = style


  nimfunc[](superCall, slotval1)
type QsciLexerCPPlanguageBase* = proc(): cstring
proc onlanguage*(self: QsciLexerCPP, slot: proc(): cstring) =
  # TODO check subclass
  type Cb = proc(): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_language(self: ptr cQsciLexerCPP, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerCPP_language ".} =
  type Cb = proc(): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc callVirtualBase_lexer(self: QsciLexerCPP, ): cstring =


  (fQsciLexerCPP_virtualbase_lexer(self.h))

type QsciLexerCPPlexerBase* = proc(): cstring
proc onlexer*(self: QsciLexerCPP, slot: proc(super: QsciLexerCPPlexerBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCPPlexerBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_lexer(self: ptr cQsciLexerCPP, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerCPP_lexer ".} =
  type Cb = proc(super: QsciLexerCPPlexerBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexer(QsciLexerCPP(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_lexerId(self: QsciLexerCPP, ): cint =


  fQsciLexerCPP_virtualbase_lexerId(self.h)

type QsciLexerCPPlexerIdBase* = proc(): cint
proc onlexerId*(self: QsciLexerCPP, slot: proc(super: QsciLexerCPPlexerIdBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCPPlexerIdBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_lexerId(self: ptr cQsciLexerCPP, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCPP_lexerId ".} =
  type Cb = proc(super: QsciLexerCPPlexerIdBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexerId(QsciLexerCPP(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionFillups(self: QsciLexerCPP, ): cstring =


  (fQsciLexerCPP_virtualbase_autoCompletionFillups(self.h))

type QsciLexerCPPautoCompletionFillupsBase* = proc(): cstring
proc onautoCompletionFillups*(self: QsciLexerCPP, slot: proc(super: QsciLexerCPPautoCompletionFillupsBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCPPautoCompletionFillupsBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_autoCompletionFillups(self: ptr cQsciLexerCPP, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerCPP_autoCompletionFillups ".} =
  type Cb = proc(super: QsciLexerCPPautoCompletionFillupsBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionFillups(QsciLexerCPP(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionWordSeparators(self: QsciLexerCPP, ): seq[string] =


  var v_ma = fQsciLexerCPP_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerCPPautoCompletionWordSeparatorsBase* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: QsciLexerCPP, slot: proc(super: QsciLexerCPPautoCompletionWordSeparatorsBase): seq[string]) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCPPautoCompletionWordSeparatorsBase): seq[string]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_autoCompletionWordSeparators(self: ptr cQsciLexerCPP, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerCPP_autoCompletionWordSeparators ".} =
  type Cb = proc(super: QsciLexerCPPautoCompletionWordSeparatorsBase): seq[string]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionWordSeparators(QsciLexerCPP(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_blockEnd(self: QsciLexerCPP, style: ptr cint): cstring =


  (fQsciLexerCPP_virtualbase_blockEnd(self.h, style))

type QsciLexerCPPblockEndBase* = proc(style: ptr cint): cstring
proc onblockEnd*(self: QsciLexerCPP, slot: proc(super: QsciLexerCPPblockEndBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCPPblockEndBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_blockEnd(self: ptr cQsciLexerCPP, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerCPP_blockEnd ".} =
  type Cb = proc(super: QsciLexerCPPblockEndBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockEnd(QsciLexerCPP(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockLookback(self: QsciLexerCPP, ): cint =


  fQsciLexerCPP_virtualbase_blockLookback(self.h)

type QsciLexerCPPblockLookbackBase* = proc(): cint
proc onblockLookback*(self: QsciLexerCPP, slot: proc(super: QsciLexerCPPblockLookbackBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCPPblockLookbackBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_blockLookback(self: ptr cQsciLexerCPP, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCPP_blockLookback ".} =
  type Cb = proc(super: QsciLexerCPPblockLookbackBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_blockLookback(QsciLexerCPP(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_blockStart(self: QsciLexerCPP, style: ptr cint): cstring =


  (fQsciLexerCPP_virtualbase_blockStart(self.h, style))

type QsciLexerCPPblockStartBase* = proc(style: ptr cint): cstring
proc onblockStart*(self: QsciLexerCPP, slot: proc(super: QsciLexerCPPblockStartBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCPPblockStartBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_blockStart(self: ptr cQsciLexerCPP, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerCPP_blockStart ".} =
  type Cb = proc(super: QsciLexerCPPblockStartBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStart(QsciLexerCPP(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockStartKeyword(self: QsciLexerCPP, style: ptr cint): cstring =


  (fQsciLexerCPP_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerCPPblockStartKeywordBase* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: QsciLexerCPP, slot: proc(super: QsciLexerCPPblockStartKeywordBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCPPblockStartKeywordBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_blockStartKeyword(self: ptr cQsciLexerCPP, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerCPP_blockStartKeyword ".} =
  type Cb = proc(super: QsciLexerCPPblockStartKeywordBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStartKeyword(QsciLexerCPP(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_braceStyle(self: QsciLexerCPP, ): cint =


  fQsciLexerCPP_virtualbase_braceStyle(self.h)

type QsciLexerCPPbraceStyleBase* = proc(): cint
proc onbraceStyle*(self: QsciLexerCPP, slot: proc(super: QsciLexerCPPbraceStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCPPbraceStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_braceStyle(self: ptr cQsciLexerCPP, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCPP_braceStyle ".} =
  type Cb = proc(super: QsciLexerCPPbraceStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_braceStyle(QsciLexerCPP(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_caseSensitive(self: QsciLexerCPP, ): bool =


  fQsciLexerCPP_virtualbase_caseSensitive(self.h)

type QsciLexerCPPcaseSensitiveBase* = proc(): bool
proc oncaseSensitive*(self: QsciLexerCPP, slot: proc(super: QsciLexerCPPcaseSensitiveBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCPPcaseSensitiveBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_caseSensitive(self: ptr cQsciLexerCPP, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerCPP_caseSensitive ".} =
  type Cb = proc(super: QsciLexerCPPcaseSensitiveBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_caseSensitive(QsciLexerCPP(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_color(self: QsciLexerCPP, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerCPP_virtualbase_color(self.h, style))

type QsciLexerCPPcolorBase* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: QsciLexerCPP, slot: proc(super: QsciLexerCPPcolorBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCPPcolorBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_color(self: ptr cQsciLexerCPP, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCPP_color ".} =
  type Cb = proc(super: QsciLexerCPPcolorBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_color(QsciLexerCPP(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_eolFill(self: QsciLexerCPP, style: cint): bool =


  fQsciLexerCPP_virtualbase_eolFill(self.h, style)

type QsciLexerCPPeolFillBase* = proc(style: cint): bool
proc oneolFill*(self: QsciLexerCPP, slot: proc(super: QsciLexerCPPeolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCPPeolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_eolFill(self: ptr cQsciLexerCPP, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerCPP_eolFill ".} =
  type Cb = proc(super: QsciLexerCPPeolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_eolFill(QsciLexerCPP(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_font(self: QsciLexerCPP, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerCPP_virtualbase_font(self.h, style))

type QsciLexerCPPfontBase* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: QsciLexerCPP, slot: proc(super: QsciLexerCPPfontBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCPPfontBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_font(self: ptr cQsciLexerCPP, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCPP_font ".} =
  type Cb = proc(super: QsciLexerCPPfontBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_font(QsciLexerCPP(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_indentationGuideView(self: QsciLexerCPP, ): cint =


  fQsciLexerCPP_virtualbase_indentationGuideView(self.h)

type QsciLexerCPPindentationGuideViewBase* = proc(): cint
proc onindentationGuideView*(self: QsciLexerCPP, slot: proc(super: QsciLexerCPPindentationGuideViewBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCPPindentationGuideViewBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_indentationGuideView(self: ptr cQsciLexerCPP, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCPP_indentationGuideView ".} =
  type Cb = proc(super: QsciLexerCPPindentationGuideViewBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_indentationGuideView(QsciLexerCPP(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_keywords(self: QsciLexerCPP, set: cint): cstring =


  (fQsciLexerCPP_virtualbase_keywords(self.h, set))

type QsciLexerCPPkeywordsBase* = proc(set: cint): cstring
proc onkeywords*(self: QsciLexerCPP, slot: proc(super: QsciLexerCPPkeywordsBase, set: cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCPPkeywordsBase, set: cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_keywords(self: ptr cQsciLexerCPP, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerCPP_keywords ".} =
  type Cb = proc(super: QsciLexerCPPkeywordsBase, set: cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(set: cint): auto =
    callVirtualBase_keywords(QsciLexerCPP(h: self), set)
  let slotval1 = set


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultStyle(self: QsciLexerCPP, ): cint =


  fQsciLexerCPP_virtualbase_defaultStyle(self.h)

type QsciLexerCPPdefaultStyleBase* = proc(): cint
proc ondefaultStyle*(self: QsciLexerCPP, slot: proc(super: QsciLexerCPPdefaultStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCPPdefaultStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_defaultStyle(self: ptr cQsciLexerCPP, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCPP_defaultStyle ".} =
  type Cb = proc(super: QsciLexerCPPdefaultStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_defaultStyle(QsciLexerCPP(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
type QsciLexerCPPdescriptionBase* = proc(style: cint): string
proc ondescription*(self: QsciLexerCPP, slot: proc(style: cint): string) =
  # TODO check subclass
  type Cb = proc(style: cint): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_description(self: ptr cQsciLexerCPP, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerCPP_description ".} =
  type Cb = proc(style: cint): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc callVirtualBase_paper(self: QsciLexerCPP, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerCPP_virtualbase_paper(self.h, style))

type QsciLexerCPPpaperBase* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: QsciLexerCPP, slot: proc(super: QsciLexerCPPpaperBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCPPpaperBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_paper(self: ptr cQsciLexerCPP, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCPP_paper ".} =
  type Cb = proc(super: QsciLexerCPPpaperBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_paper(QsciLexerCPP(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultColorWithStyle(self: QsciLexerCPP, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerCPP_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerCPPdefaultColorWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColorWithStyle*(self: QsciLexerCPP, slot: proc(super: QsciLexerCPPdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCPPdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_defaultColorWithStyle(self: ptr cQsciLexerCPP, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCPP_defaultColorWithStyle ".} =
  type Cb = proc(super: QsciLexerCPPdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultColorWithStyle(QsciLexerCPP(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultEolFill(self: QsciLexerCPP, style: cint): bool =


  fQsciLexerCPP_virtualbase_defaultEolFill(self.h, style)

type QsciLexerCPPdefaultEolFillBase* = proc(style: cint): bool
proc ondefaultEolFill*(self: QsciLexerCPP, slot: proc(super: QsciLexerCPPdefaultEolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCPPdefaultEolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_defaultEolFill(self: ptr cQsciLexerCPP, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerCPP_defaultEolFill ".} =
  type Cb = proc(super: QsciLexerCPPdefaultEolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultEolFill(QsciLexerCPP(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultFontWithStyle(self: QsciLexerCPP, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerCPP_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerCPPdefaultFontWithStyleBase* = proc(style: cint): gen_qfont.QFont
proc ondefaultFontWithStyle*(self: QsciLexerCPP, slot: proc(super: QsciLexerCPPdefaultFontWithStyleBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCPPdefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_defaultFontWithStyle(self: ptr cQsciLexerCPP, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCPP_defaultFontWithStyle ".} =
  type Cb = proc(super: QsciLexerCPPdefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultFontWithStyle(QsciLexerCPP(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultPaperWithStyle(self: QsciLexerCPP, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerCPP_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerCPPdefaultPaperWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaperWithStyle*(self: QsciLexerCPP, slot: proc(super: QsciLexerCPPdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCPPdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_defaultPaperWithStyle(self: ptr cQsciLexerCPP, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCPP_defaultPaperWithStyle ".} =
  type Cb = proc(super: QsciLexerCPPdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultPaperWithStyle(QsciLexerCPP(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_setEditor(self: QsciLexerCPP, editor: gen_qsciscintilla.QsciScintilla): void =


  fQsciLexerCPP_virtualbase_setEditor(self.h, editor.h)

type QsciLexerCPPsetEditorBase* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: QsciLexerCPP, slot: proc(super: QsciLexerCPPsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCPPsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_setEditor(self: ptr cQsciLexerCPP, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCPP_setEditor ".} =
  type Cb = proc(super: QsciLexerCPPsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qsciscintilla.QsciScintilla): auto =
    callVirtualBase_setEditor(QsciLexerCPP(h: self), editor)
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_refreshProperties(self: QsciLexerCPP, ): void =


  fQsciLexerCPP_virtualbase_refreshProperties(self.h)

type QsciLexerCPPrefreshPropertiesBase* = proc(): void
proc onrefreshProperties*(self: QsciLexerCPP, slot: proc(super: QsciLexerCPPrefreshPropertiesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCPPrefreshPropertiesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_refreshProperties(self: ptr cQsciLexerCPP, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerCPP_refreshProperties ".} =
  type Cb = proc(super: QsciLexerCPPrefreshPropertiesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_refreshProperties(QsciLexerCPP(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_styleBitsNeeded(self: QsciLexerCPP, ): cint =


  fQsciLexerCPP_virtualbase_styleBitsNeeded(self.h)

type QsciLexerCPPstyleBitsNeededBase* = proc(): cint
proc onstyleBitsNeeded*(self: QsciLexerCPP, slot: proc(super: QsciLexerCPPstyleBitsNeededBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCPPstyleBitsNeededBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_styleBitsNeeded(self: ptr cQsciLexerCPP, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCPP_styleBitsNeeded ".} =
  type Cb = proc(super: QsciLexerCPPstyleBitsNeededBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_styleBitsNeeded(QsciLexerCPP(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_wordCharacters(self: QsciLexerCPP, ): cstring =


  (fQsciLexerCPP_virtualbase_wordCharacters(self.h))

type QsciLexerCPPwordCharactersBase* = proc(): cstring
proc onwordCharacters*(self: QsciLexerCPP, slot: proc(super: QsciLexerCPPwordCharactersBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCPPwordCharactersBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_wordCharacters(self: ptr cQsciLexerCPP, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerCPP_wordCharacters ".} =
  type Cb = proc(super: QsciLexerCPPwordCharactersBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_wordCharacters(QsciLexerCPP(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setAutoIndentStyle(self: QsciLexerCPP, autoindentstyle: cint): void =


  fQsciLexerCPP_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerCPPsetAutoIndentStyleBase* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: QsciLexerCPP, slot: proc(super: QsciLexerCPPsetAutoIndentStyleBase, autoindentstyle: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCPPsetAutoIndentStyleBase, autoindentstyle: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_setAutoIndentStyle(self: ptr cQsciLexerCPP, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerCPP_setAutoIndentStyle ".} =
  type Cb = proc(super: QsciLexerCPPsetAutoIndentStyleBase, autoindentstyle: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(autoindentstyle: cint): auto =
    callVirtualBase_setAutoIndentStyle(QsciLexerCPP(h: self), autoindentstyle)
  let slotval1 = autoindentstyle


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setColor(self: QsciLexerCPP, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerCPP_virtualbase_setColor(self.h, c.h, style)

type QsciLexerCPPsetColorBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: QsciLexerCPP, slot: proc(super: QsciLexerCPPsetColorBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCPPsetColorBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_setColor(self: ptr cQsciLexerCPP, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerCPP_setColor ".} =
  type Cb = proc(super: QsciLexerCPPsetColorBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setColor(QsciLexerCPP(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setEolFill(self: QsciLexerCPP, eoffill: bool, style: cint): void =


  fQsciLexerCPP_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerCPPsetEolFillBase* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: QsciLexerCPP, slot: proc(super: QsciLexerCPPsetEolFillBase, eoffill: bool, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCPPsetEolFillBase, eoffill: bool, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_setEolFill(self: ptr cQsciLexerCPP, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerCPP_setEolFill ".} =
  type Cb = proc(super: QsciLexerCPPsetEolFillBase, eoffill: bool, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eoffill: bool, style: cint): auto =
    callVirtualBase_setEolFill(QsciLexerCPP(h: self), eoffill, style)
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setFont(self: QsciLexerCPP, f: gen_qfont.QFont, style: cint): void =


  fQsciLexerCPP_virtualbase_setFont(self.h, f.h, style)

type QsciLexerCPPsetFontBase* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: QsciLexerCPP, slot: proc(super: QsciLexerCPPsetFontBase, f: gen_qfont.QFont, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCPPsetFontBase, f: gen_qfont.QFont, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_setFont(self: ptr cQsciLexerCPP, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerCPP_setFont ".} =
  type Cb = proc(super: QsciLexerCPPsetFontBase, f: gen_qfont.QFont, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(f: gen_qfont.QFont, style: cint): auto =
    callVirtualBase_setFont(QsciLexerCPP(h: self), f, style)
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setPaper(self: QsciLexerCPP, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerCPP_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerCPPsetPaperBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: QsciLexerCPP, slot: proc(super: QsciLexerCPPsetPaperBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCPPsetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_setPaper(self: ptr cQsciLexerCPP, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerCPP_setPaper ".} =
  type Cb = proc(super: QsciLexerCPPsetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setPaper(QsciLexerCPP(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_readProperties(self: QsciLexerCPP, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerCPP_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerCPPreadPropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: QsciLexerCPP, slot: proc(super: QsciLexerCPPreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCPPreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_readProperties(self: ptr cQsciLexerCPP, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerCPP_readProperties ".} =
  type Cb = proc(super: QsciLexerCPPreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_readProperties(QsciLexerCPP(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_writeProperties(self: QsciLexerCPP, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerCPP_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerCPPwritePropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: QsciLexerCPP, slot: proc(super: QsciLexerCPPwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCPPwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_writeProperties(self: ptr cQsciLexerCPP, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerCPP_writeProperties ".} =
  type Cb = proc(super: QsciLexerCPPwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_writeProperties(QsciLexerCPP(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_event(self: QsciLexerCPP, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerCPP_virtualbase_event(self.h, event.h)

type QsciLexerCPPeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QsciLexerCPP, slot: proc(super: QsciLexerCPPeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCPPeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_event(self: ptr cQsciLexerCPP, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerCPP_event ".} =
  type Cb = proc(super: QsciLexerCPPeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QsciLexerCPP(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QsciLexerCPP, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerCPP_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerCPPeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QsciLexerCPP, slot: proc(super: QsciLexerCPPeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCPPeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_eventFilter(self: ptr cQsciLexerCPP, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerCPP_eventFilter ".} =
  type Cb = proc(super: QsciLexerCPPeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QsciLexerCPP(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QsciLexerCPP, event: gen_qcoreevent.QTimerEvent): void =


  fQsciLexerCPP_virtualbase_timerEvent(self.h, event.h)

type QsciLexerCPPtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QsciLexerCPP, slot: proc(super: QsciLexerCPPtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCPPtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_timerEvent(self: ptr cQsciLexerCPP, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCPP_timerEvent ".} =
  type Cb = proc(super: QsciLexerCPPtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QsciLexerCPP(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QsciLexerCPP, event: gen_qcoreevent.QChildEvent): void =


  fQsciLexerCPP_virtualbase_childEvent(self.h, event.h)

type QsciLexerCPPchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QsciLexerCPP, slot: proc(super: QsciLexerCPPchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCPPchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_childEvent(self: ptr cQsciLexerCPP, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCPP_childEvent ".} =
  type Cb = proc(super: QsciLexerCPPchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QsciLexerCPP(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QsciLexerCPP, event: gen_qcoreevent.QEvent): void =


  fQsciLexerCPP_virtualbase_customEvent(self.h, event.h)

type QsciLexerCPPcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QsciLexerCPP, slot: proc(super: QsciLexerCPPcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCPPcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_customEvent(self: ptr cQsciLexerCPP, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCPP_customEvent ".} =
  type Cb = proc(super: QsciLexerCPPcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QsciLexerCPP(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QsciLexerCPP, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerCPP_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerCPPconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QsciLexerCPP, slot: proc(super: QsciLexerCPPconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCPPconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_connectNotify(self: ptr cQsciLexerCPP, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCPP_connectNotify ".} =
  type Cb = proc(super: QsciLexerCPPconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QsciLexerCPP(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QsciLexerCPP, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerCPP_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerCPPdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QsciLexerCPP, slot: proc(super: QsciLexerCPPdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCPPdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCPP_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCPP_disconnectNotify(self: ptr cQsciLexerCPP, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCPP_disconnectNotify ".} =
  type Cb = proc(super: QsciLexerCPPdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QsciLexerCPP(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QsciLexerCPP) =
  fcQsciLexerCPP_delete(self.h)
