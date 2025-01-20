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
{.compile("gen_qscilexerpov.cpp", cflags).}


type QsciLexerPOVEnumEnum* = distinct cint
template Default*(_: type QsciLexerPOVEnumEnum): untyped = 0
template Comment*(_: type QsciLexerPOVEnumEnum): untyped = 1
template CommentLine*(_: type QsciLexerPOVEnumEnum): untyped = 2
template Number*(_: type QsciLexerPOVEnumEnum): untyped = 3
template Operator*(_: type QsciLexerPOVEnumEnum): untyped = 4
template Identifier*(_: type QsciLexerPOVEnumEnum): untyped = 5
template String*(_: type QsciLexerPOVEnumEnum): untyped = 6
template UnclosedString*(_: type QsciLexerPOVEnumEnum): untyped = 7
template Directive*(_: type QsciLexerPOVEnumEnum): untyped = 8
template BadDirective*(_: type QsciLexerPOVEnumEnum): untyped = 9
template ObjectsCSGAppearance*(_: type QsciLexerPOVEnumEnum): untyped = 10
template TypesModifiersItems*(_: type QsciLexerPOVEnumEnum): untyped = 11
template PredefinedIdentifiers*(_: type QsciLexerPOVEnumEnum): untyped = 12
template PredefinedFunctions*(_: type QsciLexerPOVEnumEnum): untyped = 13
template KeywordSet6*(_: type QsciLexerPOVEnumEnum): untyped = 14
template KeywordSet7*(_: type QsciLexerPOVEnumEnum): untyped = 15
template KeywordSet8*(_: type QsciLexerPOVEnumEnum): untyped = 16


import gen_qscilexerpov_types
export gen_qscilexerpov_types

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

type cQsciLexerPOV*{.exportc: "QsciLexerPOV", incompleteStruct.} = object

