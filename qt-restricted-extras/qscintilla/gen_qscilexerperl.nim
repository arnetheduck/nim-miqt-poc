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


type QsciLexerPerlEnum* = cint
const
  QsciLexerPerlDefault* = 0
  QsciLexerPerlError* = 1
  QsciLexerPerlComment* = 2
  QsciLexerPerlPOD* = 3
  QsciLexerPerlNumber* = 4
  QsciLexerPerlKeyword* = 5
  QsciLexerPerlDoubleQuotedString* = 6
  QsciLexerPerlSingleQuotedString* = 7
  QsciLexerPerlOperator* = 10
  QsciLexerPerlIdentifier* = 11
  QsciLexerPerlScalar* = 12
  QsciLexerPerlArray* = 13
  QsciLexerPerlHash* = 14
  QsciLexerPerlSymbolTable* = 15
  QsciLexerPerlRegex* = 17
  QsciLexerPerlSubstitution* = 18
  QsciLexerPerlBackticks* = 20
  QsciLexerPerlDataSection* = 21
  QsciLexerPerlHereDocumentDelimiter* = 22
  QsciLexerPerlSingleQuotedHereDocument* = 23
  QsciLexerPerlDoubleQuotedHereDocument* = 24
  QsciLexerPerlBacktickHereDocument* = 25
  QsciLexerPerlQuotedStringQ* = 26
  QsciLexerPerlQuotedStringQQ* = 27
  QsciLexerPerlQuotedStringQX* = 28
  QsciLexerPerlQuotedStringQR* = 29
  QsciLexerPerlQuotedStringQW* = 30
  QsciLexerPerlPODVerbatim* = 31
  QsciLexerPerlSubroutinePrototype* = 40
  QsciLexerPerlFormatIdentifier* = 41
  QsciLexerPerlFormatBody* = 42
  QsciLexerPerlDoubleQuotedStringVar* = 43
  QsciLexerPerlTranslation* = 44
  QsciLexerPerlRegexVar* = 54
  QsciLexerPerlSubstitutionVar* = 55
  QsciLexerPerlBackticksVar* = 57
  QsciLexerPerlDoubleQuotedHereDocumentVar* = 61
  QsciLexerPerlBacktickHereDocumentVar* = 62
  QsciLexerPerlQuotedStringQQVar* = 64
  QsciLexerPerlQuotedStringQXVar* = 65
  QsciLexerPerlQuotedStringQRVar* = 66



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
proc fcQsciLexerPerl_delete(self: pointer) {.importc: "QsciLexerPerl_delete".}


func init*(T: type QsciLexerPerl, h: ptr cQsciLexerPerl): QsciLexerPerl =
  T(h: h)
proc create*(T: type QsciLexerPerl, ): QsciLexerPerl =

  QsciLexerPerl.init(fcQsciLexerPerl_new())
proc create*(T: type QsciLexerPerl, parent: gen_qobject.QObject): QsciLexerPerl =

  QsciLexerPerl.init(fcQsciLexerPerl_new2(parent.h))
proc metaObject*(self: QsciLexerPerl, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQsciLexerPerl_metaObject(self.h))

proc metacast*(self: QsciLexerPerl, param1: cstring): pointer =

  fcQsciLexerPerl_metacast(self.h, param1)

proc metacall*(self: QsciLexerPerl, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQsciLexerPerl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QsciLexerPerl, s: cstring): string =

  let v_ms = fcQsciLexerPerl_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QsciLexerPerl, s: cstring): string =

  let v_ms = fcQsciLexerPerl_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: QsciLexerPerl, ): cstring =

  (fcQsciLexerPerl_language(self.h))

proc lexer*(self: QsciLexerPerl, ): cstring =

  (fcQsciLexerPerl_lexer(self.h))

proc autoCompletionWordSeparators*(self: QsciLexerPerl, ): seq[string] =

  var v_ma = fcQsciLexerPerl_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc blockEnd*(self: QsciLexerPerl, ): cstring =

  (fcQsciLexerPerl_blockEnd(self.h))

proc blockStart*(self: QsciLexerPerl, ): cstring =

  (fcQsciLexerPerl_blockStart(self.h))

proc braceStyle*(self: QsciLexerPerl, ): cint =

  fcQsciLexerPerl_braceStyle(self.h)

