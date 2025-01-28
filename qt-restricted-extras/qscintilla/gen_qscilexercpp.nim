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

type cQsciLexerCPP*{.exportc: "QsciLexerCPP", incompleteStruct.} = object

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
type cQsciLexerCPPVTable = object
  destructor*: proc(vtbl: ptr cQsciLexerCPPVTable, self: ptr cQsciLexerCPP) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setFoldAtElse*: proc(vtbl, self: pointer, fold: bool): void {.cdecl, raises: [], gcsafe.}
  setFoldComments*: proc(vtbl, self: pointer, fold: bool): void {.cdecl, raises: [], gcsafe.}
  setFoldCompact*: proc(vtbl, self: pointer, fold: bool): void {.cdecl, raises: [], gcsafe.}
  setFoldPreprocessor*: proc(vtbl, self: pointer, fold: bool): void {.cdecl, raises: [], gcsafe.}
  setStylePreprocessor*: proc(vtbl, self: pointer, style: bool): void {.cdecl, raises: [], gcsafe.}
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
proc fcQsciLexerCPP_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QsciLexerCPP_virtualbase_metaObject".}
proc fcQsciLexerCPP_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerCPP_virtualbase_metacast".}
proc fcQsciLexerCPP_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerCPP_virtualbase_metacall".}
proc fcQsciLexerCPP_virtualbase_setFoldAtElse(self: pointer, fold: bool): void {.importc: "QsciLexerCPP_virtualbase_setFoldAtElse".}
proc fcQsciLexerCPP_virtualbase_setFoldComments(self: pointer, fold: bool): void {.importc: "QsciLexerCPP_virtualbase_setFoldComments".}
proc fcQsciLexerCPP_virtualbase_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerCPP_virtualbase_setFoldCompact".}
proc fcQsciLexerCPP_virtualbase_setFoldPreprocessor(self: pointer, fold: bool): void {.importc: "QsciLexerCPP_virtualbase_setFoldPreprocessor".}
proc fcQsciLexerCPP_virtualbase_setStylePreprocessor(self: pointer, style: bool): void {.importc: "QsciLexerCPP_virtualbase_setStylePreprocessor".}
proc fcQsciLexerCPP_virtualbase_lexer(self: pointer, ): cstring {.importc: "QsciLexerCPP_virtualbase_lexer".}
proc fcQsciLexerCPP_virtualbase_lexerId(self: pointer, ): cint {.importc: "QsciLexerCPP_virtualbase_lexerId".}
proc fcQsciLexerCPP_virtualbase_autoCompletionFillups(self: pointer, ): cstring {.importc: "QsciLexerCPP_virtualbase_autoCompletionFillups".}
proc fcQsciLexerCPP_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array {.importc: "QsciLexerCPP_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerCPP_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerCPP_virtualbase_blockEnd".}
proc fcQsciLexerCPP_virtualbase_blockLookback(self: pointer, ): cint {.importc: "QsciLexerCPP_virtualbase_blockLookback".}
proc fcQsciLexerCPP_virtualbase_blockStart(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerCPP_virtualbase_blockStart".}
proc fcQsciLexerCPP_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerCPP_virtualbase_blockStartKeyword".}
proc fcQsciLexerCPP_virtualbase_braceStyle(self: pointer, ): cint {.importc: "QsciLexerCPP_virtualbase_braceStyle".}
proc fcQsciLexerCPP_virtualbase_caseSensitive(self: pointer, ): bool {.importc: "QsciLexerCPP_virtualbase_caseSensitive".}
proc fcQsciLexerCPP_virtualbase_color(self: pointer, style: cint): pointer {.importc: "QsciLexerCPP_virtualbase_color".}
proc fcQsciLexerCPP_virtualbase_eolFill(self: pointer, style: cint): bool {.importc: "QsciLexerCPP_virtualbase_eolFill".}
proc fcQsciLexerCPP_virtualbase_font(self: pointer, style: cint): pointer {.importc: "QsciLexerCPP_virtualbase_font".}
proc fcQsciLexerCPP_virtualbase_indentationGuideView(self: pointer, ): cint {.importc: "QsciLexerCPP_virtualbase_indentationGuideView".}
proc fcQsciLexerCPP_virtualbase_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerCPP_virtualbase_keywords".}
proc fcQsciLexerCPP_virtualbase_defaultStyle(self: pointer, ): cint {.importc: "QsciLexerCPP_virtualbase_defaultStyle".}
proc fcQsciLexerCPP_virtualbase_paper(self: pointer, style: cint): pointer {.importc: "QsciLexerCPP_virtualbase_paper".}
proc fcQsciLexerCPP_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerCPP_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerCPP_virtualbase_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerCPP_virtualbase_defaultEolFill".}
proc fcQsciLexerCPP_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerCPP_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerCPP_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerCPP_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerCPP_virtualbase_setEditor(self: pointer, editor: pointer): void {.importc: "QsciLexerCPP_virtualbase_setEditor".}
proc fcQsciLexerCPP_virtualbase_refreshProperties(self: pointer, ): void {.importc: "QsciLexerCPP_virtualbase_refreshProperties".}
proc fcQsciLexerCPP_virtualbase_styleBitsNeeded(self: pointer, ): cint {.importc: "QsciLexerCPP_virtualbase_styleBitsNeeded".}
proc fcQsciLexerCPP_virtualbase_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerCPP_virtualbase_wordCharacters".}
proc fcQsciLexerCPP_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void {.importc: "QsciLexerCPP_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerCPP_virtualbase_setColor(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerCPP_virtualbase_setColor".}
proc fcQsciLexerCPP_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void {.importc: "QsciLexerCPP_virtualbase_setEolFill".}
proc fcQsciLexerCPP_virtualbase_setFont(self: pointer, f: pointer, style: cint): void {.importc: "QsciLexerCPP_virtualbase_setFont".}
proc fcQsciLexerCPP_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerCPP_virtualbase_setPaper".}
proc fcQsciLexerCPP_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerCPP_virtualbase_readProperties".}
proc fcQsciLexerCPP_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerCPP_virtualbase_writeProperties".}
proc fcQsciLexerCPP_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QsciLexerCPP_virtualbase_event".}
proc fcQsciLexerCPP_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QsciLexerCPP_virtualbase_eventFilter".}
proc fcQsciLexerCPP_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QsciLexerCPP_virtualbase_timerEvent".}
proc fcQsciLexerCPP_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QsciLexerCPP_virtualbase_childEvent".}
proc fcQsciLexerCPP_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QsciLexerCPP_virtualbase_customEvent".}
proc fcQsciLexerCPP_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerCPP_virtualbase_connectNotify".}
proc fcQsciLexerCPP_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerCPP_virtualbase_disconnectNotify".}
proc fcQsciLexerCPP_new(vtbl: pointer, ): ptr cQsciLexerCPP {.importc: "QsciLexerCPP_new".}
proc fcQsciLexerCPP_new2(vtbl: pointer, parent: pointer): ptr cQsciLexerCPP {.importc: "QsciLexerCPP_new2".}
proc fcQsciLexerCPP_new3(vtbl: pointer, parent: pointer, caseInsensitiveKeywords: bool): ptr cQsciLexerCPP {.importc: "QsciLexerCPP_new3".}
proc fcQsciLexerCPP_staticMetaObject(): pointer {.importc: "QsciLexerCPP_staticMetaObject".}
proc fcQsciLexerCPP_delete(self: pointer) {.importc: "QsciLexerCPP_delete".}

proc metaObject*(self: gen_qscilexercpp_types.QsciLexerCPP, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerCPP_metaObject(self.h))

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

proc defaultColor*(self: gen_qscilexercpp_types.QsciLexerCPP, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerCPP_defaultColor(self.h, style))

proc defaultEolFill*(self: gen_qscilexercpp_types.QsciLexerCPP, style: cint): bool =
  fcQsciLexerCPP_defaultEolFill(self.h, style)

proc defaultFont*(self: gen_qscilexercpp_types.QsciLexerCPP, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerCPP_defaultFont(self.h, style))

proc defaultPaper*(self: gen_qscilexercpp_types.QsciLexerCPP, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerCPP_defaultPaper(self.h, style))

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

type QsciLexerCPPmetaObjectProc* = proc(self: QsciLexerCPP): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QsciLexerCPPmetacastProc* = proc(self: QsciLexerCPP, param1: cstring): pointer {.raises: [], gcsafe.}
type QsciLexerCPPmetacallProc* = proc(self: QsciLexerCPP, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QsciLexerCPPsetFoldAtElseProc* = proc(self: QsciLexerCPP, fold: bool): void {.raises: [], gcsafe.}
type QsciLexerCPPsetFoldCommentsProc* = proc(self: QsciLexerCPP, fold: bool): void {.raises: [], gcsafe.}
type QsciLexerCPPsetFoldCompactProc* = proc(self: QsciLexerCPP, fold: bool): void {.raises: [], gcsafe.}
type QsciLexerCPPsetFoldPreprocessorProc* = proc(self: QsciLexerCPP, fold: bool): void {.raises: [], gcsafe.}
type QsciLexerCPPsetStylePreprocessorProc* = proc(self: QsciLexerCPP, style: bool): void {.raises: [], gcsafe.}
type QsciLexerCPPlanguageProc* = proc(self: QsciLexerCPP): cstring {.raises: [], gcsafe.}
type QsciLexerCPPlexerProc* = proc(self: QsciLexerCPP): cstring {.raises: [], gcsafe.}
type QsciLexerCPPlexerIdProc* = proc(self: QsciLexerCPP): cint {.raises: [], gcsafe.}
type QsciLexerCPPautoCompletionFillupsProc* = proc(self: QsciLexerCPP): cstring {.raises: [], gcsafe.}
type QsciLexerCPPautoCompletionWordSeparatorsProc* = proc(self: QsciLexerCPP): seq[string] {.raises: [], gcsafe.}
type QsciLexerCPPblockEndProc* = proc(self: QsciLexerCPP, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerCPPblockLookbackProc* = proc(self: QsciLexerCPP): cint {.raises: [], gcsafe.}
type QsciLexerCPPblockStartProc* = proc(self: QsciLexerCPP, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerCPPblockStartKeywordProc* = proc(self: QsciLexerCPP, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerCPPbraceStyleProc* = proc(self: QsciLexerCPP): cint {.raises: [], gcsafe.}
type QsciLexerCPPcaseSensitiveProc* = proc(self: QsciLexerCPP): bool {.raises: [], gcsafe.}
type QsciLexerCPPcolorProc* = proc(self: QsciLexerCPP, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerCPPeolFillProc* = proc(self: QsciLexerCPP, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerCPPfontProc* = proc(self: QsciLexerCPP, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerCPPindentationGuideViewProc* = proc(self: QsciLexerCPP): cint {.raises: [], gcsafe.}
type QsciLexerCPPkeywordsProc* = proc(self: QsciLexerCPP, set: cint): cstring {.raises: [], gcsafe.}
type QsciLexerCPPdefaultStyleProc* = proc(self: QsciLexerCPP): cint {.raises: [], gcsafe.}
type QsciLexerCPPdescriptionProc* = proc(self: QsciLexerCPP, style: cint): string {.raises: [], gcsafe.}
type QsciLexerCPPpaperProc* = proc(self: QsciLexerCPP, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerCPPdefaultColorProc* = proc(self: QsciLexerCPP, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerCPPdefaultEolFillProc* = proc(self: QsciLexerCPP, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerCPPdefaultFontProc* = proc(self: QsciLexerCPP, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerCPPdefaultPaperProc* = proc(self: QsciLexerCPP, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerCPPsetEditorProc* = proc(self: QsciLexerCPP, editor: gen_qsciscintilla_types.QsciScintilla): void {.raises: [], gcsafe.}
type QsciLexerCPPrefreshPropertiesProc* = proc(self: QsciLexerCPP): void {.raises: [], gcsafe.}
type QsciLexerCPPstyleBitsNeededProc* = proc(self: QsciLexerCPP): cint {.raises: [], gcsafe.}
type QsciLexerCPPwordCharactersProc* = proc(self: QsciLexerCPP): cstring {.raises: [], gcsafe.}
type QsciLexerCPPsetAutoIndentStyleProc* = proc(self: QsciLexerCPP, autoindentstyle: cint): void {.raises: [], gcsafe.}
type QsciLexerCPPsetColorProc* = proc(self: QsciLexerCPP, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerCPPsetEolFillProc* = proc(self: QsciLexerCPP, eoffill: bool, style: cint): void {.raises: [], gcsafe.}
type QsciLexerCPPsetFontProc* = proc(self: QsciLexerCPP, f: gen_qfont_types.QFont, style: cint): void {.raises: [], gcsafe.}
type QsciLexerCPPsetPaperProc* = proc(self: QsciLexerCPP, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerCPPreadPropertiesProc* = proc(self: QsciLexerCPP, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerCPPwritePropertiesProc* = proc(self: QsciLexerCPP, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerCPPeventProc* = proc(self: QsciLexerCPP, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerCPPeventFilterProc* = proc(self: QsciLexerCPP, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerCPPtimerEventProc* = proc(self: QsciLexerCPP, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QsciLexerCPPchildEventProc* = proc(self: QsciLexerCPP, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QsciLexerCPPcustomEventProc* = proc(self: QsciLexerCPP, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QsciLexerCPPconnectNotifyProc* = proc(self: QsciLexerCPP, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerCPPdisconnectNotifyProc* = proc(self: QsciLexerCPP, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerCPPVTable* = object
  vtbl: cQsciLexerCPPVTable
  metaObject*: QsciLexerCPPmetaObjectProc
  metacast*: QsciLexerCPPmetacastProc
  metacall*: QsciLexerCPPmetacallProc
  setFoldAtElse*: QsciLexerCPPsetFoldAtElseProc
  setFoldComments*: QsciLexerCPPsetFoldCommentsProc
  setFoldCompact*: QsciLexerCPPsetFoldCompactProc
  setFoldPreprocessor*: QsciLexerCPPsetFoldPreprocessorProc
  setStylePreprocessor*: QsciLexerCPPsetStylePreprocessorProc
  language*: QsciLexerCPPlanguageProc
  lexer*: QsciLexerCPPlexerProc
  lexerId*: QsciLexerCPPlexerIdProc
  autoCompletionFillups*: QsciLexerCPPautoCompletionFillupsProc
  autoCompletionWordSeparators*: QsciLexerCPPautoCompletionWordSeparatorsProc
  blockEnd*: QsciLexerCPPblockEndProc
  blockLookback*: QsciLexerCPPblockLookbackProc
  blockStart*: QsciLexerCPPblockStartProc
  blockStartKeyword*: QsciLexerCPPblockStartKeywordProc
  braceStyle*: QsciLexerCPPbraceStyleProc
  caseSensitive*: QsciLexerCPPcaseSensitiveProc
  color*: QsciLexerCPPcolorProc
  eolFill*: QsciLexerCPPeolFillProc
  font*: QsciLexerCPPfontProc
  indentationGuideView*: QsciLexerCPPindentationGuideViewProc
  keywords*: QsciLexerCPPkeywordsProc
  defaultStyle*: QsciLexerCPPdefaultStyleProc
  description*: QsciLexerCPPdescriptionProc
  paper*: QsciLexerCPPpaperProc
  defaultColor*: QsciLexerCPPdefaultColorProc
  defaultEolFill*: QsciLexerCPPdefaultEolFillProc
  defaultFont*: QsciLexerCPPdefaultFontProc
  defaultPaper*: QsciLexerCPPdefaultPaperProc
  setEditor*: QsciLexerCPPsetEditorProc
  refreshProperties*: QsciLexerCPPrefreshPropertiesProc
  styleBitsNeeded*: QsciLexerCPPstyleBitsNeededProc
  wordCharacters*: QsciLexerCPPwordCharactersProc
  setAutoIndentStyle*: QsciLexerCPPsetAutoIndentStyleProc
  setColor*: QsciLexerCPPsetColorProc
  setEolFill*: QsciLexerCPPsetEolFillProc
  setFont*: QsciLexerCPPsetFontProc
  setPaper*: QsciLexerCPPsetPaperProc
  readProperties*: QsciLexerCPPreadPropertiesProc
  writeProperties*: QsciLexerCPPwritePropertiesProc
  event*: QsciLexerCPPeventProc
  eventFilter*: QsciLexerCPPeventFilterProc
  timerEvent*: QsciLexerCPPtimerEventProc
  childEvent*: QsciLexerCPPchildEventProc
  customEvent*: QsciLexerCPPcustomEventProc
  connectNotify*: QsciLexerCPPconnectNotifyProc
  disconnectNotify*: QsciLexerCPPdisconnectNotifyProc
proc QsciLexerCPPmetaObject*(self: gen_qscilexercpp_types.QsciLexerCPP, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerCPP_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQsciLexerCPP_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCPPVTable](vtbl)
  let self = QsciLexerCPP(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QsciLexerCPPmetacast*(self: gen_qscilexercpp_types.QsciLexerCPP, param1: cstring): pointer =
  fcQsciLexerCPP_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQsciLexerCPP_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCPPVTable](vtbl)
  let self = QsciLexerCPP(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QsciLexerCPPmetacall*(self: gen_qscilexercpp_types.QsciLexerCPP, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerCPP_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQsciLexerCPP_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCPPVTable](vtbl)
  let self = QsciLexerCPP(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QsciLexerCPPsetFoldAtElse*(self: gen_qscilexercpp_types.QsciLexerCPP, fold: bool): void =
  fcQsciLexerCPP_virtualbase_setFoldAtElse(self.h, fold)

proc miqt_exec_callback_cQsciLexerCPP_setFoldAtElse(vtbl: pointer, self: pointer, fold: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCPPVTable](vtbl)
  let self = QsciLexerCPP(h: self)
  let slotval1 = fold
  vtbl[].setFoldAtElse(self, slotval1)

proc QsciLexerCPPsetFoldComments*(self: gen_qscilexercpp_types.QsciLexerCPP, fold: bool): void =
  fcQsciLexerCPP_virtualbase_setFoldComments(self.h, fold)

proc miqt_exec_callback_cQsciLexerCPP_setFoldComments(vtbl: pointer, self: pointer, fold: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCPPVTable](vtbl)
  let self = QsciLexerCPP(h: self)
  let slotval1 = fold
  vtbl[].setFoldComments(self, slotval1)

proc QsciLexerCPPsetFoldCompact*(self: gen_qscilexercpp_types.QsciLexerCPP, fold: bool): void =
  fcQsciLexerCPP_virtualbase_setFoldCompact(self.h, fold)

proc miqt_exec_callback_cQsciLexerCPP_setFoldCompact(vtbl: pointer, self: pointer, fold: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCPPVTable](vtbl)
  let self = QsciLexerCPP(h: self)
  let slotval1 = fold
  vtbl[].setFoldCompact(self, slotval1)

proc QsciLexerCPPsetFoldPreprocessor*(self: gen_qscilexercpp_types.QsciLexerCPP, fold: bool): void =
  fcQsciLexerCPP_virtualbase_setFoldPreprocessor(self.h, fold)

proc miqt_exec_callback_cQsciLexerCPP_setFoldPreprocessor(vtbl: pointer, self: pointer, fold: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCPPVTable](vtbl)
  let self = QsciLexerCPP(h: self)
  let slotval1 = fold
  vtbl[].setFoldPreprocessor(self, slotval1)

proc QsciLexerCPPsetStylePreprocessor*(self: gen_qscilexercpp_types.QsciLexerCPP, style: bool): void =
  fcQsciLexerCPP_virtualbase_setStylePreprocessor(self.h, style)

proc miqt_exec_callback_cQsciLexerCPP_setStylePreprocessor(vtbl: pointer, self: pointer, style: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCPPVTable](vtbl)
  let self = QsciLexerCPP(h: self)
  let slotval1 = style
  vtbl[].setStylePreprocessor(self, slotval1)

proc miqt_exec_callback_cQsciLexerCPP_language(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCPPVTable](vtbl)
  let self = QsciLexerCPP(h: self)
  let virtualReturn = vtbl[].language(self)
  virtualReturn

proc QsciLexerCPPlexer*(self: gen_qscilexercpp_types.QsciLexerCPP, ): cstring =
  (fcQsciLexerCPP_virtualbase_lexer(self.h))

proc miqt_exec_callback_cQsciLexerCPP_lexer(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCPPVTable](vtbl)
  let self = QsciLexerCPP(h: self)
  let virtualReturn = vtbl[].lexer(self)
  virtualReturn

proc QsciLexerCPPlexerId*(self: gen_qscilexercpp_types.QsciLexerCPP, ): cint =
  fcQsciLexerCPP_virtualbase_lexerId(self.h)

proc miqt_exec_callback_cQsciLexerCPP_lexerId(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCPPVTable](vtbl)
  let self = QsciLexerCPP(h: self)
  let virtualReturn = vtbl[].lexerId(self)
  virtualReturn

proc QsciLexerCPPautoCompletionFillups*(self: gen_qscilexercpp_types.QsciLexerCPP, ): cstring =
  (fcQsciLexerCPP_virtualbase_autoCompletionFillups(self.h))

proc miqt_exec_callback_cQsciLexerCPP_autoCompletionFillups(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCPPVTable](vtbl)
  let self = QsciLexerCPP(h: self)
  let virtualReturn = vtbl[].autoCompletionFillups(self)
  virtualReturn

proc QsciLexerCPPautoCompletionWordSeparators*(self: gen_qscilexercpp_types.QsciLexerCPP, ): seq[string] =
  var v_ma = fcQsciLexerCPP_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc miqt_exec_callback_cQsciLexerCPP_autoCompletionWordSeparators(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCPPVTable](vtbl)
  let self = QsciLexerCPP(h: self)
  let virtualReturn = vtbl[].autoCompletionWordSeparators(self)
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QsciLexerCPPblockEnd*(self: gen_qscilexercpp_types.QsciLexerCPP, style: ptr cint): cstring =
  (fcQsciLexerCPP_virtualbase_blockEnd(self.h, style))

proc miqt_exec_callback_cQsciLexerCPP_blockEnd(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCPPVTable](vtbl)
  let self = QsciLexerCPP(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockEnd(self, slotval1)
  virtualReturn

proc QsciLexerCPPblockLookback*(self: gen_qscilexercpp_types.QsciLexerCPP, ): cint =
  fcQsciLexerCPP_virtualbase_blockLookback(self.h)

proc miqt_exec_callback_cQsciLexerCPP_blockLookback(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCPPVTable](vtbl)
  let self = QsciLexerCPP(h: self)
  let virtualReturn = vtbl[].blockLookback(self)
  virtualReturn

proc QsciLexerCPPblockStart*(self: gen_qscilexercpp_types.QsciLexerCPP, style: ptr cint): cstring =
  (fcQsciLexerCPP_virtualbase_blockStart(self.h, style))

proc miqt_exec_callback_cQsciLexerCPP_blockStart(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCPPVTable](vtbl)
  let self = QsciLexerCPP(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStart(self, slotval1)
  virtualReturn

proc QsciLexerCPPblockStartKeyword*(self: gen_qscilexercpp_types.QsciLexerCPP, style: ptr cint): cstring =
  (fcQsciLexerCPP_virtualbase_blockStartKeyword(self.h, style))

proc miqt_exec_callback_cQsciLexerCPP_blockStartKeyword(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCPPVTable](vtbl)
  let self = QsciLexerCPP(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStartKeyword(self, slotval1)
  virtualReturn

proc QsciLexerCPPbraceStyle*(self: gen_qscilexercpp_types.QsciLexerCPP, ): cint =
  fcQsciLexerCPP_virtualbase_braceStyle(self.h)

proc miqt_exec_callback_cQsciLexerCPP_braceStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCPPVTable](vtbl)
  let self = QsciLexerCPP(h: self)
  let virtualReturn = vtbl[].braceStyle(self)
  virtualReturn

proc QsciLexerCPPcaseSensitive*(self: gen_qscilexercpp_types.QsciLexerCPP, ): bool =
  fcQsciLexerCPP_virtualbase_caseSensitive(self.h)

proc miqt_exec_callback_cQsciLexerCPP_caseSensitive(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCPPVTable](vtbl)
  let self = QsciLexerCPP(h: self)
  let virtualReturn = vtbl[].caseSensitive(self)
  virtualReturn

proc QsciLexerCPPcolor*(self: gen_qscilexercpp_types.QsciLexerCPP, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerCPP_virtualbase_color(self.h, style))

proc miqt_exec_callback_cQsciLexerCPP_color(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCPPVTable](vtbl)
  let self = QsciLexerCPP(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].color(self, slotval1)
  virtualReturn.h

proc QsciLexerCPPeolFill*(self: gen_qscilexercpp_types.QsciLexerCPP, style: cint): bool =
  fcQsciLexerCPP_virtualbase_eolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerCPP_eolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCPPVTable](vtbl)
  let self = QsciLexerCPP(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].eolFill(self, slotval1)
  virtualReturn

proc QsciLexerCPPfont*(self: gen_qscilexercpp_types.QsciLexerCPP, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerCPP_virtualbase_font(self.h, style))

proc miqt_exec_callback_cQsciLexerCPP_font(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCPPVTable](vtbl)
  let self = QsciLexerCPP(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].font(self, slotval1)
  virtualReturn.h

proc QsciLexerCPPindentationGuideView*(self: gen_qscilexercpp_types.QsciLexerCPP, ): cint =
  fcQsciLexerCPP_virtualbase_indentationGuideView(self.h)

proc miqt_exec_callback_cQsciLexerCPP_indentationGuideView(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCPPVTable](vtbl)
  let self = QsciLexerCPP(h: self)
  let virtualReturn = vtbl[].indentationGuideView(self)
  virtualReturn

proc QsciLexerCPPkeywords*(self: gen_qscilexercpp_types.QsciLexerCPP, set: cint): cstring =
  (fcQsciLexerCPP_virtualbase_keywords(self.h, set))

proc miqt_exec_callback_cQsciLexerCPP_keywords(vtbl: pointer, self: pointer, set: cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCPPVTable](vtbl)
  let self = QsciLexerCPP(h: self)
  let slotval1 = set
  let virtualReturn = vtbl[].keywords(self, slotval1)
  virtualReturn

proc QsciLexerCPPdefaultStyle*(self: gen_qscilexercpp_types.QsciLexerCPP, ): cint =
  fcQsciLexerCPP_virtualbase_defaultStyle(self.h)

proc miqt_exec_callback_cQsciLexerCPP_defaultStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCPPVTable](vtbl)
  let self = QsciLexerCPP(h: self)
  let virtualReturn = vtbl[].defaultStyle(self)
  virtualReturn

proc miqt_exec_callback_cQsciLexerCPP_description(vtbl: pointer, self: pointer, style: cint): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCPPVTable](vtbl)
  let self = QsciLexerCPP(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].description(self, slotval1)
  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))

proc QsciLexerCPPpaper*(self: gen_qscilexercpp_types.QsciLexerCPP, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerCPP_virtualbase_paper(self.h, style))

proc miqt_exec_callback_cQsciLexerCPP_paper(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCPPVTable](vtbl)
  let self = QsciLexerCPP(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].paper(self, slotval1)
  virtualReturn.h

proc QsciLexerCPPdefaultColor*(self: gen_qscilexercpp_types.QsciLexerCPP, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerCPP_virtualbase_defaultColorWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerCPP_defaultColorWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCPPVTable](vtbl)
  let self = QsciLexerCPP(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultColor(self, slotval1)
  virtualReturn.h

proc QsciLexerCPPdefaultEolFill*(self: gen_qscilexercpp_types.QsciLexerCPP, style: cint): bool =
  fcQsciLexerCPP_virtualbase_defaultEolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerCPP_defaultEolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCPPVTable](vtbl)
  let self = QsciLexerCPP(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultEolFill(self, slotval1)
  virtualReturn

proc QsciLexerCPPdefaultFont*(self: gen_qscilexercpp_types.QsciLexerCPP, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerCPP_virtualbase_defaultFontWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerCPP_defaultFontWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCPPVTable](vtbl)
  let self = QsciLexerCPP(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultFont(self, slotval1)
  virtualReturn.h

proc QsciLexerCPPdefaultPaper*(self: gen_qscilexercpp_types.QsciLexerCPP, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerCPP_virtualbase_defaultPaperWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerCPP_defaultPaperWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCPPVTable](vtbl)
  let self = QsciLexerCPP(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultPaper(self, slotval1)
  virtualReturn.h

proc QsciLexerCPPsetEditor*(self: gen_qscilexercpp_types.QsciLexerCPP, editor: gen_qsciscintilla_types.QsciScintilla): void =
  fcQsciLexerCPP_virtualbase_setEditor(self.h, editor.h)

proc miqt_exec_callback_cQsciLexerCPP_setEditor(vtbl: pointer, self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCPPVTable](vtbl)
  let self = QsciLexerCPP(h: self)
  let slotval1 = gen_qsciscintilla_types.QsciScintilla(h: editor)
  vtbl[].setEditor(self, slotval1)

proc QsciLexerCPPrefreshProperties*(self: gen_qscilexercpp_types.QsciLexerCPP, ): void =
  fcQsciLexerCPP_virtualbase_refreshProperties(self.h)

proc miqt_exec_callback_cQsciLexerCPP_refreshProperties(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCPPVTable](vtbl)
  let self = QsciLexerCPP(h: self)
  vtbl[].refreshProperties(self)

proc QsciLexerCPPstyleBitsNeeded*(self: gen_qscilexercpp_types.QsciLexerCPP, ): cint =
  fcQsciLexerCPP_virtualbase_styleBitsNeeded(self.h)

proc miqt_exec_callback_cQsciLexerCPP_styleBitsNeeded(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCPPVTable](vtbl)
  let self = QsciLexerCPP(h: self)
  let virtualReturn = vtbl[].styleBitsNeeded(self)
  virtualReturn

proc QsciLexerCPPwordCharacters*(self: gen_qscilexercpp_types.QsciLexerCPP, ): cstring =
  (fcQsciLexerCPP_virtualbase_wordCharacters(self.h))

proc miqt_exec_callback_cQsciLexerCPP_wordCharacters(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCPPVTable](vtbl)
  let self = QsciLexerCPP(h: self)
  let virtualReturn = vtbl[].wordCharacters(self)
  virtualReturn

proc QsciLexerCPPsetAutoIndentStyle*(self: gen_qscilexercpp_types.QsciLexerCPP, autoindentstyle: cint): void =
  fcQsciLexerCPP_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

proc miqt_exec_callback_cQsciLexerCPP_setAutoIndentStyle(vtbl: pointer, self: pointer, autoindentstyle: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCPPVTable](vtbl)
  let self = QsciLexerCPP(h: self)
  let slotval1 = autoindentstyle
  vtbl[].setAutoIndentStyle(self, slotval1)

proc QsciLexerCPPsetColor*(self: gen_qscilexercpp_types.QsciLexerCPP, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerCPP_virtualbase_setColor(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerCPP_setColor(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCPPVTable](vtbl)
  let self = QsciLexerCPP(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setColor(self, slotval1, slotval2)

proc QsciLexerCPPsetEolFill*(self: gen_qscilexercpp_types.QsciLexerCPP, eoffill: bool, style: cint): void =
  fcQsciLexerCPP_virtualbase_setEolFill(self.h, eoffill, style)

proc miqt_exec_callback_cQsciLexerCPP_setEolFill(vtbl: pointer, self: pointer, eoffill: bool, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCPPVTable](vtbl)
  let self = QsciLexerCPP(h: self)
  let slotval1 = eoffill
  let slotval2 = style
  vtbl[].setEolFill(self, slotval1, slotval2)

proc QsciLexerCPPsetFont*(self: gen_qscilexercpp_types.QsciLexerCPP, f: gen_qfont_types.QFont, style: cint): void =
  fcQsciLexerCPP_virtualbase_setFont(self.h, f.h, style)

proc miqt_exec_callback_cQsciLexerCPP_setFont(vtbl: pointer, self: pointer, f: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCPPVTable](vtbl)
  let self = QsciLexerCPP(h: self)
  let slotval1 = gen_qfont_types.QFont(h: f)
  let slotval2 = style
  vtbl[].setFont(self, slotval1, slotval2)

proc QsciLexerCPPsetPaper*(self: gen_qscilexercpp_types.QsciLexerCPP, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerCPP_virtualbase_setPaper(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerCPP_setPaper(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCPPVTable](vtbl)
  let self = QsciLexerCPP(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setPaper(self, slotval1, slotval2)

proc QsciLexerCPPreadProperties*(self: gen_qscilexercpp_types.QsciLexerCPP, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerCPP_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerCPP_readProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCPPVTable](vtbl)
  let self = QsciLexerCPP(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].readProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerCPPwriteProperties*(self: gen_qscilexercpp_types.QsciLexerCPP, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerCPP_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerCPP_writeProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCPPVTable](vtbl)
  let self = QsciLexerCPP(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].writeProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerCPPevent*(self: gen_qscilexercpp_types.QsciLexerCPP, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerCPP_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQsciLexerCPP_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCPPVTable](vtbl)
  let self = QsciLexerCPP(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QsciLexerCPPeventFilter*(self: gen_qscilexercpp_types.QsciLexerCPP, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerCPP_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQsciLexerCPP_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCPPVTable](vtbl)
  let self = QsciLexerCPP(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerCPPtimerEvent*(self: gen_qscilexercpp_types.QsciLexerCPP, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQsciLexerCPP_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerCPP_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCPPVTable](vtbl)
  let self = QsciLexerCPP(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QsciLexerCPPchildEvent*(self: gen_qscilexercpp_types.QsciLexerCPP, event: gen_qcoreevent_types.QChildEvent): void =
  fcQsciLexerCPP_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerCPP_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCPPVTable](vtbl)
  let self = QsciLexerCPP(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QsciLexerCPPcustomEvent*(self: gen_qscilexercpp_types.QsciLexerCPP, event: gen_qcoreevent_types.QEvent): void =
  fcQsciLexerCPP_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerCPP_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCPPVTable](vtbl)
  let self = QsciLexerCPP(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QsciLexerCPPconnectNotify*(self: gen_qscilexercpp_types.QsciLexerCPP, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerCPP_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerCPP_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCPPVTable](vtbl)
  let self = QsciLexerCPP(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QsciLexerCPPdisconnectNotify*(self: gen_qscilexercpp_types.QsciLexerCPP, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerCPP_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerCPP_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCPPVTable](vtbl)
  let self = QsciLexerCPP(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qscilexercpp_types.QsciLexerCPP,
    vtbl: ref QsciLexerCPPVTable = nil): gen_qscilexercpp_types.QsciLexerCPP =
  let vtbl = if vtbl == nil: new QsciLexerCPPVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerCPPVTable, _: ptr cQsciLexerCPP) {.cdecl.} =
    let vtbl = cast[ref QsciLexerCPPVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerCPP_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerCPP_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerCPP_metacall
  if not isNil(vtbl.setFoldAtElse):
    vtbl[].vtbl.setFoldAtElse = miqt_exec_callback_cQsciLexerCPP_setFoldAtElse
  if not isNil(vtbl.setFoldComments):
    vtbl[].vtbl.setFoldComments = miqt_exec_callback_cQsciLexerCPP_setFoldComments
  if not isNil(vtbl.setFoldCompact):
    vtbl[].vtbl.setFoldCompact = miqt_exec_callback_cQsciLexerCPP_setFoldCompact
  if not isNil(vtbl.setFoldPreprocessor):
    vtbl[].vtbl.setFoldPreprocessor = miqt_exec_callback_cQsciLexerCPP_setFoldPreprocessor
  if not isNil(vtbl.setStylePreprocessor):
    vtbl[].vtbl.setStylePreprocessor = miqt_exec_callback_cQsciLexerCPP_setStylePreprocessor
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerCPP_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerCPP_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerCPP_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerCPP_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerCPP_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerCPP_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerCPP_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerCPP_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerCPP_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerCPP_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerCPP_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerCPP_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerCPP_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerCPP_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerCPP_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerCPP_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerCPP_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerCPP_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerCPP_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerCPP_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerCPP_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerCPP_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerCPP_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerCPP_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerCPP_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerCPP_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerCPP_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerCPP_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerCPP_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerCPP_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerCPP_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerCPP_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerCPP_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerCPP_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerCPP_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerCPP_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerCPP_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerCPP_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerCPP_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerCPP_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerCPP_disconnectNotify
  gen_qscilexercpp_types.QsciLexerCPP(h: fcQsciLexerCPP_new(addr(vtbl[]), ))

proc create*(T: type gen_qscilexercpp_types.QsciLexerCPP,
    parent: gen_qobject_types.QObject,
    vtbl: ref QsciLexerCPPVTable = nil): gen_qscilexercpp_types.QsciLexerCPP =
  let vtbl = if vtbl == nil: new QsciLexerCPPVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerCPPVTable, _: ptr cQsciLexerCPP) {.cdecl.} =
    let vtbl = cast[ref QsciLexerCPPVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerCPP_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerCPP_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerCPP_metacall
  if not isNil(vtbl.setFoldAtElse):
    vtbl[].vtbl.setFoldAtElse = miqt_exec_callback_cQsciLexerCPP_setFoldAtElse
  if not isNil(vtbl.setFoldComments):
    vtbl[].vtbl.setFoldComments = miqt_exec_callback_cQsciLexerCPP_setFoldComments
  if not isNil(vtbl.setFoldCompact):
    vtbl[].vtbl.setFoldCompact = miqt_exec_callback_cQsciLexerCPP_setFoldCompact
  if not isNil(vtbl.setFoldPreprocessor):
    vtbl[].vtbl.setFoldPreprocessor = miqt_exec_callback_cQsciLexerCPP_setFoldPreprocessor
  if not isNil(vtbl.setStylePreprocessor):
    vtbl[].vtbl.setStylePreprocessor = miqt_exec_callback_cQsciLexerCPP_setStylePreprocessor
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerCPP_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerCPP_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerCPP_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerCPP_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerCPP_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerCPP_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerCPP_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerCPP_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerCPP_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerCPP_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerCPP_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerCPP_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerCPP_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerCPP_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerCPP_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerCPP_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerCPP_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerCPP_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerCPP_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerCPP_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerCPP_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerCPP_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerCPP_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerCPP_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerCPP_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerCPP_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerCPP_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerCPP_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerCPP_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerCPP_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerCPP_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerCPP_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerCPP_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerCPP_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerCPP_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerCPP_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerCPP_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerCPP_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerCPP_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerCPP_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerCPP_disconnectNotify
  gen_qscilexercpp_types.QsciLexerCPP(h: fcQsciLexerCPP_new2(addr(vtbl[]), parent.h))

proc create*(T: type gen_qscilexercpp_types.QsciLexerCPP,
    parent: gen_qobject_types.QObject, caseInsensitiveKeywords: bool,
    vtbl: ref QsciLexerCPPVTable = nil): gen_qscilexercpp_types.QsciLexerCPP =
  let vtbl = if vtbl == nil: new QsciLexerCPPVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerCPPVTable, _: ptr cQsciLexerCPP) {.cdecl.} =
    let vtbl = cast[ref QsciLexerCPPVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerCPP_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerCPP_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerCPP_metacall
  if not isNil(vtbl.setFoldAtElse):
    vtbl[].vtbl.setFoldAtElse = miqt_exec_callback_cQsciLexerCPP_setFoldAtElse
  if not isNil(vtbl.setFoldComments):
    vtbl[].vtbl.setFoldComments = miqt_exec_callback_cQsciLexerCPP_setFoldComments
  if not isNil(vtbl.setFoldCompact):
    vtbl[].vtbl.setFoldCompact = miqt_exec_callback_cQsciLexerCPP_setFoldCompact
  if not isNil(vtbl.setFoldPreprocessor):
    vtbl[].vtbl.setFoldPreprocessor = miqt_exec_callback_cQsciLexerCPP_setFoldPreprocessor
  if not isNil(vtbl.setStylePreprocessor):
    vtbl[].vtbl.setStylePreprocessor = miqt_exec_callback_cQsciLexerCPP_setStylePreprocessor
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerCPP_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerCPP_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerCPP_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerCPP_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerCPP_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerCPP_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerCPP_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerCPP_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerCPP_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerCPP_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerCPP_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerCPP_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerCPP_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerCPP_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerCPP_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerCPP_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerCPP_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerCPP_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerCPP_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerCPP_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerCPP_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerCPP_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerCPP_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerCPP_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerCPP_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerCPP_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerCPP_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerCPP_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerCPP_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerCPP_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerCPP_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerCPP_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerCPP_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerCPP_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerCPP_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerCPP_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerCPP_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerCPP_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerCPP_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerCPP_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerCPP_disconnectNotify
  gen_qscilexercpp_types.QsciLexerCPP(h: fcQsciLexerCPP_new3(addr(vtbl[]), parent.h, caseInsensitiveKeywords))

proc staticMetaObject*(_: type gen_qscilexercpp_types.QsciLexerCPP): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerCPP_staticMetaObject())
proc delete*(self: gen_qscilexercpp_types.QsciLexerCPP) =
  fcQsciLexerCPP_delete(self.h)