proc fcQsciLexerPOV_new(): ptr cQsciLexerPOV {.importc: "QsciLexerPOV_new".}
proc fcQsciLexerPOV_new2(parent: pointer): ptr cQsciLexerPOV {.importc: "QsciLexerPOV_new2".}
proc fcQsciLexerPOV_metaObject(self: pointer, ): pointer {.importc: "QsciLexerPOV_metaObject".}
proc fcQsciLexerPOV_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerPOV_metacast".}
proc fcQsciLexerPOV_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerPOV_metacall".}
proc fcQsciLexerPOV_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerPOV_tr".}
proc fcQsciLexerPOV_trUtf8(s: cstring): struct_miqt_string {.importc: "QsciLexerPOV_trUtf8".}
proc fcQsciLexerPOV_language(self: pointer, ): cstring {.importc: "QsciLexerPOV_language".}
proc fcQsciLexerPOV_lexer(self: pointer, ): cstring {.importc: "QsciLexerPOV_lexer".}
proc fcQsciLexerPOV_braceStyle(self: pointer, ): cint {.importc: "QsciLexerPOV_braceStyle".}
proc fcQsciLexerPOV_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerPOV_wordCharacters".}
proc fcQsciLexerPOV_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerPOV_defaultColor".}
proc fcQsciLexerPOV_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerPOV_defaultEolFill".}
proc fcQsciLexerPOV_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerPOV_defaultFont".}
proc fcQsciLexerPOV_defaultPaper(self: pointer, style: cint): pointer {.importc: "QsciLexerPOV_defaultPaper".}
proc fcQsciLexerPOV_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerPOV_keywords".}
proc fcQsciLexerPOV_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerPOV_description".}
proc fcQsciLexerPOV_refreshProperties(self: pointer, ): void {.importc: "QsciLexerPOV_refreshProperties".}
proc fcQsciLexerPOV_foldComments(self: pointer, ): bool {.importc: "QsciLexerPOV_foldComments".}
proc fcQsciLexerPOV_foldCompact(self: pointer, ): bool {.importc: "QsciLexerPOV_foldCompact".}
proc fcQsciLexerPOV_foldDirectives(self: pointer, ): bool {.importc: "QsciLexerPOV_foldDirectives".}
proc fcQsciLexerPOV_setFoldComments(self: pointer, fold: bool): void {.importc: "QsciLexerPOV_setFoldComments".}
proc fcQsciLexerPOV_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerPOV_setFoldCompact".}
proc fcQsciLexerPOV_setFoldDirectives(self: pointer, fold: bool): void {.importc: "QsciLexerPOV_setFoldDirectives".}
proc fcQsciLexerPOV_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerPOV_tr2".}
proc fcQsciLexerPOV_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerPOV_tr3".}
proc fcQsciLexerPOV_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerPOV_trUtf82".}
proc fcQsciLexerPOV_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerPOV_trUtf83".}
proc fQsciLexerPOV_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QsciLexerPOV_virtualbase_metaObject".}
proc fcQsciLexerPOV_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_metaObject".}
proc fQsciLexerPOV_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QsciLexerPOV_virtualbase_metacast".}
proc fcQsciLexerPOV_override_virtual_metacast(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_metacast".}
proc fQsciLexerPOV_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciLexerPOV_virtualbase_metacall".}
proc fcQsciLexerPOV_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_metacall".}
proc fQsciLexerPOV_virtualbase_setFoldComments(self: pointer, fold: bool): void{.importc: "QsciLexerPOV_virtualbase_setFoldComments".}
proc fcQsciLexerPOV_override_virtual_setFoldComments(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_setFoldComments".}
proc fQsciLexerPOV_virtualbase_setFoldCompact(self: pointer, fold: bool): void{.importc: "QsciLexerPOV_virtualbase_setFoldCompact".}
proc fcQsciLexerPOV_override_virtual_setFoldCompact(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_setFoldCompact".}
proc fQsciLexerPOV_virtualbase_setFoldDirectives(self: pointer, fold: bool): void{.importc: "QsciLexerPOV_virtualbase_setFoldDirectives".}
proc fcQsciLexerPOV_override_virtual_setFoldDirectives(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_setFoldDirectives".}
proc fcQsciLexerPOV_override_virtual_language(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_language".}
proc fQsciLexerPOV_virtualbase_lexer(self: pointer, ): cstring{.importc: "QsciLexerPOV_virtualbase_lexer".}
proc fcQsciLexerPOV_override_virtual_lexer(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_lexer".}
proc fQsciLexerPOV_virtualbase_lexerId(self: pointer, ): cint{.importc: "QsciLexerPOV_virtualbase_lexerId".}
proc fcQsciLexerPOV_override_virtual_lexerId(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_lexerId".}
proc fQsciLexerPOV_virtualbase_autoCompletionFillups(self: pointer, ): cstring{.importc: "QsciLexerPOV_virtualbase_autoCompletionFillups".}
proc fcQsciLexerPOV_override_virtual_autoCompletionFillups(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_autoCompletionFillups".}
proc fQsciLexerPOV_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array{.importc: "QsciLexerPOV_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerPOV_override_virtual_autoCompletionWordSeparators(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_autoCompletionWordSeparators".}
proc fQsciLexerPOV_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerPOV_virtualbase_blockEnd".}
proc fcQsciLexerPOV_override_virtual_blockEnd(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_blockEnd".}
proc fQsciLexerPOV_virtualbase_blockLookback(self: pointer, ): cint{.importc: "QsciLexerPOV_virtualbase_blockLookback".}
proc fcQsciLexerPOV_override_virtual_blockLookback(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_blockLookback".}
proc fQsciLexerPOV_virtualbase_blockStart(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerPOV_virtualbase_blockStart".}
proc fcQsciLexerPOV_override_virtual_blockStart(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_blockStart".}
proc fQsciLexerPOV_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerPOV_virtualbase_blockStartKeyword".}
proc fcQsciLexerPOV_override_virtual_blockStartKeyword(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_blockStartKeyword".}
proc fQsciLexerPOV_virtualbase_braceStyle(self: pointer, ): cint{.importc: "QsciLexerPOV_virtualbase_braceStyle".}
proc fcQsciLexerPOV_override_virtual_braceStyle(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_braceStyle".}
proc fQsciLexerPOV_virtualbase_caseSensitive(self: pointer, ): bool{.importc: "QsciLexerPOV_virtualbase_caseSensitive".}
proc fcQsciLexerPOV_override_virtual_caseSensitive(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_caseSensitive".}
proc fQsciLexerPOV_virtualbase_color(self: pointer, style: cint): pointer{.importc: "QsciLexerPOV_virtualbase_color".}
proc fcQsciLexerPOV_override_virtual_color(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_color".}
proc fQsciLexerPOV_virtualbase_eolFill(self: pointer, style: cint): bool{.importc: "QsciLexerPOV_virtualbase_eolFill".}
proc fcQsciLexerPOV_override_virtual_eolFill(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_eolFill".}
proc fQsciLexerPOV_virtualbase_font(self: pointer, style: cint): pointer{.importc: "QsciLexerPOV_virtualbase_font".}
proc fcQsciLexerPOV_override_virtual_font(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_font".}
proc fQsciLexerPOV_virtualbase_indentationGuideView(self: pointer, ): cint{.importc: "QsciLexerPOV_virtualbase_indentationGuideView".}
proc fcQsciLexerPOV_override_virtual_indentationGuideView(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_indentationGuideView".}
proc fQsciLexerPOV_virtualbase_keywords(self: pointer, set: cint): cstring{.importc: "QsciLexerPOV_virtualbase_keywords".}
proc fcQsciLexerPOV_override_virtual_keywords(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_keywords".}
proc fQsciLexerPOV_virtualbase_defaultStyle(self: pointer, ): cint{.importc: "QsciLexerPOV_virtualbase_defaultStyle".}
proc fcQsciLexerPOV_override_virtual_defaultStyle(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_defaultStyle".}
proc fcQsciLexerPOV_override_virtual_description(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_description".}
proc fQsciLexerPOV_virtualbase_paper(self: pointer, style: cint): pointer{.importc: "QsciLexerPOV_virtualbase_paper".}
proc fcQsciLexerPOV_override_virtual_paper(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_paper".}
proc fQsciLexerPOV_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerPOV_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerPOV_override_virtual_defaultColorWithStyle(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_defaultColorWithStyle".}
proc fQsciLexerPOV_virtualbase_defaultEolFill(self: pointer, style: cint): bool{.importc: "QsciLexerPOV_virtualbase_defaultEolFill".}
proc fcQsciLexerPOV_override_virtual_defaultEolFill(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_defaultEolFill".}
proc fQsciLexerPOV_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerPOV_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerPOV_override_virtual_defaultFontWithStyle(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_defaultFontWithStyle".}
proc fQsciLexerPOV_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerPOV_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerPOV_override_virtual_defaultPaperWithStyle(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_defaultPaperWithStyle".}
proc fQsciLexerPOV_virtualbase_setEditor(self: pointer, editor: pointer): void{.importc: "QsciLexerPOV_virtualbase_setEditor".}
proc fcQsciLexerPOV_override_virtual_setEditor(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_setEditor".}
proc fQsciLexerPOV_virtualbase_refreshProperties(self: pointer, ): void{.importc: "QsciLexerPOV_virtualbase_refreshProperties".}
proc fcQsciLexerPOV_override_virtual_refreshProperties(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_refreshProperties".}
proc fQsciLexerPOV_virtualbase_styleBitsNeeded(self: pointer, ): cint{.importc: "QsciLexerPOV_virtualbase_styleBitsNeeded".}
proc fcQsciLexerPOV_override_virtual_styleBitsNeeded(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_styleBitsNeeded".}
proc fQsciLexerPOV_virtualbase_wordCharacters(self: pointer, ): cstring{.importc: "QsciLexerPOV_virtualbase_wordCharacters".}
proc fcQsciLexerPOV_override_virtual_wordCharacters(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_wordCharacters".}
proc fQsciLexerPOV_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void{.importc: "QsciLexerPOV_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerPOV_override_virtual_setAutoIndentStyle(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_setAutoIndentStyle".}
proc fQsciLexerPOV_virtualbase_setColor(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerPOV_virtualbase_setColor".}
proc fcQsciLexerPOV_override_virtual_setColor(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_setColor".}
proc fQsciLexerPOV_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void{.importc: "QsciLexerPOV_virtualbase_setEolFill".}
proc fcQsciLexerPOV_override_virtual_setEolFill(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_setEolFill".}
proc fQsciLexerPOV_virtualbase_setFont(self: pointer, f: pointer, style: cint): void{.importc: "QsciLexerPOV_virtualbase_setFont".}
proc fcQsciLexerPOV_override_virtual_setFont(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_setFont".}
proc fQsciLexerPOV_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerPOV_virtualbase_setPaper".}
proc fcQsciLexerPOV_override_virtual_setPaper(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_setPaper".}
proc fQsciLexerPOV_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerPOV_virtualbase_readProperties".}
proc fcQsciLexerPOV_override_virtual_readProperties(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_readProperties".}
proc fQsciLexerPOV_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerPOV_virtualbase_writeProperties".}
proc fcQsciLexerPOV_override_virtual_writeProperties(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_writeProperties".}
proc fQsciLexerPOV_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QsciLexerPOV_virtualbase_event".}
proc fcQsciLexerPOV_override_virtual_event(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_event".}
proc fQsciLexerPOV_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciLexerPOV_virtualbase_eventFilter".}
proc fcQsciLexerPOV_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_eventFilter".}
proc fQsciLexerPOV_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciLexerPOV_virtualbase_timerEvent".}
proc fcQsciLexerPOV_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_timerEvent".}
proc fQsciLexerPOV_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciLexerPOV_virtualbase_childEvent".}
proc fcQsciLexerPOV_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_childEvent".}
proc fQsciLexerPOV_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciLexerPOV_virtualbase_customEvent".}
proc fcQsciLexerPOV_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_customEvent".}
proc fQsciLexerPOV_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerPOV_virtualbase_connectNotify".}
proc fcQsciLexerPOV_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_connectNotify".}
proc fQsciLexerPOV_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerPOV_virtualbase_disconnectNotify".}
proc fcQsciLexerPOV_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_disconnectNotify".}
proc fcQsciLexerPOV_staticMetaObject(): pointer {.importc: "QsciLexerPOV_staticMetaObject".}
proc fcQsciLexerPOV_delete(self: pointer) {.importc: "QsciLexerPOV_delete".}


func init*(T: type gen_qscilexerpov_types.QsciLexerPOV, h: ptr cQsciLexerPOV): gen_qscilexerpov_types.QsciLexerPOV =
  T(h: h)
proc create*(T: type gen_qscilexerpov_types.QsciLexerPOV, ): gen_qscilexerpov_types.QsciLexerPOV =
  gen_qscilexerpov_types.QsciLexerPOV.init(fcQsciLexerPOV_new())

proc create*(T: type gen_qscilexerpov_types.QsciLexerPOV, parent: gen_qobject.QObject): gen_qscilexerpov_types.QsciLexerPOV =
  gen_qscilexerpov_types.QsciLexerPOV.init(fcQsciLexerPOV_new2(parent.h))

proc metaObject*(self: gen_qscilexerpov_types.QsciLexerPOV, ): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerPOV_metaObject(self.h))

proc metacast*(self: gen_qscilexerpov_types.QsciLexerPOV, param1: cstring): pointer =
  fcQsciLexerPOV_metacast(self.h, param1)

proc metacall*(self: gen_qscilexerpov_types.QsciLexerPOV, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerPOV_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexerpov_types.QsciLexerPOV, s: cstring): string =
  let v_ms = fcQsciLexerPOV_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexerpov_types.QsciLexerPOV, s: cstring): string =
  let v_ms = fcQsciLexerPOV_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexerpov_types.QsciLexerPOV, ): cstring =
  (fcQsciLexerPOV_language(self.h))

proc lexer*(self: gen_qscilexerpov_types.QsciLexerPOV, ): cstring =
  (fcQsciLexerPOV_lexer(self.h))

proc braceStyle*(self: gen_qscilexerpov_types.QsciLexerPOV, ): cint =
  fcQsciLexerPOV_braceStyle(self.h)

proc wordCharacters*(self: gen_qscilexerpov_types.QsciLexerPOV, ): cstring =
  (fcQsciLexerPOV_wordCharacters(self.h))

proc defaultColor*(self: gen_qscilexerpov_types.QsciLexerPOV, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fcQsciLexerPOV_defaultColor(self.h, style))

proc defaultEolFill*(self: gen_qscilexerpov_types.QsciLexerPOV, style: cint): bool =
  fcQsciLexerPOV_defaultEolFill(self.h, style)

proc defaultFont*(self: gen_qscilexerpov_types.QsciLexerPOV, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fcQsciLexerPOV_defaultFont(self.h, style))

proc defaultPaper*(self: gen_qscilexerpov_types.QsciLexerPOV, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fcQsciLexerPOV_defaultPaper(self.h, style))

proc keywords*(self: gen_qscilexerpov_types.QsciLexerPOV, set: cint): cstring =
  (fcQsciLexerPOV_keywords(self.h, set))

proc description*(self: gen_qscilexerpov_types.QsciLexerPOV, style: cint): string =
  let v_ms = fcQsciLexerPOV_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: gen_qscilexerpov_types.QsciLexerPOV, ): void =
  fcQsciLexerPOV_refreshProperties(self.h)

proc foldComments*(self: gen_qscilexerpov_types.QsciLexerPOV, ): bool =
  fcQsciLexerPOV_foldComments(self.h)

proc foldCompact*(self: gen_qscilexerpov_types.QsciLexerPOV, ): bool =
  fcQsciLexerPOV_foldCompact(self.h)

proc foldDirectives*(self: gen_qscilexerpov_types.QsciLexerPOV, ): bool =
  fcQsciLexerPOV_foldDirectives(self.h)

proc setFoldComments*(self: gen_qscilexerpov_types.QsciLexerPOV, fold: bool): void =
  fcQsciLexerPOV_setFoldComments(self.h, fold)

proc setFoldCompact*(self: gen_qscilexerpov_types.QsciLexerPOV, fold: bool): void =
  fcQsciLexerPOV_setFoldCompact(self.h, fold)

proc setFoldDirectives*(self: gen_qscilexerpov_types.QsciLexerPOV, fold: bool): void =
  fcQsciLexerPOV_setFoldDirectives(self.h, fold)

proc tr*(_: type gen_qscilexerpov_types.QsciLexerPOV, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerPOV_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexerpov_types.QsciLexerPOV, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerPOV_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexerpov_types.QsciLexerPOV, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerPOV_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexerpov_types.QsciLexerPOV, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerPOV_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QsciLexerPOVmetaObject*(self: gen_qscilexerpov_types.QsciLexerPOV, ): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fQsciLexerPOV_virtualbase_metaObject(self.h))

type QsciLexerPOVmetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qscilexerpov_types.QsciLexerPOV, slot: QsciLexerPOVmetaObjectProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOVmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_metaObject(self: ptr cQsciLexerPOV, slot: int): pointer {.exportc: "miqt_exec_callback_QsciLexerPOV_metaObject ".} =
  var nimfunc = cast[ptr QsciLexerPOVmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QsciLexerPOVmetacast*(self: gen_qscilexerpov_types.QsciLexerPOV, param1: cstring): pointer =
  fQsciLexerPOV_virtualbase_metacast(self.h, param1)

type QsciLexerPOVmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qscilexerpov_types.QsciLexerPOV, slot: QsciLexerPOVmetacastProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOVmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_metacast(self: ptr cQsciLexerPOV, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciLexerPOV_metacast ".} =
  var nimfunc = cast[ptr QsciLexerPOVmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerPOVmetacall*(self: gen_qscilexerpov_types.QsciLexerPOV, param1: cint, param2: cint, param3: pointer): cint =
  fQsciLexerPOV_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerPOVmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qscilexerpov_types.QsciLexerPOV, slot: QsciLexerPOVmetacallProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOVmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_metacall(self: ptr cQsciLexerPOV, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerPOV_metacall ".} =
  var nimfunc = cast[ptr QsciLexerPOVmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QsciLexerPOVsetFoldComments*(self: gen_qscilexerpov_types.QsciLexerPOV, fold: bool): void =
  fQsciLexerPOV_virtualbase_setFoldComments(self.h, fold)

type QsciLexerPOVsetFoldCommentsProc* = proc(fold: bool): void
proc onsetFoldComments*(self: gen_qscilexerpov_types.QsciLexerPOV, slot: QsciLexerPOVsetFoldCommentsProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOVsetFoldCommentsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_setFoldComments(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_setFoldComments(self: ptr cQsciLexerPOV, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerPOV_setFoldComments ".} =
  var nimfunc = cast[ptr QsciLexerPOVsetFoldCommentsProc](cast[pointer](slot))
  let slotval1 = fold


  nimfunc[](slotval1)
proc QsciLexerPOVsetFoldCompact*(self: gen_qscilexerpov_types.QsciLexerPOV, fold: bool): void =
  fQsciLexerPOV_virtualbase_setFoldCompact(self.h, fold)

type QsciLexerPOVsetFoldCompactProc* = proc(fold: bool): void
proc onsetFoldCompact*(self: gen_qscilexerpov_types.QsciLexerPOV, slot: QsciLexerPOVsetFoldCompactProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOVsetFoldCompactProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_setFoldCompact(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_setFoldCompact(self: ptr cQsciLexerPOV, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerPOV_setFoldCompact ".} =
  var nimfunc = cast[ptr QsciLexerPOVsetFoldCompactProc](cast[pointer](slot))
  let slotval1 = fold


  nimfunc[](slotval1)
proc QsciLexerPOVsetFoldDirectives*(self: gen_qscilexerpov_types.QsciLexerPOV, fold: bool): void =
  fQsciLexerPOV_virtualbase_setFoldDirectives(self.h, fold)

type QsciLexerPOVsetFoldDirectivesProc* = proc(fold: bool): void
proc onsetFoldDirectives*(self: gen_qscilexerpov_types.QsciLexerPOV, slot: QsciLexerPOVsetFoldDirectivesProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOVsetFoldDirectivesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_setFoldDirectives(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_setFoldDirectives(self: ptr cQsciLexerPOV, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerPOV_setFoldDirectives ".} =
  var nimfunc = cast[ptr QsciLexerPOVsetFoldDirectivesProc](cast[pointer](slot))
  let slotval1 = fold


  nimfunc[](slotval1)
type QsciLexerPOVlanguageProc* = proc(): cstring
proc onlanguage*(self: gen_qscilexerpov_types.QsciLexerPOV, slot: QsciLexerPOVlanguageProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOVlanguageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_language(self: ptr cQsciLexerPOV, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerPOV_language ".} =
  var nimfunc = cast[ptr QsciLexerPOVlanguageProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPOVlexer*(self: gen_qscilexerpov_types.QsciLexerPOV, ): cstring =
  (fQsciLexerPOV_virtualbase_lexer(self.h))

type QsciLexerPOVlexerProc* = proc(): cstring
proc onlexer*(self: gen_qscilexerpov_types.QsciLexerPOV, slot: QsciLexerPOVlexerProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOVlexerProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_lexer(self: ptr cQsciLexerPOV, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerPOV_lexer ".} =
  var nimfunc = cast[ptr QsciLexerPOVlexerProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPOVlexerId*(self: gen_qscilexerpov_types.QsciLexerPOV, ): cint =
  fQsciLexerPOV_virtualbase_lexerId(self.h)

type QsciLexerPOVlexerIdProc* = proc(): cint
proc onlexerId*(self: gen_qscilexerpov_types.QsciLexerPOV, slot: QsciLexerPOVlexerIdProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOVlexerIdProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_lexerId(self: ptr cQsciLexerPOV, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPOV_lexerId ".} =
  var nimfunc = cast[ptr QsciLexerPOVlexerIdProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPOVautoCompletionFillups*(self: gen_qscilexerpov_types.QsciLexerPOV, ): cstring =
  (fQsciLexerPOV_virtualbase_autoCompletionFillups(self.h))

type QsciLexerPOVautoCompletionFillupsProc* = proc(): cstring
proc onautoCompletionFillups*(self: gen_qscilexerpov_types.QsciLexerPOV, slot: QsciLexerPOVautoCompletionFillupsProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOVautoCompletionFillupsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_autoCompletionFillups(self: ptr cQsciLexerPOV, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerPOV_autoCompletionFillups ".} =
  var nimfunc = cast[ptr QsciLexerPOVautoCompletionFillupsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPOVautoCompletionWordSeparators*(self: gen_qscilexerpov_types.QsciLexerPOV, ): seq[string] =
  var v_ma = fQsciLexerPOV_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerPOVautoCompletionWordSeparatorsProc* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: gen_qscilexerpov_types.QsciLexerPOV, slot: QsciLexerPOVautoCompletionWordSeparatorsProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOVautoCompletionWordSeparatorsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_autoCompletionWordSeparators(self: ptr cQsciLexerPOV, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerPOV_autoCompletionWordSeparators ".} =
  var nimfunc = cast[ptr QsciLexerPOVautoCompletionWordSeparatorsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QsciLexerPOVblockEnd*(self: gen_qscilexerpov_types.QsciLexerPOV, style: ptr cint): cstring =
  (fQsciLexerPOV_virtualbase_blockEnd(self.h, style))

type QsciLexerPOVblockEndProc* = proc(style: ptr cint): cstring
proc onblockEnd*(self: gen_qscilexerpov_types.QsciLexerPOV, slot: QsciLexerPOVblockEndProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOVblockEndProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_blockEnd(self: ptr cQsciLexerPOV, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerPOV_blockEnd ".} =
  var nimfunc = cast[ptr QsciLexerPOVblockEndProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerPOVblockLookback*(self: gen_qscilexerpov_types.QsciLexerPOV, ): cint =
  fQsciLexerPOV_virtualbase_blockLookback(self.h)

type QsciLexerPOVblockLookbackProc* = proc(): cint
proc onblockLookback*(self: gen_qscilexerpov_types.QsciLexerPOV, slot: QsciLexerPOVblockLookbackProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOVblockLookbackProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_blockLookback(self: ptr cQsciLexerPOV, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPOV_blockLookback ".} =
  var nimfunc = cast[ptr QsciLexerPOVblockLookbackProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPOVblockStart*(self: gen_qscilexerpov_types.QsciLexerPOV, style: ptr cint): cstring =
  (fQsciLexerPOV_virtualbase_blockStart(self.h, style))

type QsciLexerPOVblockStartProc* = proc(style: ptr cint): cstring
proc onblockStart*(self: gen_qscilexerpov_types.QsciLexerPOV, slot: QsciLexerPOVblockStartProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOVblockStartProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_blockStart(self: ptr cQsciLexerPOV, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerPOV_blockStart ".} =
  var nimfunc = cast[ptr QsciLexerPOVblockStartProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerPOVblockStartKeyword*(self: gen_qscilexerpov_types.QsciLexerPOV, style: ptr cint): cstring =
  (fQsciLexerPOV_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerPOVblockStartKeywordProc* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: gen_qscilexerpov_types.QsciLexerPOV, slot: QsciLexerPOVblockStartKeywordProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOVblockStartKeywordProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_blockStartKeyword(self: ptr cQsciLexerPOV, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerPOV_blockStartKeyword ".} =
  var nimfunc = cast[ptr QsciLexerPOVblockStartKeywordProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerPOVbraceStyle*(self: gen_qscilexerpov_types.QsciLexerPOV, ): cint =
  fQsciLexerPOV_virtualbase_braceStyle(self.h)

type QsciLexerPOVbraceStyleProc* = proc(): cint
proc onbraceStyle*(self: gen_qscilexerpov_types.QsciLexerPOV, slot: QsciLexerPOVbraceStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOVbraceStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_braceStyle(self: ptr cQsciLexerPOV, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPOV_braceStyle ".} =
  var nimfunc = cast[ptr QsciLexerPOVbraceStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPOVcaseSensitive*(self: gen_qscilexerpov_types.QsciLexerPOV, ): bool =
  fQsciLexerPOV_virtualbase_caseSensitive(self.h)

type QsciLexerPOVcaseSensitiveProc* = proc(): bool
proc oncaseSensitive*(self: gen_qscilexerpov_types.QsciLexerPOV, slot: QsciLexerPOVcaseSensitiveProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOVcaseSensitiveProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_caseSensitive(self: ptr cQsciLexerPOV, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerPOV_caseSensitive ".} =
  var nimfunc = cast[ptr QsciLexerPOVcaseSensitiveProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPOVcolor*(self: gen_qscilexerpov_types.QsciLexerPOV, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerPOV_virtualbase_color(self.h, style))

type QsciLexerPOVcolorProc* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: gen_qscilexerpov_types.QsciLexerPOV, slot: QsciLexerPOVcolorProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOVcolorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_color(self: ptr cQsciLexerPOV, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPOV_color ".} =
  var nimfunc = cast[ptr QsciLexerPOVcolorProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerPOVeolFill*(self: gen_qscilexerpov_types.QsciLexerPOV, style: cint): bool =
  fQsciLexerPOV_virtualbase_eolFill(self.h, style)

type QsciLexerPOVeolFillProc* = proc(style: cint): bool
proc oneolFill*(self: gen_qscilexerpov_types.QsciLexerPOV, slot: QsciLexerPOVeolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOVeolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_eolFill(self: ptr cQsciLexerPOV, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerPOV_eolFill ".} =
  var nimfunc = cast[ptr QsciLexerPOVeolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerPOVfont*(self: gen_qscilexerpov_types.QsciLexerPOV, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fQsciLexerPOV_virtualbase_font(self.h, style))

type QsciLexerPOVfontProc* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: gen_qscilexerpov_types.QsciLexerPOV, slot: QsciLexerPOVfontProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOVfontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_font(self: ptr cQsciLexerPOV, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPOV_font ".} =
  var nimfunc = cast[ptr QsciLexerPOVfontProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerPOVindentationGuideView*(self: gen_qscilexerpov_types.QsciLexerPOV, ): cint =
  fQsciLexerPOV_virtualbase_indentationGuideView(self.h)

type QsciLexerPOVindentationGuideViewProc* = proc(): cint
proc onindentationGuideView*(self: gen_qscilexerpov_types.QsciLexerPOV, slot: QsciLexerPOVindentationGuideViewProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOVindentationGuideViewProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_indentationGuideView(self: ptr cQsciLexerPOV, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPOV_indentationGuideView ".} =
  var nimfunc = cast[ptr QsciLexerPOVindentationGuideViewProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPOVkeywords*(self: gen_qscilexerpov_types.QsciLexerPOV, set: cint): cstring =
  (fQsciLexerPOV_virtualbase_keywords(self.h, set))

type QsciLexerPOVkeywordsProc* = proc(set: cint): cstring
proc onkeywords*(self: gen_qscilexerpov_types.QsciLexerPOV, slot: QsciLexerPOVkeywordsProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOVkeywordsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_keywords(self: ptr cQsciLexerPOV, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerPOV_keywords ".} =
  var nimfunc = cast[ptr QsciLexerPOVkeywordsProc](cast[pointer](slot))
  let slotval1 = set


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerPOVdefaultStyle*(self: gen_qscilexerpov_types.QsciLexerPOV, ): cint =
  fQsciLexerPOV_virtualbase_defaultStyle(self.h)

type QsciLexerPOVdefaultStyleProc* = proc(): cint
proc ondefaultStyle*(self: gen_qscilexerpov_types.QsciLexerPOV, slot: QsciLexerPOVdefaultStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOVdefaultStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_defaultStyle(self: ptr cQsciLexerPOV, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPOV_defaultStyle ".} =
  var nimfunc = cast[ptr QsciLexerPOVdefaultStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QsciLexerPOVdescriptionProc* = proc(style: cint): string
proc ondescription*(self: gen_qscilexerpov_types.QsciLexerPOV, slot: QsciLexerPOVdescriptionProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOVdescriptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_description(self: ptr cQsciLexerPOV, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerPOV_description ".} =
  var nimfunc = cast[ptr QsciLexerPOVdescriptionProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc QsciLexerPOVpaper*(self: gen_qscilexerpov_types.QsciLexerPOV, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerPOV_virtualbase_paper(self.h, style))

type QsciLexerPOVpaperProc* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: gen_qscilexerpov_types.QsciLexerPOV, slot: QsciLexerPOVpaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOVpaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_paper(self: ptr cQsciLexerPOV, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPOV_paper ".} =
  var nimfunc = cast[ptr QsciLexerPOVpaperProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerPOVdefaultColor*(self: gen_qscilexerpov_types.QsciLexerPOV, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerPOV_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerPOVdefaultColorWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColor*(self: gen_qscilexerpov_types.QsciLexerPOV, slot: QsciLexerPOVdefaultColorWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOVdefaultColorWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_defaultColorWithStyle(self: ptr cQsciLexerPOV, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPOV_defaultColorWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerPOVdefaultColorWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerPOVdefaultEolFill*(self: gen_qscilexerpov_types.QsciLexerPOV, style: cint): bool =
  fQsciLexerPOV_virtualbase_defaultEolFill(self.h, style)

type QsciLexerPOVdefaultEolFillProc* = proc(style: cint): bool
proc ondefaultEolFill*(self: gen_qscilexerpov_types.QsciLexerPOV, slot: QsciLexerPOVdefaultEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOVdefaultEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_defaultEolFill(self: ptr cQsciLexerPOV, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerPOV_defaultEolFill ".} =
  var nimfunc = cast[ptr QsciLexerPOVdefaultEolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerPOVdefaultFont*(self: gen_qscilexerpov_types.QsciLexerPOV, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fQsciLexerPOV_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerPOVdefaultFontWithStyleProc* = proc(style: cint): gen_qfont.QFont
proc ondefaultFont*(self: gen_qscilexerpov_types.QsciLexerPOV, slot: QsciLexerPOVdefaultFontWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOVdefaultFontWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_defaultFontWithStyle(self: ptr cQsciLexerPOV, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPOV_defaultFontWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerPOVdefaultFontWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerPOVdefaultPaper*(self: gen_qscilexerpov_types.QsciLexerPOV, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerPOV_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerPOVdefaultPaperWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaper*(self: gen_qscilexerpov_types.QsciLexerPOV, slot: QsciLexerPOVdefaultPaperWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOVdefaultPaperWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_defaultPaperWithStyle(self: ptr cQsciLexerPOV, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPOV_defaultPaperWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerPOVdefaultPaperWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerPOVsetEditor*(self: gen_qscilexerpov_types.QsciLexerPOV, editor: gen_qsciscintilla.QsciScintilla): void =
  fQsciLexerPOV_virtualbase_setEditor(self.h, editor.h)

type QsciLexerPOVsetEditorProc* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: gen_qscilexerpov_types.QsciLexerPOV, slot: QsciLexerPOVsetEditorProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOVsetEditorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_setEditor(self: ptr cQsciLexerPOV, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPOV_setEditor ".} =
  var nimfunc = cast[ptr QsciLexerPOVsetEditorProc](cast[pointer](slot))
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](slotval1)
proc QsciLexerPOVrefreshProperties*(self: gen_qscilexerpov_types.QsciLexerPOV, ): void =
  fQsciLexerPOV_virtualbase_refreshProperties(self.h)

type QsciLexerPOVrefreshPropertiesProc* = proc(): void
proc onrefreshProperties*(self: gen_qscilexerpov_types.QsciLexerPOV, slot: QsciLexerPOVrefreshPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOVrefreshPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_refreshProperties(self: ptr cQsciLexerPOV, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerPOV_refreshProperties ".} =
  var nimfunc = cast[ptr QsciLexerPOVrefreshPropertiesProc](cast[pointer](slot))

  nimfunc[]()
proc QsciLexerPOVstyleBitsNeeded*(self: gen_qscilexerpov_types.QsciLexerPOV, ): cint =
  fQsciLexerPOV_virtualbase_styleBitsNeeded(self.h)

type QsciLexerPOVstyleBitsNeededProc* = proc(): cint
proc onstyleBitsNeeded*(self: gen_qscilexerpov_types.QsciLexerPOV, slot: QsciLexerPOVstyleBitsNeededProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOVstyleBitsNeededProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_styleBitsNeeded(self: ptr cQsciLexerPOV, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPOV_styleBitsNeeded ".} =
  var nimfunc = cast[ptr QsciLexerPOVstyleBitsNeededProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPOVwordCharacters*(self: gen_qscilexerpov_types.QsciLexerPOV, ): cstring =
  (fQsciLexerPOV_virtualbase_wordCharacters(self.h))

type QsciLexerPOVwordCharactersProc* = proc(): cstring
proc onwordCharacters*(self: gen_qscilexerpov_types.QsciLexerPOV, slot: QsciLexerPOVwordCharactersProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOVwordCharactersProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_wordCharacters(self: ptr cQsciLexerPOV, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerPOV_wordCharacters ".} =
  var nimfunc = cast[ptr QsciLexerPOVwordCharactersProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPOVsetAutoIndentStyle*(self: gen_qscilexerpov_types.QsciLexerPOV, autoindentstyle: cint): void =
  fQsciLexerPOV_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerPOVsetAutoIndentStyleProc* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: gen_qscilexerpov_types.QsciLexerPOV, slot: QsciLexerPOVsetAutoIndentStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOVsetAutoIndentStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_setAutoIndentStyle(self: ptr cQsciLexerPOV, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerPOV_setAutoIndentStyle ".} =
  var nimfunc = cast[ptr QsciLexerPOVsetAutoIndentStyleProc](cast[pointer](slot))
  let slotval1 = autoindentstyle


  nimfunc[](slotval1)
proc QsciLexerPOVsetColor*(self: gen_qscilexerpov_types.QsciLexerPOV, c: gen_qcolor.QColor, style: cint): void =
  fQsciLexerPOV_virtualbase_setColor(self.h, c.h, style)

type QsciLexerPOVsetColorProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: gen_qscilexerpov_types.QsciLexerPOV, slot: QsciLexerPOVsetColorProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOVsetColorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_setColor(self: ptr cQsciLexerPOV, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerPOV_setColor ".} =
  var nimfunc = cast[ptr QsciLexerPOVsetColorProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerPOVsetEolFill*(self: gen_qscilexerpov_types.QsciLexerPOV, eoffill: bool, style: cint): void =
  fQsciLexerPOV_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerPOVsetEolFillProc* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: gen_qscilexerpov_types.QsciLexerPOV, slot: QsciLexerPOVsetEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOVsetEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_setEolFill(self: ptr cQsciLexerPOV, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerPOV_setEolFill ".} =
  var nimfunc = cast[ptr QsciLexerPOVsetEolFillProc](cast[pointer](slot))
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerPOVsetFont*(self: gen_qscilexerpov_types.QsciLexerPOV, f: gen_qfont.QFont, style: cint): void =
  fQsciLexerPOV_virtualbase_setFont(self.h, f.h, style)

type QsciLexerPOVsetFontProc* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: gen_qscilexerpov_types.QsciLexerPOV, slot: QsciLexerPOVsetFontProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOVsetFontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_setFont(self: ptr cQsciLexerPOV, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerPOV_setFont ".} =
  var nimfunc = cast[ptr QsciLexerPOVsetFontProc](cast[pointer](slot))
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerPOVsetPaper*(self: gen_qscilexerpov_types.QsciLexerPOV, c: gen_qcolor.QColor, style: cint): void =
  fQsciLexerPOV_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerPOVsetPaperProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: gen_qscilexerpov_types.QsciLexerPOV, slot: QsciLexerPOVsetPaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOVsetPaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_setPaper(self: ptr cQsciLexerPOV, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerPOV_setPaper ".} =
  var nimfunc = cast[ptr QsciLexerPOVsetPaperProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerPOVreadProperties*(self: gen_qscilexerpov_types.QsciLexerPOV, qs: gen_qsettings.QSettings, prefix: string): bool =
  fQsciLexerPOV_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerPOVreadPropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: gen_qscilexerpov_types.QsciLexerPOV, slot: QsciLexerPOVreadPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOVreadPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_readProperties(self: ptr cQsciLexerPOV, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerPOV_readProperties ".} =
  var nimfunc = cast[ptr QsciLexerPOVreadPropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerPOVwriteProperties*(self: gen_qscilexerpov_types.QsciLexerPOV, qs: gen_qsettings.QSettings, prefix: string): bool =
  fQsciLexerPOV_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerPOVwritePropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: gen_qscilexerpov_types.QsciLexerPOV, slot: QsciLexerPOVwritePropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOVwritePropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_writeProperties(self: ptr cQsciLexerPOV, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerPOV_writeProperties ".} =
  var nimfunc = cast[ptr QsciLexerPOVwritePropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerPOVevent*(self: gen_qscilexerpov_types.QsciLexerPOV, event: gen_qcoreevent.QEvent): bool =
  fQsciLexerPOV_virtualbase_event(self.h, event.h)

type QsciLexerPOVeventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qscilexerpov_types.QsciLexerPOV, slot: QsciLexerPOVeventProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOVeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_event(self: ptr cQsciLexerPOV, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerPOV_event ".} =
  var nimfunc = cast[ptr QsciLexerPOVeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerPOVeventFilter*(self: gen_qscilexerpov_types.QsciLexerPOV, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =
  fQsciLexerPOV_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerPOVeventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qscilexerpov_types.QsciLexerPOV, slot: QsciLexerPOVeventFilterProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOVeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_eventFilter(self: ptr cQsciLexerPOV, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerPOV_eventFilter ".} =
  var nimfunc = cast[ptr QsciLexerPOVeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerPOVtimerEvent*(self: gen_qscilexerpov_types.QsciLexerPOV, event: gen_qcoreevent.QTimerEvent): void =
  fQsciLexerPOV_virtualbase_timerEvent(self.h, event.h)

type QsciLexerPOVtimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qscilexerpov_types.QsciLexerPOV, slot: QsciLexerPOVtimerEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOVtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_timerEvent(self: ptr cQsciLexerPOV, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPOV_timerEvent ".} =
  var nimfunc = cast[ptr QsciLexerPOVtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerPOVchildEvent*(self: gen_qscilexerpov_types.QsciLexerPOV, event: gen_qcoreevent.QChildEvent): void =
  fQsciLexerPOV_virtualbase_childEvent(self.h, event.h)

type QsciLexerPOVchildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qscilexerpov_types.QsciLexerPOV, slot: QsciLexerPOVchildEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOVchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_childEvent(self: ptr cQsciLexerPOV, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPOV_childEvent ".} =
  var nimfunc = cast[ptr QsciLexerPOVchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerPOVcustomEvent*(self: gen_qscilexerpov_types.QsciLexerPOV, event: gen_qcoreevent.QEvent): void =
  fQsciLexerPOV_virtualbase_customEvent(self.h, event.h)

type QsciLexerPOVcustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qscilexerpov_types.QsciLexerPOV, slot: QsciLexerPOVcustomEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOVcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_customEvent(self: ptr cQsciLexerPOV, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPOV_customEvent ".} =
  var nimfunc = cast[ptr QsciLexerPOVcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerPOVconnectNotify*(self: gen_qscilexerpov_types.QsciLexerPOV, signal: gen_qmetaobject.QMetaMethod): void =
  fQsciLexerPOV_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerPOVconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qscilexerpov_types.QsciLexerPOV, slot: QsciLexerPOVconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOVconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_connectNotify(self: ptr cQsciLexerPOV, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPOV_connectNotify ".} =
  var nimfunc = cast[ptr QsciLexerPOVconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QsciLexerPOVdisconnectNotify*(self: gen_qscilexerpov_types.QsciLexerPOV, signal: gen_qmetaobject.QMetaMethod): void =
  fQsciLexerPOV_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerPOVdisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qscilexerpov_types.QsciLexerPOV, slot: QsciLexerPOVdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOVdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_disconnectNotify(self: ptr cQsciLexerPOV, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPOV_disconnectNotify ".} =
  var nimfunc = cast[ptr QsciLexerPOVdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qscilexerpov_types.QsciLexerPOV): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerPOV_staticMetaObject())
proc delete*(self: gen_qscilexerpov_types.QsciLexerPOV) =
  fcQsciLexerPOV_delete(self.h)