proc wordCharacters*(self: QsciLexerPerl, ): cstring =

  (fcQsciLexerPerl_wordCharacters(self.h))

proc defaultColor*(self: QsciLexerPerl, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerPerl_defaultColor(self.h, style))

proc defaultEolFill*(self: QsciLexerPerl, style: cint): bool =

  fcQsciLexerPerl_defaultEolFill(self.h, style)

proc defaultFont*(self: QsciLexerPerl, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQsciLexerPerl_defaultFont(self.h, style))

proc defaultPaper*(self: QsciLexerPerl, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerPerl_defaultPaper(self.h, style))

proc keywords*(self: QsciLexerPerl, set: cint): cstring =

  (fcQsciLexerPerl_keywords(self.h, set))

proc description*(self: QsciLexerPerl, style: cint): string =

  let v_ms = fcQsciLexerPerl_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: QsciLexerPerl, ): void =

  fcQsciLexerPerl_refreshProperties(self.h)

proc setFoldAtElse*(self: QsciLexerPerl, fold: bool): void =

  fcQsciLexerPerl_setFoldAtElse(self.h, fold)

proc foldAtElse*(self: QsciLexerPerl, ): bool =

  fcQsciLexerPerl_foldAtElse(self.h)

proc foldComments*(self: QsciLexerPerl, ): bool =

  fcQsciLexerPerl_foldComments(self.h)

proc foldCompact*(self: QsciLexerPerl, ): bool =

  fcQsciLexerPerl_foldCompact(self.h)

proc setFoldPackages*(self: QsciLexerPerl, fold: bool): void =

  fcQsciLexerPerl_setFoldPackages(self.h, fold)

proc foldPackages*(self: QsciLexerPerl, ): bool =

  fcQsciLexerPerl_foldPackages(self.h)

proc setFoldPODBlocks*(self: QsciLexerPerl, fold: bool): void =

  fcQsciLexerPerl_setFoldPODBlocks(self.h, fold)

proc foldPODBlocks*(self: QsciLexerPerl, ): bool =

  fcQsciLexerPerl_foldPODBlocks(self.h)

proc setFoldComments*(self: QsciLexerPerl, fold: bool): void =

  fcQsciLexerPerl_setFoldComments(self.h, fold)

proc setFoldCompact*(self: QsciLexerPerl, fold: bool): void =

  fcQsciLexerPerl_setFoldCompact(self.h, fold)

