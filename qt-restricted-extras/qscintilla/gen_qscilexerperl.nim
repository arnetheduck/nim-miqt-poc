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

const cflags = gorge("pkg-config --cflags Qt5PrintSupport")
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

type cQsciLexerPerl*{.exportc: "QsciLexerPerl", incompleteStruct.} = object

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
type cQsciLexerPerlVTable = object
  destructor*: proc(vtbl: ptr cQsciLexerPerlVTable, self: ptr cQsciLexerPerl) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setFoldComments*: proc(vtbl, self: pointer, fold: bool): void {.cdecl, raises: [], gcsafe.}
  setFoldCompact*: proc(vtbl, self: pointer, fold: bool): void {.cdecl, raises: [], gcsafe.}
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
proc fcQsciLexerPerl_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QsciLexerPerl_virtualbase_metaObject".}
proc fcQsciLexerPerl_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerPerl_virtualbase_metacast".}
proc fcQsciLexerPerl_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerPerl_virtualbase_metacall".}
proc fcQsciLexerPerl_virtualbase_setFoldComments(self: pointer, fold: bool): void {.importc: "QsciLexerPerl_virtualbase_setFoldComments".}
proc fcQsciLexerPerl_virtualbase_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerPerl_virtualbase_setFoldCompact".}
proc fcQsciLexerPerl_virtualbase_lexer(self: pointer, ): cstring {.importc: "QsciLexerPerl_virtualbase_lexer".}
proc fcQsciLexerPerl_virtualbase_lexerId(self: pointer, ): cint {.importc: "QsciLexerPerl_virtualbase_lexerId".}
proc fcQsciLexerPerl_virtualbase_autoCompletionFillups(self: pointer, ): cstring {.importc: "QsciLexerPerl_virtualbase_autoCompletionFillups".}
proc fcQsciLexerPerl_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array {.importc: "QsciLexerPerl_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerPerl_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerPerl_virtualbase_blockEnd".}
proc fcQsciLexerPerl_virtualbase_blockLookback(self: pointer, ): cint {.importc: "QsciLexerPerl_virtualbase_blockLookback".}
proc fcQsciLexerPerl_virtualbase_blockStart(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerPerl_virtualbase_blockStart".}
proc fcQsciLexerPerl_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerPerl_virtualbase_blockStartKeyword".}
proc fcQsciLexerPerl_virtualbase_braceStyle(self: pointer, ): cint {.importc: "QsciLexerPerl_virtualbase_braceStyle".}
proc fcQsciLexerPerl_virtualbase_caseSensitive(self: pointer, ): bool {.importc: "QsciLexerPerl_virtualbase_caseSensitive".}
proc fcQsciLexerPerl_virtualbase_color(self: pointer, style: cint): pointer {.importc: "QsciLexerPerl_virtualbase_color".}
proc fcQsciLexerPerl_virtualbase_eolFill(self: pointer, style: cint): bool {.importc: "QsciLexerPerl_virtualbase_eolFill".}
proc fcQsciLexerPerl_virtualbase_font(self: pointer, style: cint): pointer {.importc: "QsciLexerPerl_virtualbase_font".}
proc fcQsciLexerPerl_virtualbase_indentationGuideView(self: pointer, ): cint {.importc: "QsciLexerPerl_virtualbase_indentationGuideView".}
proc fcQsciLexerPerl_virtualbase_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerPerl_virtualbase_keywords".}
proc fcQsciLexerPerl_virtualbase_defaultStyle(self: pointer, ): cint {.importc: "QsciLexerPerl_virtualbase_defaultStyle".}
proc fcQsciLexerPerl_virtualbase_paper(self: pointer, style: cint): pointer {.importc: "QsciLexerPerl_virtualbase_paper".}
proc fcQsciLexerPerl_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerPerl_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerPerl_virtualbase_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerPerl_virtualbase_defaultEolFill".}
proc fcQsciLexerPerl_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerPerl_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerPerl_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerPerl_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerPerl_virtualbase_setEditor(self: pointer, editor: pointer): void {.importc: "QsciLexerPerl_virtualbase_setEditor".}
proc fcQsciLexerPerl_virtualbase_refreshProperties(self: pointer, ): void {.importc: "QsciLexerPerl_virtualbase_refreshProperties".}
proc fcQsciLexerPerl_virtualbase_styleBitsNeeded(self: pointer, ): cint {.importc: "QsciLexerPerl_virtualbase_styleBitsNeeded".}
proc fcQsciLexerPerl_virtualbase_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerPerl_virtualbase_wordCharacters".}
proc fcQsciLexerPerl_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void {.importc: "QsciLexerPerl_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerPerl_virtualbase_setColor(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerPerl_virtualbase_setColor".}
proc fcQsciLexerPerl_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void {.importc: "QsciLexerPerl_virtualbase_setEolFill".}
proc fcQsciLexerPerl_virtualbase_setFont(self: pointer, f: pointer, style: cint): void {.importc: "QsciLexerPerl_virtualbase_setFont".}
proc fcQsciLexerPerl_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerPerl_virtualbase_setPaper".}
proc fcQsciLexerPerl_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerPerl_virtualbase_readProperties".}
proc fcQsciLexerPerl_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerPerl_virtualbase_writeProperties".}
proc fcQsciLexerPerl_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QsciLexerPerl_virtualbase_event".}
proc fcQsciLexerPerl_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QsciLexerPerl_virtualbase_eventFilter".}
proc fcQsciLexerPerl_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QsciLexerPerl_virtualbase_timerEvent".}
proc fcQsciLexerPerl_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QsciLexerPerl_virtualbase_childEvent".}
proc fcQsciLexerPerl_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QsciLexerPerl_virtualbase_customEvent".}
proc fcQsciLexerPerl_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerPerl_virtualbase_connectNotify".}
proc fcQsciLexerPerl_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerPerl_virtualbase_disconnectNotify".}
proc fcQsciLexerPerl_protectedbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerPerl_protectedbase_readProperties".}
proc fcQsciLexerPerl_protectedbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerPerl_protectedbase_writeProperties".}
proc fcQsciLexerPerl_protectedbase_sender(self: pointer, ): pointer {.importc: "QsciLexerPerl_protectedbase_sender".}
proc fcQsciLexerPerl_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QsciLexerPerl_protectedbase_senderSignalIndex".}
proc fcQsciLexerPerl_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QsciLexerPerl_protectedbase_receivers".}
proc fcQsciLexerPerl_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QsciLexerPerl_protectedbase_isSignalConnected".}
proc fcQsciLexerPerl_new(vtbl: pointer, ): ptr cQsciLexerPerl {.importc: "QsciLexerPerl_new".}
proc fcQsciLexerPerl_new2(vtbl: pointer, parent: pointer): ptr cQsciLexerPerl {.importc: "QsciLexerPerl_new2".}
proc fcQsciLexerPerl_staticMetaObject(): pointer {.importc: "QsciLexerPerl_staticMetaObject".}
proc fcQsciLexerPerl_delete(self: pointer) {.importc: "QsciLexerPerl_delete".}

proc metaObject*(self: gen_qscilexerperl_types.QsciLexerPerl, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerPerl_metaObject(self.h))

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

proc defaultColor*(self: gen_qscilexerperl_types.QsciLexerPerl, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerPerl_defaultColor(self.h, style))

proc defaultEolFill*(self: gen_qscilexerperl_types.QsciLexerPerl, style: cint): bool =
  fcQsciLexerPerl_defaultEolFill(self.h, style)

proc defaultFont*(self: gen_qscilexerperl_types.QsciLexerPerl, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerPerl_defaultFont(self.h, style))

proc defaultPaper*(self: gen_qscilexerperl_types.QsciLexerPerl, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerPerl_defaultPaper(self.h, style))

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

proc tr*(_: type gen_qscilexerperl_types.QsciLexerPerl, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerPerl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexerperl_types.QsciLexerPerl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerPerl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexerperl_types.QsciLexerPerl, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerPerl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexerperl_types.QsciLexerPerl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerPerl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc blockEnd*(self: gen_qscilexerperl_types.QsciLexerPerl, style: ptr cint): cstring =
  (fcQsciLexerPerl_blockEnd1(self.h, style))

proc blockStart*(self: gen_qscilexerperl_types.QsciLexerPerl, style: ptr cint): cstring =
  (fcQsciLexerPerl_blockStart1(self.h, style))

type QsciLexerPerlmetaObjectProc* = proc(self: QsciLexerPerl): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QsciLexerPerlmetacastProc* = proc(self: QsciLexerPerl, param1: cstring): pointer {.raises: [], gcsafe.}
type QsciLexerPerlmetacallProc* = proc(self: QsciLexerPerl, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QsciLexerPerlsetFoldCommentsProc* = proc(self: QsciLexerPerl, fold: bool): void {.raises: [], gcsafe.}
type QsciLexerPerlsetFoldCompactProc* = proc(self: QsciLexerPerl, fold: bool): void {.raises: [], gcsafe.}
type QsciLexerPerllanguageProc* = proc(self: QsciLexerPerl): cstring {.raises: [], gcsafe.}
type QsciLexerPerllexerProc* = proc(self: QsciLexerPerl): cstring {.raises: [], gcsafe.}
type QsciLexerPerllexerIdProc* = proc(self: QsciLexerPerl): cint {.raises: [], gcsafe.}
type QsciLexerPerlautoCompletionFillupsProc* = proc(self: QsciLexerPerl): cstring {.raises: [], gcsafe.}
type QsciLexerPerlautoCompletionWordSeparatorsProc* = proc(self: QsciLexerPerl): seq[string] {.raises: [], gcsafe.}
type QsciLexerPerlblockEndProc* = proc(self: QsciLexerPerl, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerPerlblockLookbackProc* = proc(self: QsciLexerPerl): cint {.raises: [], gcsafe.}
type QsciLexerPerlblockStartProc* = proc(self: QsciLexerPerl, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerPerlblockStartKeywordProc* = proc(self: QsciLexerPerl, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerPerlbraceStyleProc* = proc(self: QsciLexerPerl): cint {.raises: [], gcsafe.}
type QsciLexerPerlcaseSensitiveProc* = proc(self: QsciLexerPerl): bool {.raises: [], gcsafe.}
type QsciLexerPerlcolorProc* = proc(self: QsciLexerPerl, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerPerleolFillProc* = proc(self: QsciLexerPerl, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerPerlfontProc* = proc(self: QsciLexerPerl, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerPerlindentationGuideViewProc* = proc(self: QsciLexerPerl): cint {.raises: [], gcsafe.}
type QsciLexerPerlkeywordsProc* = proc(self: QsciLexerPerl, set: cint): cstring {.raises: [], gcsafe.}
type QsciLexerPerldefaultStyleProc* = proc(self: QsciLexerPerl): cint {.raises: [], gcsafe.}
type QsciLexerPerldescriptionProc* = proc(self: QsciLexerPerl, style: cint): string {.raises: [], gcsafe.}
type QsciLexerPerlpaperProc* = proc(self: QsciLexerPerl, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerPerldefaultColorProc* = proc(self: QsciLexerPerl, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerPerldefaultEolFillProc* = proc(self: QsciLexerPerl, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerPerldefaultFontProc* = proc(self: QsciLexerPerl, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerPerldefaultPaperProc* = proc(self: QsciLexerPerl, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerPerlsetEditorProc* = proc(self: QsciLexerPerl, editor: gen_qsciscintilla_types.QsciScintilla): void {.raises: [], gcsafe.}
type QsciLexerPerlrefreshPropertiesProc* = proc(self: QsciLexerPerl): void {.raises: [], gcsafe.}
type QsciLexerPerlstyleBitsNeededProc* = proc(self: QsciLexerPerl): cint {.raises: [], gcsafe.}
type QsciLexerPerlwordCharactersProc* = proc(self: QsciLexerPerl): cstring {.raises: [], gcsafe.}
type QsciLexerPerlsetAutoIndentStyleProc* = proc(self: QsciLexerPerl, autoindentstyle: cint): void {.raises: [], gcsafe.}
type QsciLexerPerlsetColorProc* = proc(self: QsciLexerPerl, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerPerlsetEolFillProc* = proc(self: QsciLexerPerl, eoffill: bool, style: cint): void {.raises: [], gcsafe.}
type QsciLexerPerlsetFontProc* = proc(self: QsciLexerPerl, f: gen_qfont_types.QFont, style: cint): void {.raises: [], gcsafe.}
type QsciLexerPerlsetPaperProc* = proc(self: QsciLexerPerl, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerPerlreadPropertiesProc* = proc(self: QsciLexerPerl, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerPerlwritePropertiesProc* = proc(self: QsciLexerPerl, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerPerleventProc* = proc(self: QsciLexerPerl, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerPerleventFilterProc* = proc(self: QsciLexerPerl, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerPerltimerEventProc* = proc(self: QsciLexerPerl, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QsciLexerPerlchildEventProc* = proc(self: QsciLexerPerl, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QsciLexerPerlcustomEventProc* = proc(self: QsciLexerPerl, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QsciLexerPerlconnectNotifyProc* = proc(self: QsciLexerPerl, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerPerldisconnectNotifyProc* = proc(self: QsciLexerPerl, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerPerlVTable* = object
  vtbl: cQsciLexerPerlVTable
  metaObject*: QsciLexerPerlmetaObjectProc
  metacast*: QsciLexerPerlmetacastProc
  metacall*: QsciLexerPerlmetacallProc
  setFoldComments*: QsciLexerPerlsetFoldCommentsProc
  setFoldCompact*: QsciLexerPerlsetFoldCompactProc
  language*: QsciLexerPerllanguageProc
  lexer*: QsciLexerPerllexerProc
  lexerId*: QsciLexerPerllexerIdProc
  autoCompletionFillups*: QsciLexerPerlautoCompletionFillupsProc
  autoCompletionWordSeparators*: QsciLexerPerlautoCompletionWordSeparatorsProc
  blockEnd*: QsciLexerPerlblockEndProc
  blockLookback*: QsciLexerPerlblockLookbackProc
  blockStart*: QsciLexerPerlblockStartProc
  blockStartKeyword*: QsciLexerPerlblockStartKeywordProc
  braceStyle*: QsciLexerPerlbraceStyleProc
  caseSensitive*: QsciLexerPerlcaseSensitiveProc
  color*: QsciLexerPerlcolorProc
  eolFill*: QsciLexerPerleolFillProc
  font*: QsciLexerPerlfontProc
  indentationGuideView*: QsciLexerPerlindentationGuideViewProc
  keywords*: QsciLexerPerlkeywordsProc
  defaultStyle*: QsciLexerPerldefaultStyleProc
  description*: QsciLexerPerldescriptionProc
  paper*: QsciLexerPerlpaperProc
  defaultColor*: QsciLexerPerldefaultColorProc
  defaultEolFill*: QsciLexerPerldefaultEolFillProc
  defaultFont*: QsciLexerPerldefaultFontProc
  defaultPaper*: QsciLexerPerldefaultPaperProc
  setEditor*: QsciLexerPerlsetEditorProc
  refreshProperties*: QsciLexerPerlrefreshPropertiesProc
  styleBitsNeeded*: QsciLexerPerlstyleBitsNeededProc
  wordCharacters*: QsciLexerPerlwordCharactersProc
  setAutoIndentStyle*: QsciLexerPerlsetAutoIndentStyleProc
  setColor*: QsciLexerPerlsetColorProc
  setEolFill*: QsciLexerPerlsetEolFillProc
  setFont*: QsciLexerPerlsetFontProc
  setPaper*: QsciLexerPerlsetPaperProc
  readProperties*: QsciLexerPerlreadPropertiesProc
  writeProperties*: QsciLexerPerlwritePropertiesProc
  event*: QsciLexerPerleventProc
  eventFilter*: QsciLexerPerleventFilterProc
  timerEvent*: QsciLexerPerltimerEventProc
  childEvent*: QsciLexerPerlchildEventProc
  customEvent*: QsciLexerPerlcustomEventProc
  connectNotify*: QsciLexerPerlconnectNotifyProc
  disconnectNotify*: QsciLexerPerldisconnectNotifyProc
proc QsciLexerPerlmetaObject*(self: gen_qscilexerperl_types.QsciLexerPerl, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerPerl_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQsciLexerPerl_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPerlVTable](vtbl)
  let self = QsciLexerPerl(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QsciLexerPerlmetacast*(self: gen_qscilexerperl_types.QsciLexerPerl, param1: cstring): pointer =
  fcQsciLexerPerl_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQsciLexerPerl_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPerlVTable](vtbl)
  let self = QsciLexerPerl(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QsciLexerPerlmetacall*(self: gen_qscilexerperl_types.QsciLexerPerl, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerPerl_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQsciLexerPerl_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPerlVTable](vtbl)
  let self = QsciLexerPerl(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QsciLexerPerlsetFoldComments*(self: gen_qscilexerperl_types.QsciLexerPerl, fold: bool): void =
  fcQsciLexerPerl_virtualbase_setFoldComments(self.h, fold)

proc miqt_exec_callback_cQsciLexerPerl_setFoldComments(vtbl: pointer, self: pointer, fold: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPerlVTable](vtbl)
  let self = QsciLexerPerl(h: self)
  let slotval1 = fold
  vtbl[].setFoldComments(self, slotval1)

proc QsciLexerPerlsetFoldCompact*(self: gen_qscilexerperl_types.QsciLexerPerl, fold: bool): void =
  fcQsciLexerPerl_virtualbase_setFoldCompact(self.h, fold)

proc miqt_exec_callback_cQsciLexerPerl_setFoldCompact(vtbl: pointer, self: pointer, fold: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPerlVTable](vtbl)
  let self = QsciLexerPerl(h: self)
  let slotval1 = fold
  vtbl[].setFoldCompact(self, slotval1)

proc miqt_exec_callback_cQsciLexerPerl_language(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPerlVTable](vtbl)
  let self = QsciLexerPerl(h: self)
  let virtualReturn = vtbl[].language(self)
  virtualReturn

proc QsciLexerPerllexer*(self: gen_qscilexerperl_types.QsciLexerPerl, ): cstring =
  (fcQsciLexerPerl_virtualbase_lexer(self.h))

proc miqt_exec_callback_cQsciLexerPerl_lexer(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPerlVTable](vtbl)
  let self = QsciLexerPerl(h: self)
  let virtualReturn = vtbl[].lexer(self)
  virtualReturn

proc QsciLexerPerllexerId*(self: gen_qscilexerperl_types.QsciLexerPerl, ): cint =
  fcQsciLexerPerl_virtualbase_lexerId(self.h)

proc miqt_exec_callback_cQsciLexerPerl_lexerId(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPerlVTable](vtbl)
  let self = QsciLexerPerl(h: self)
  let virtualReturn = vtbl[].lexerId(self)
  virtualReturn

proc QsciLexerPerlautoCompletionFillups*(self: gen_qscilexerperl_types.QsciLexerPerl, ): cstring =
  (fcQsciLexerPerl_virtualbase_autoCompletionFillups(self.h))

proc miqt_exec_callback_cQsciLexerPerl_autoCompletionFillups(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPerlVTable](vtbl)
  let self = QsciLexerPerl(h: self)
  let virtualReturn = vtbl[].autoCompletionFillups(self)
  virtualReturn

proc QsciLexerPerlautoCompletionWordSeparators*(self: gen_qscilexerperl_types.QsciLexerPerl, ): seq[string] =
  var v_ma = fcQsciLexerPerl_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc miqt_exec_callback_cQsciLexerPerl_autoCompletionWordSeparators(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPerlVTable](vtbl)
  let self = QsciLexerPerl(h: self)
  let virtualReturn = vtbl[].autoCompletionWordSeparators(self)
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QsciLexerPerlblockEnd*(self: gen_qscilexerperl_types.QsciLexerPerl, style: ptr cint): cstring =
  (fcQsciLexerPerl_virtualbase_blockEnd(self.h, style))

proc miqt_exec_callback_cQsciLexerPerl_blockEnd(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPerlVTable](vtbl)
  let self = QsciLexerPerl(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockEnd(self, slotval1)
  virtualReturn

proc QsciLexerPerlblockLookback*(self: gen_qscilexerperl_types.QsciLexerPerl, ): cint =
  fcQsciLexerPerl_virtualbase_blockLookback(self.h)

proc miqt_exec_callback_cQsciLexerPerl_blockLookback(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPerlVTable](vtbl)
  let self = QsciLexerPerl(h: self)
  let virtualReturn = vtbl[].blockLookback(self)
  virtualReturn

proc QsciLexerPerlblockStart*(self: gen_qscilexerperl_types.QsciLexerPerl, style: ptr cint): cstring =
  (fcQsciLexerPerl_virtualbase_blockStart(self.h, style))

proc miqt_exec_callback_cQsciLexerPerl_blockStart(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPerlVTable](vtbl)
  let self = QsciLexerPerl(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStart(self, slotval1)
  virtualReturn

proc QsciLexerPerlblockStartKeyword*(self: gen_qscilexerperl_types.QsciLexerPerl, style: ptr cint): cstring =
  (fcQsciLexerPerl_virtualbase_blockStartKeyword(self.h, style))

proc miqt_exec_callback_cQsciLexerPerl_blockStartKeyword(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPerlVTable](vtbl)
  let self = QsciLexerPerl(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStartKeyword(self, slotval1)
  virtualReturn

proc QsciLexerPerlbraceStyle*(self: gen_qscilexerperl_types.QsciLexerPerl, ): cint =
  fcQsciLexerPerl_virtualbase_braceStyle(self.h)

proc miqt_exec_callback_cQsciLexerPerl_braceStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPerlVTable](vtbl)
  let self = QsciLexerPerl(h: self)
  let virtualReturn = vtbl[].braceStyle(self)
  virtualReturn

proc QsciLexerPerlcaseSensitive*(self: gen_qscilexerperl_types.QsciLexerPerl, ): bool =
  fcQsciLexerPerl_virtualbase_caseSensitive(self.h)

proc miqt_exec_callback_cQsciLexerPerl_caseSensitive(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPerlVTable](vtbl)
  let self = QsciLexerPerl(h: self)
  let virtualReturn = vtbl[].caseSensitive(self)
  virtualReturn

proc QsciLexerPerlcolor*(self: gen_qscilexerperl_types.QsciLexerPerl, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerPerl_virtualbase_color(self.h, style))

proc miqt_exec_callback_cQsciLexerPerl_color(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPerlVTable](vtbl)
  let self = QsciLexerPerl(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].color(self, slotval1)
  virtualReturn.h

proc QsciLexerPerleolFill*(self: gen_qscilexerperl_types.QsciLexerPerl, style: cint): bool =
  fcQsciLexerPerl_virtualbase_eolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerPerl_eolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPerlVTable](vtbl)
  let self = QsciLexerPerl(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].eolFill(self, slotval1)
  virtualReturn

proc QsciLexerPerlfont*(self: gen_qscilexerperl_types.QsciLexerPerl, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerPerl_virtualbase_font(self.h, style))

proc miqt_exec_callback_cQsciLexerPerl_font(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPerlVTable](vtbl)
  let self = QsciLexerPerl(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].font(self, slotval1)
  virtualReturn.h

proc QsciLexerPerlindentationGuideView*(self: gen_qscilexerperl_types.QsciLexerPerl, ): cint =
  fcQsciLexerPerl_virtualbase_indentationGuideView(self.h)

proc miqt_exec_callback_cQsciLexerPerl_indentationGuideView(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPerlVTable](vtbl)
  let self = QsciLexerPerl(h: self)
  let virtualReturn = vtbl[].indentationGuideView(self)
  virtualReturn

proc QsciLexerPerlkeywords*(self: gen_qscilexerperl_types.QsciLexerPerl, set: cint): cstring =
  (fcQsciLexerPerl_virtualbase_keywords(self.h, set))

proc miqt_exec_callback_cQsciLexerPerl_keywords(vtbl: pointer, self: pointer, set: cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPerlVTable](vtbl)
  let self = QsciLexerPerl(h: self)
  let slotval1 = set
  let virtualReturn = vtbl[].keywords(self, slotval1)
  virtualReturn

proc QsciLexerPerldefaultStyle*(self: gen_qscilexerperl_types.QsciLexerPerl, ): cint =
  fcQsciLexerPerl_virtualbase_defaultStyle(self.h)

proc miqt_exec_callback_cQsciLexerPerl_defaultStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPerlVTable](vtbl)
  let self = QsciLexerPerl(h: self)
  let virtualReturn = vtbl[].defaultStyle(self)
  virtualReturn

proc miqt_exec_callback_cQsciLexerPerl_description(vtbl: pointer, self: pointer, style: cint): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPerlVTable](vtbl)
  let self = QsciLexerPerl(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].description(self, slotval1)
  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))

proc QsciLexerPerlpaper*(self: gen_qscilexerperl_types.QsciLexerPerl, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerPerl_virtualbase_paper(self.h, style))

proc miqt_exec_callback_cQsciLexerPerl_paper(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPerlVTable](vtbl)
  let self = QsciLexerPerl(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].paper(self, slotval1)
  virtualReturn.h

proc QsciLexerPerldefaultColor*(self: gen_qscilexerperl_types.QsciLexerPerl, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerPerl_virtualbase_defaultColorWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerPerl_defaultColorWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPerlVTable](vtbl)
  let self = QsciLexerPerl(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultColor(self, slotval1)
  virtualReturn.h

proc QsciLexerPerldefaultEolFill*(self: gen_qscilexerperl_types.QsciLexerPerl, style: cint): bool =
  fcQsciLexerPerl_virtualbase_defaultEolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerPerl_defaultEolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPerlVTable](vtbl)
  let self = QsciLexerPerl(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultEolFill(self, slotval1)
  virtualReturn

proc QsciLexerPerldefaultFont*(self: gen_qscilexerperl_types.QsciLexerPerl, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerPerl_virtualbase_defaultFontWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerPerl_defaultFontWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPerlVTable](vtbl)
  let self = QsciLexerPerl(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultFont(self, slotval1)
  virtualReturn.h

proc QsciLexerPerldefaultPaper*(self: gen_qscilexerperl_types.QsciLexerPerl, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerPerl_virtualbase_defaultPaperWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerPerl_defaultPaperWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPerlVTable](vtbl)
  let self = QsciLexerPerl(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultPaper(self, slotval1)
  virtualReturn.h

proc QsciLexerPerlsetEditor*(self: gen_qscilexerperl_types.QsciLexerPerl, editor: gen_qsciscintilla_types.QsciScintilla): void =
  fcQsciLexerPerl_virtualbase_setEditor(self.h, editor.h)

proc miqt_exec_callback_cQsciLexerPerl_setEditor(vtbl: pointer, self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPerlVTable](vtbl)
  let self = QsciLexerPerl(h: self)
  let slotval1 = gen_qsciscintilla_types.QsciScintilla(h: editor)
  vtbl[].setEditor(self, slotval1)

proc QsciLexerPerlrefreshProperties*(self: gen_qscilexerperl_types.QsciLexerPerl, ): void =
  fcQsciLexerPerl_virtualbase_refreshProperties(self.h)

proc miqt_exec_callback_cQsciLexerPerl_refreshProperties(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPerlVTable](vtbl)
  let self = QsciLexerPerl(h: self)
  vtbl[].refreshProperties(self)

proc QsciLexerPerlstyleBitsNeeded*(self: gen_qscilexerperl_types.QsciLexerPerl, ): cint =
  fcQsciLexerPerl_virtualbase_styleBitsNeeded(self.h)

proc miqt_exec_callback_cQsciLexerPerl_styleBitsNeeded(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPerlVTable](vtbl)
  let self = QsciLexerPerl(h: self)
  let virtualReturn = vtbl[].styleBitsNeeded(self)
  virtualReturn

proc QsciLexerPerlwordCharacters*(self: gen_qscilexerperl_types.QsciLexerPerl, ): cstring =
  (fcQsciLexerPerl_virtualbase_wordCharacters(self.h))

proc miqt_exec_callback_cQsciLexerPerl_wordCharacters(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPerlVTable](vtbl)
  let self = QsciLexerPerl(h: self)
  let virtualReturn = vtbl[].wordCharacters(self)
  virtualReturn

proc QsciLexerPerlsetAutoIndentStyle*(self: gen_qscilexerperl_types.QsciLexerPerl, autoindentstyle: cint): void =
  fcQsciLexerPerl_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

proc miqt_exec_callback_cQsciLexerPerl_setAutoIndentStyle(vtbl: pointer, self: pointer, autoindentstyle: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPerlVTable](vtbl)
  let self = QsciLexerPerl(h: self)
  let slotval1 = autoindentstyle
  vtbl[].setAutoIndentStyle(self, slotval1)

proc QsciLexerPerlsetColor*(self: gen_qscilexerperl_types.QsciLexerPerl, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerPerl_virtualbase_setColor(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerPerl_setColor(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPerlVTable](vtbl)
  let self = QsciLexerPerl(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setColor(self, slotval1, slotval2)

proc QsciLexerPerlsetEolFill*(self: gen_qscilexerperl_types.QsciLexerPerl, eoffill: bool, style: cint): void =
  fcQsciLexerPerl_virtualbase_setEolFill(self.h, eoffill, style)

proc miqt_exec_callback_cQsciLexerPerl_setEolFill(vtbl: pointer, self: pointer, eoffill: bool, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPerlVTable](vtbl)
  let self = QsciLexerPerl(h: self)
  let slotval1 = eoffill
  let slotval2 = style
  vtbl[].setEolFill(self, slotval1, slotval2)

proc QsciLexerPerlsetFont*(self: gen_qscilexerperl_types.QsciLexerPerl, f: gen_qfont_types.QFont, style: cint): void =
  fcQsciLexerPerl_virtualbase_setFont(self.h, f.h, style)

proc miqt_exec_callback_cQsciLexerPerl_setFont(vtbl: pointer, self: pointer, f: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPerlVTable](vtbl)
  let self = QsciLexerPerl(h: self)
  let slotval1 = gen_qfont_types.QFont(h: f)
  let slotval2 = style
  vtbl[].setFont(self, slotval1, slotval2)

proc QsciLexerPerlsetPaper*(self: gen_qscilexerperl_types.QsciLexerPerl, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerPerl_virtualbase_setPaper(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerPerl_setPaper(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPerlVTable](vtbl)
  let self = QsciLexerPerl(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setPaper(self, slotval1, slotval2)

proc QsciLexerPerlreadProperties*(self: gen_qscilexerperl_types.QsciLexerPerl, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerPerl_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerPerl_readProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPerlVTable](vtbl)
  let self = QsciLexerPerl(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].readProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerPerlwriteProperties*(self: gen_qscilexerperl_types.QsciLexerPerl, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerPerl_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerPerl_writeProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPerlVTable](vtbl)
  let self = QsciLexerPerl(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].writeProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerPerlevent*(self: gen_qscilexerperl_types.QsciLexerPerl, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerPerl_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQsciLexerPerl_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPerlVTable](vtbl)
  let self = QsciLexerPerl(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QsciLexerPerleventFilter*(self: gen_qscilexerperl_types.QsciLexerPerl, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerPerl_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQsciLexerPerl_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPerlVTable](vtbl)
  let self = QsciLexerPerl(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerPerltimerEvent*(self: gen_qscilexerperl_types.QsciLexerPerl, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQsciLexerPerl_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerPerl_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPerlVTable](vtbl)
  let self = QsciLexerPerl(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QsciLexerPerlchildEvent*(self: gen_qscilexerperl_types.QsciLexerPerl, event: gen_qcoreevent_types.QChildEvent): void =
  fcQsciLexerPerl_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerPerl_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPerlVTable](vtbl)
  let self = QsciLexerPerl(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QsciLexerPerlcustomEvent*(self: gen_qscilexerperl_types.QsciLexerPerl, event: gen_qcoreevent_types.QEvent): void =
  fcQsciLexerPerl_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerPerl_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPerlVTable](vtbl)
  let self = QsciLexerPerl(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QsciLexerPerlconnectNotify*(self: gen_qscilexerperl_types.QsciLexerPerl, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerPerl_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerPerl_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPerlVTable](vtbl)
  let self = QsciLexerPerl(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QsciLexerPerldisconnectNotify*(self: gen_qscilexerperl_types.QsciLexerPerl, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerPerl_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerPerl_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPerlVTable](vtbl)
  let self = QsciLexerPerl(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc readProperties*(self: gen_qscilexerperl_types.QsciLexerPerl, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerPerl_protectedbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc writeProperties*(self: gen_qscilexerperl_types.QsciLexerPerl, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerPerl_protectedbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc sender*(self: gen_qscilexerperl_types.QsciLexerPerl, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQsciLexerPerl_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qscilexerperl_types.QsciLexerPerl, ): cint =
  fcQsciLexerPerl_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qscilexerperl_types.QsciLexerPerl, signal: cstring): cint =
  fcQsciLexerPerl_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qscilexerperl_types.QsciLexerPerl, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQsciLexerPerl_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qscilexerperl_types.QsciLexerPerl,
    vtbl: ref QsciLexerPerlVTable = nil): gen_qscilexerperl_types.QsciLexerPerl =
  let vtbl = if vtbl == nil: new QsciLexerPerlVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerPerlVTable, _: ptr cQsciLexerPerl) {.cdecl.} =
    let vtbl = cast[ref QsciLexerPerlVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerPerl_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerPerl_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerPerl_metacall
  if not isNil(vtbl.setFoldComments):
    vtbl[].vtbl.setFoldComments = miqt_exec_callback_cQsciLexerPerl_setFoldComments
  if not isNil(vtbl.setFoldCompact):
    vtbl[].vtbl.setFoldCompact = miqt_exec_callback_cQsciLexerPerl_setFoldCompact
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerPerl_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerPerl_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerPerl_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerPerl_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerPerl_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerPerl_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerPerl_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerPerl_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerPerl_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerPerl_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerPerl_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerPerl_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerPerl_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerPerl_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerPerl_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerPerl_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerPerl_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerPerl_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerPerl_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerPerl_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerPerl_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerPerl_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerPerl_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerPerl_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerPerl_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerPerl_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerPerl_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerPerl_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerPerl_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerPerl_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerPerl_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerPerl_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerPerl_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerPerl_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerPerl_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerPerl_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerPerl_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerPerl_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerPerl_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerPerl_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerPerl_disconnectNotify
  gen_qscilexerperl_types.QsciLexerPerl(h: fcQsciLexerPerl_new(addr(vtbl[]), ))

proc create*(T: type gen_qscilexerperl_types.QsciLexerPerl,
    parent: gen_qobject_types.QObject,
    vtbl: ref QsciLexerPerlVTable = nil): gen_qscilexerperl_types.QsciLexerPerl =
  let vtbl = if vtbl == nil: new QsciLexerPerlVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerPerlVTable, _: ptr cQsciLexerPerl) {.cdecl.} =
    let vtbl = cast[ref QsciLexerPerlVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerPerl_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerPerl_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerPerl_metacall
  if not isNil(vtbl.setFoldComments):
    vtbl[].vtbl.setFoldComments = miqt_exec_callback_cQsciLexerPerl_setFoldComments
  if not isNil(vtbl.setFoldCompact):
    vtbl[].vtbl.setFoldCompact = miqt_exec_callback_cQsciLexerPerl_setFoldCompact
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerPerl_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerPerl_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerPerl_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerPerl_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerPerl_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerPerl_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerPerl_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerPerl_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerPerl_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerPerl_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerPerl_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerPerl_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerPerl_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerPerl_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerPerl_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerPerl_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerPerl_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerPerl_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerPerl_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerPerl_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerPerl_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerPerl_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerPerl_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerPerl_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerPerl_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerPerl_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerPerl_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerPerl_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerPerl_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerPerl_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerPerl_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerPerl_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerPerl_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerPerl_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerPerl_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerPerl_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerPerl_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerPerl_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerPerl_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerPerl_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerPerl_disconnectNotify
  gen_qscilexerperl_types.QsciLexerPerl(h: fcQsciLexerPerl_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qscilexerperl_types.QsciLexerPerl): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerPerl_staticMetaObject())
proc delete*(self: gen_qscilexerperl_types.QsciLexerPerl) =
  fcQsciLexerPerl_delete(self.h)