proc tr2*(_: type QsciLexerPerl, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerPerl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QsciLexerPerl, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerPerl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QsciLexerPerl, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerPerl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QsciLexerPerl, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerPerl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc blockEnd1*(self: QsciLexerPerl, style: ptr cint): cstring =

  (fcQsciLexerPerl_blockEnd1(self.h, style))

proc blockStart1*(self: QsciLexerPerl, style: ptr cint): cstring =

  (fcQsciLexerPerl_blockStart1(self.h, style))

proc callVirtualBase_metacall(self: QsciLexerPerl, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQsciLexerPerl_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerPerlmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QsciLexerPerl, slot: proc(super: QsciLexerPerlmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPerlmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_metacall(self: ptr cQsciLexerPerl, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerPerl_metacall ".} =
  type Cb = proc(super: QsciLexerPerlmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QsciLexerPerl(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_setFoldComments(self: QsciLexerPerl, fold: bool): void =


  fQsciLexerPerl_virtualbase_setFoldComments(self.h, fold)

type QsciLexerPerlsetFoldCommentsBase* = proc(fold: bool): void
proc onsetFoldComments*(self: QsciLexerPerl, slot: proc(super: QsciLexerPerlsetFoldCommentsBase, fold: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPerlsetFoldCommentsBase, fold: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_setFoldComments(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_setFoldComments(self: ptr cQsciLexerPerl, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerPerl_setFoldComments ".} =
  type Cb = proc(super: QsciLexerPerlsetFoldCommentsBase, fold: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: bool): auto =
    callVirtualBase_setFoldComments(QsciLexerPerl(h: self), fold)
  let slotval1 = fold


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setFoldCompact(self: QsciLexerPerl, fold: bool): void =


  fQsciLexerPerl_virtualbase_setFoldCompact(self.h, fold)

type QsciLexerPerlsetFoldCompactBase* = proc(fold: bool): void
proc onsetFoldCompact*(self: QsciLexerPerl, slot: proc(super: QsciLexerPerlsetFoldCompactBase, fold: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPerlsetFoldCompactBase, fold: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_setFoldCompact(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_setFoldCompact(self: ptr cQsciLexerPerl, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerPerl_setFoldCompact ".} =
  type Cb = proc(super: QsciLexerPerlsetFoldCompactBase, fold: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: bool): auto =
    callVirtualBase_setFoldCompact(QsciLexerPerl(h: self), fold)
  let slotval1 = fold


  nimfunc[](superCall, slotval1)
type QsciLexerPerllanguageBase* = proc(): cstring
proc onlanguage*(self: QsciLexerPerl, slot: proc(): cstring) =
  # TODO check subclass
  type Cb = proc(): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_language(self: ptr cQsciLexerPerl, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerPerl_language ".} =
  type Cb = proc(): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc callVirtualBase_lexer(self: QsciLexerPerl, ): cstring =


  (fQsciLexerPerl_virtualbase_lexer(self.h))

type QsciLexerPerllexerBase* = proc(): cstring
proc onlexer*(self: QsciLexerPerl, slot: proc(super: QsciLexerPerllexerBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPerllexerBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_lexer(self: ptr cQsciLexerPerl, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerPerl_lexer ".} =
  type Cb = proc(super: QsciLexerPerllexerBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexer(QsciLexerPerl(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_lexerId(self: QsciLexerPerl, ): cint =


  fQsciLexerPerl_virtualbase_lexerId(self.h)

type QsciLexerPerllexerIdBase* = proc(): cint
proc onlexerId*(self: QsciLexerPerl, slot: proc(super: QsciLexerPerllexerIdBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPerllexerIdBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_lexerId(self: ptr cQsciLexerPerl, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPerl_lexerId ".} =
  type Cb = proc(super: QsciLexerPerllexerIdBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexerId(QsciLexerPerl(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionFillups(self: QsciLexerPerl, ): cstring =


  (fQsciLexerPerl_virtualbase_autoCompletionFillups(self.h))

type QsciLexerPerlautoCompletionFillupsBase* = proc(): cstring
proc onautoCompletionFillups*(self: QsciLexerPerl, slot: proc(super: QsciLexerPerlautoCompletionFillupsBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPerlautoCompletionFillupsBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_autoCompletionFillups(self: ptr cQsciLexerPerl, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerPerl_autoCompletionFillups ".} =
  type Cb = proc(super: QsciLexerPerlautoCompletionFillupsBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionFillups(QsciLexerPerl(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionWordSeparators(self: QsciLexerPerl, ): seq[string] =


  var v_ma = fQsciLexerPerl_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerPerlautoCompletionWordSeparatorsBase* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: QsciLexerPerl, slot: proc(super: QsciLexerPerlautoCompletionWordSeparatorsBase): seq[string]) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPerlautoCompletionWordSeparatorsBase): seq[string]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_autoCompletionWordSeparators(self: ptr cQsciLexerPerl, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerPerl_autoCompletionWordSeparators ".} =
  type Cb = proc(super: QsciLexerPerlautoCompletionWordSeparatorsBase): seq[string]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionWordSeparators(QsciLexerPerl(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_blockEnd(self: QsciLexerPerl, style: ptr cint): cstring =


  (fQsciLexerPerl_virtualbase_blockEnd(self.h, style))

type QsciLexerPerlblockEndBase* = proc(style: ptr cint): cstring
proc onblockEnd*(self: QsciLexerPerl, slot: proc(super: QsciLexerPerlblockEndBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPerlblockEndBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_blockEnd(self: ptr cQsciLexerPerl, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerPerl_blockEnd ".} =
  type Cb = proc(super: QsciLexerPerlblockEndBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockEnd(QsciLexerPerl(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockLookback(self: QsciLexerPerl, ): cint =


  fQsciLexerPerl_virtualbase_blockLookback(self.h)

type QsciLexerPerlblockLookbackBase* = proc(): cint
proc onblockLookback*(self: QsciLexerPerl, slot: proc(super: QsciLexerPerlblockLookbackBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPerlblockLookbackBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_blockLookback(self: ptr cQsciLexerPerl, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPerl_blockLookback ".} =
  type Cb = proc(super: QsciLexerPerlblockLookbackBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_blockLookback(QsciLexerPerl(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_blockStart(self: QsciLexerPerl, style: ptr cint): cstring =


  (fQsciLexerPerl_virtualbase_blockStart(self.h, style))

type QsciLexerPerlblockStartBase* = proc(style: ptr cint): cstring
proc onblockStart*(self: QsciLexerPerl, slot: proc(super: QsciLexerPerlblockStartBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPerlblockStartBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_blockStart(self: ptr cQsciLexerPerl, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerPerl_blockStart ".} =
  type Cb = proc(super: QsciLexerPerlblockStartBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStart(QsciLexerPerl(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockStartKeyword(self: QsciLexerPerl, style: ptr cint): cstring =


  (fQsciLexerPerl_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerPerlblockStartKeywordBase* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: QsciLexerPerl, slot: proc(super: QsciLexerPerlblockStartKeywordBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPerlblockStartKeywordBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_blockStartKeyword(self: ptr cQsciLexerPerl, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerPerl_blockStartKeyword ".} =
  type Cb = proc(super: QsciLexerPerlblockStartKeywordBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStartKeyword(QsciLexerPerl(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_braceStyle(self: QsciLexerPerl, ): cint =


  fQsciLexerPerl_virtualbase_braceStyle(self.h)

type QsciLexerPerlbraceStyleBase* = proc(): cint
proc onbraceStyle*(self: QsciLexerPerl, slot: proc(super: QsciLexerPerlbraceStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPerlbraceStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_braceStyle(self: ptr cQsciLexerPerl, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPerl_braceStyle ".} =
  type Cb = proc(super: QsciLexerPerlbraceStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_braceStyle(QsciLexerPerl(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_caseSensitive(self: QsciLexerPerl, ): bool =


  fQsciLexerPerl_virtualbase_caseSensitive(self.h)

type QsciLexerPerlcaseSensitiveBase* = proc(): bool
proc oncaseSensitive*(self: QsciLexerPerl, slot: proc(super: QsciLexerPerlcaseSensitiveBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPerlcaseSensitiveBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_caseSensitive(self: ptr cQsciLexerPerl, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerPerl_caseSensitive ".} =
  type Cb = proc(super: QsciLexerPerlcaseSensitiveBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_caseSensitive(QsciLexerPerl(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_color(self: QsciLexerPerl, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerPerl_virtualbase_color(self.h, style))

type QsciLexerPerlcolorBase* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: QsciLexerPerl, slot: proc(super: QsciLexerPerlcolorBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPerlcolorBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_color(self: ptr cQsciLexerPerl, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPerl_color ".} =
  type Cb = proc(super: QsciLexerPerlcolorBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_color(QsciLexerPerl(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_eolFill(self: QsciLexerPerl, style: cint): bool =


  fQsciLexerPerl_virtualbase_eolFill(self.h, style)

type QsciLexerPerleolFillBase* = proc(style: cint): bool
proc oneolFill*(self: QsciLexerPerl, slot: proc(super: QsciLexerPerleolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPerleolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_eolFill(self: ptr cQsciLexerPerl, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerPerl_eolFill ".} =
  type Cb = proc(super: QsciLexerPerleolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_eolFill(QsciLexerPerl(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_font(self: QsciLexerPerl, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerPerl_virtualbase_font(self.h, style))

type QsciLexerPerlfontBase* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: QsciLexerPerl, slot: proc(super: QsciLexerPerlfontBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPerlfontBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_font(self: ptr cQsciLexerPerl, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPerl_font ".} =
  type Cb = proc(super: QsciLexerPerlfontBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_font(QsciLexerPerl(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_indentationGuideView(self: QsciLexerPerl, ): cint =


  fQsciLexerPerl_virtualbase_indentationGuideView(self.h)

type QsciLexerPerlindentationGuideViewBase* = proc(): cint
proc onindentationGuideView*(self: QsciLexerPerl, slot: proc(super: QsciLexerPerlindentationGuideViewBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPerlindentationGuideViewBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_indentationGuideView(self: ptr cQsciLexerPerl, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPerl_indentationGuideView ".} =
  type Cb = proc(super: QsciLexerPerlindentationGuideViewBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_indentationGuideView(QsciLexerPerl(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_keywords(self: QsciLexerPerl, set: cint): cstring =


  (fQsciLexerPerl_virtualbase_keywords(self.h, set))

type QsciLexerPerlkeywordsBase* = proc(set: cint): cstring
proc onkeywords*(self: QsciLexerPerl, slot: proc(super: QsciLexerPerlkeywordsBase, set: cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPerlkeywordsBase, set: cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_keywords(self: ptr cQsciLexerPerl, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerPerl_keywords ".} =
  type Cb = proc(super: QsciLexerPerlkeywordsBase, set: cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(set: cint): auto =
    callVirtualBase_keywords(QsciLexerPerl(h: self), set)
  let slotval1 = set


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultStyle(self: QsciLexerPerl, ): cint =


  fQsciLexerPerl_virtualbase_defaultStyle(self.h)

type QsciLexerPerldefaultStyleBase* = proc(): cint
proc ondefaultStyle*(self: QsciLexerPerl, slot: proc(super: QsciLexerPerldefaultStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPerldefaultStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_defaultStyle(self: ptr cQsciLexerPerl, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPerl_defaultStyle ".} =
  type Cb = proc(super: QsciLexerPerldefaultStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_defaultStyle(QsciLexerPerl(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
type QsciLexerPerldescriptionBase* = proc(style: cint): string
proc ondescription*(self: QsciLexerPerl, slot: proc(style: cint): string) =
  # TODO check subclass
  type Cb = proc(style: cint): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_description(self: ptr cQsciLexerPerl, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerPerl_description ".} =
  type Cb = proc(style: cint): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc callVirtualBase_paper(self: QsciLexerPerl, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerPerl_virtualbase_paper(self.h, style))

type QsciLexerPerlpaperBase* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: QsciLexerPerl, slot: proc(super: QsciLexerPerlpaperBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPerlpaperBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_paper(self: ptr cQsciLexerPerl, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPerl_paper ".} =
  type Cb = proc(super: QsciLexerPerlpaperBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_paper(QsciLexerPerl(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultColorWithStyle(self: QsciLexerPerl, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerPerl_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerPerldefaultColorWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColorWithStyle*(self: QsciLexerPerl, slot: proc(super: QsciLexerPerldefaultColorWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPerldefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_defaultColorWithStyle(self: ptr cQsciLexerPerl, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPerl_defaultColorWithStyle ".} =
  type Cb = proc(super: QsciLexerPerldefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultColorWithStyle(QsciLexerPerl(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultEolFill(self: QsciLexerPerl, style: cint): bool =


  fQsciLexerPerl_virtualbase_defaultEolFill(self.h, style)

type QsciLexerPerldefaultEolFillBase* = proc(style: cint): bool
proc ondefaultEolFill*(self: QsciLexerPerl, slot: proc(super: QsciLexerPerldefaultEolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPerldefaultEolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_defaultEolFill(self: ptr cQsciLexerPerl, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerPerl_defaultEolFill ".} =
  type Cb = proc(super: QsciLexerPerldefaultEolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultEolFill(QsciLexerPerl(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultFontWithStyle(self: QsciLexerPerl, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerPerl_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerPerldefaultFontWithStyleBase* = proc(style: cint): gen_qfont.QFont
proc ondefaultFontWithStyle*(self: QsciLexerPerl, slot: proc(super: QsciLexerPerldefaultFontWithStyleBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPerldefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_defaultFontWithStyle(self: ptr cQsciLexerPerl, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPerl_defaultFontWithStyle ".} =
  type Cb = proc(super: QsciLexerPerldefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultFontWithStyle(QsciLexerPerl(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultPaperWithStyle(self: QsciLexerPerl, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerPerl_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerPerldefaultPaperWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaperWithStyle*(self: QsciLexerPerl, slot: proc(super: QsciLexerPerldefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPerldefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_defaultPaperWithStyle(self: ptr cQsciLexerPerl, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPerl_defaultPaperWithStyle ".} =
  type Cb = proc(super: QsciLexerPerldefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultPaperWithStyle(QsciLexerPerl(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_setEditor(self: QsciLexerPerl, editor: gen_qsciscintilla.QsciScintilla): void =


  fQsciLexerPerl_virtualbase_setEditor(self.h, editor.h)

type QsciLexerPerlsetEditorBase* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: QsciLexerPerl, slot: proc(super: QsciLexerPerlsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPerlsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_setEditor(self: ptr cQsciLexerPerl, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPerl_setEditor ".} =
  type Cb = proc(super: QsciLexerPerlsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qsciscintilla.QsciScintilla): auto =
    callVirtualBase_setEditor(QsciLexerPerl(h: self), editor)
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_refreshProperties(self: QsciLexerPerl, ): void =


  fQsciLexerPerl_virtualbase_refreshProperties(self.h)

type QsciLexerPerlrefreshPropertiesBase* = proc(): void
proc onrefreshProperties*(self: QsciLexerPerl, slot: proc(super: QsciLexerPerlrefreshPropertiesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPerlrefreshPropertiesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_refreshProperties(self: ptr cQsciLexerPerl, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerPerl_refreshProperties ".} =
  type Cb = proc(super: QsciLexerPerlrefreshPropertiesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_refreshProperties(QsciLexerPerl(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_styleBitsNeeded(self: QsciLexerPerl, ): cint =


  fQsciLexerPerl_virtualbase_styleBitsNeeded(self.h)

type QsciLexerPerlstyleBitsNeededBase* = proc(): cint
proc onstyleBitsNeeded*(self: QsciLexerPerl, slot: proc(super: QsciLexerPerlstyleBitsNeededBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPerlstyleBitsNeededBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_styleBitsNeeded(self: ptr cQsciLexerPerl, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPerl_styleBitsNeeded ".} =
  type Cb = proc(super: QsciLexerPerlstyleBitsNeededBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_styleBitsNeeded(QsciLexerPerl(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_wordCharacters(self: QsciLexerPerl, ): cstring =


  (fQsciLexerPerl_virtualbase_wordCharacters(self.h))

type QsciLexerPerlwordCharactersBase* = proc(): cstring
proc onwordCharacters*(self: QsciLexerPerl, slot: proc(super: QsciLexerPerlwordCharactersBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPerlwordCharactersBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_wordCharacters(self: ptr cQsciLexerPerl, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerPerl_wordCharacters ".} =
  type Cb = proc(super: QsciLexerPerlwordCharactersBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_wordCharacters(QsciLexerPerl(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setAutoIndentStyle(self: QsciLexerPerl, autoindentstyle: cint): void =


  fQsciLexerPerl_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerPerlsetAutoIndentStyleBase* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: QsciLexerPerl, slot: proc(super: QsciLexerPerlsetAutoIndentStyleBase, autoindentstyle: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPerlsetAutoIndentStyleBase, autoindentstyle: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_setAutoIndentStyle(self: ptr cQsciLexerPerl, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerPerl_setAutoIndentStyle ".} =
  type Cb = proc(super: QsciLexerPerlsetAutoIndentStyleBase, autoindentstyle: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(autoindentstyle: cint): auto =
    callVirtualBase_setAutoIndentStyle(QsciLexerPerl(h: self), autoindentstyle)
  let slotval1 = autoindentstyle


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setColor(self: QsciLexerPerl, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerPerl_virtualbase_setColor(self.h, c.h, style)

type QsciLexerPerlsetColorBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: QsciLexerPerl, slot: proc(super: QsciLexerPerlsetColorBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPerlsetColorBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_setColor(self: ptr cQsciLexerPerl, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerPerl_setColor ".} =
  type Cb = proc(super: QsciLexerPerlsetColorBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setColor(QsciLexerPerl(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setEolFill(self: QsciLexerPerl, eoffill: bool, style: cint): void =


  fQsciLexerPerl_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerPerlsetEolFillBase* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: QsciLexerPerl, slot: proc(super: QsciLexerPerlsetEolFillBase, eoffill: bool, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPerlsetEolFillBase, eoffill: bool, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_setEolFill(self: ptr cQsciLexerPerl, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerPerl_setEolFill ".} =
  type Cb = proc(super: QsciLexerPerlsetEolFillBase, eoffill: bool, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eoffill: bool, style: cint): auto =
    callVirtualBase_setEolFill(QsciLexerPerl(h: self), eoffill, style)
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setFont(self: QsciLexerPerl, f: gen_qfont.QFont, style: cint): void =


  fQsciLexerPerl_virtualbase_setFont(self.h, f.h, style)

type QsciLexerPerlsetFontBase* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: QsciLexerPerl, slot: proc(super: QsciLexerPerlsetFontBase, f: gen_qfont.QFont, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPerlsetFontBase, f: gen_qfont.QFont, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_setFont(self: ptr cQsciLexerPerl, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerPerl_setFont ".} =
  type Cb = proc(super: QsciLexerPerlsetFontBase, f: gen_qfont.QFont, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(f: gen_qfont.QFont, style: cint): auto =
    callVirtualBase_setFont(QsciLexerPerl(h: self), f, style)
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setPaper(self: QsciLexerPerl, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerPerl_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerPerlsetPaperBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: QsciLexerPerl, slot: proc(super: QsciLexerPerlsetPaperBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPerlsetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_setPaper(self: ptr cQsciLexerPerl, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerPerl_setPaper ".} =
  type Cb = proc(super: QsciLexerPerlsetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setPaper(QsciLexerPerl(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_readProperties(self: QsciLexerPerl, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerPerl_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerPerlreadPropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: QsciLexerPerl, slot: proc(super: QsciLexerPerlreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPerlreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_readProperties(self: ptr cQsciLexerPerl, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerPerl_readProperties ".} =
  type Cb = proc(super: QsciLexerPerlreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_readProperties(QsciLexerPerl(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_writeProperties(self: QsciLexerPerl, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerPerl_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerPerlwritePropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: QsciLexerPerl, slot: proc(super: QsciLexerPerlwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPerlwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_writeProperties(self: ptr cQsciLexerPerl, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerPerl_writeProperties ".} =
  type Cb = proc(super: QsciLexerPerlwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_writeProperties(QsciLexerPerl(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_event(self: QsciLexerPerl, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerPerl_virtualbase_event(self.h, event.h)

type QsciLexerPerleventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QsciLexerPerl, slot: proc(super: QsciLexerPerleventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPerleventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_event(self: ptr cQsciLexerPerl, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerPerl_event ".} =
  type Cb = proc(super: QsciLexerPerleventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QsciLexerPerl(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QsciLexerPerl, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerPerl_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerPerleventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QsciLexerPerl, slot: proc(super: QsciLexerPerleventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPerleventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_eventFilter(self: ptr cQsciLexerPerl, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerPerl_eventFilter ".} =
  type Cb = proc(super: QsciLexerPerleventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QsciLexerPerl(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QsciLexerPerl, event: gen_qcoreevent.QTimerEvent): void =


  fQsciLexerPerl_virtualbase_timerEvent(self.h, event.h)

type QsciLexerPerltimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QsciLexerPerl, slot: proc(super: QsciLexerPerltimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPerltimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_timerEvent(self: ptr cQsciLexerPerl, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPerl_timerEvent ".} =
  type Cb = proc(super: QsciLexerPerltimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QsciLexerPerl(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QsciLexerPerl, event: gen_qcoreevent.QChildEvent): void =


  fQsciLexerPerl_virtualbase_childEvent(self.h, event.h)

type QsciLexerPerlchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QsciLexerPerl, slot: proc(super: QsciLexerPerlchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPerlchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_childEvent(self: ptr cQsciLexerPerl, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPerl_childEvent ".} =
  type Cb = proc(super: QsciLexerPerlchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QsciLexerPerl(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QsciLexerPerl, event: gen_qcoreevent.QEvent): void =


  fQsciLexerPerl_virtualbase_customEvent(self.h, event.h)

type QsciLexerPerlcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QsciLexerPerl, slot: proc(super: QsciLexerPerlcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPerlcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_customEvent(self: ptr cQsciLexerPerl, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPerl_customEvent ".} =
  type Cb = proc(super: QsciLexerPerlcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QsciLexerPerl(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QsciLexerPerl, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerPerl_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerPerlconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QsciLexerPerl, slot: proc(super: QsciLexerPerlconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPerlconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_connectNotify(self: ptr cQsciLexerPerl, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPerl_connectNotify ".} =
  type Cb = proc(super: QsciLexerPerlconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QsciLexerPerl(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QsciLexerPerl, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerPerl_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerPerldisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QsciLexerPerl, slot: proc(super: QsciLexerPerldisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPerldisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPerl_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPerl_disconnectNotify(self: ptr cQsciLexerPerl, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPerl_disconnectNotify ".} =
  type Cb = proc(super: QsciLexerPerldisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QsciLexerPerl(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QsciLexerPerl) =
  fcQsciLexerPerl_delete(self.h)
