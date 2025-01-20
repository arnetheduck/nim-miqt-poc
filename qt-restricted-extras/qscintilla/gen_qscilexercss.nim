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
{.compile("gen_qscilexercss.cpp", cflags).}


type QsciLexerCSSEnumEnum* = distinct cint
template Default*(_: type QsciLexerCSSEnumEnum): untyped = 0
template Tag*(_: type QsciLexerCSSEnumEnum): untyped = 1
template ClassSelector*(_: type QsciLexerCSSEnumEnum): untyped = 2
template PseudoClass*(_: type QsciLexerCSSEnumEnum): untyped = 3
template UnknownPseudoClass*(_: type QsciLexerCSSEnumEnum): untyped = 4
template Operator*(_: type QsciLexerCSSEnumEnum): untyped = 5
template CSS1Property*(_: type QsciLexerCSSEnumEnum): untyped = 6
template UnknownProperty*(_: type QsciLexerCSSEnumEnum): untyped = 7
template Value*(_: type QsciLexerCSSEnumEnum): untyped = 8
template Comment*(_: type QsciLexerCSSEnumEnum): untyped = 9
template IDSelector*(_: type QsciLexerCSSEnumEnum): untyped = 10
template Important*(_: type QsciLexerCSSEnumEnum): untyped = 11
template AtRule*(_: type QsciLexerCSSEnumEnum): untyped = 12
template DoubleQuotedString*(_: type QsciLexerCSSEnumEnum): untyped = 13
template SingleQuotedString*(_: type QsciLexerCSSEnumEnum): untyped = 14
template CSS2Property*(_: type QsciLexerCSSEnumEnum): untyped = 15
template Attribute*(_: type QsciLexerCSSEnumEnum): untyped = 16
template CSS3Property*(_: type QsciLexerCSSEnumEnum): untyped = 17
template PseudoElement*(_: type QsciLexerCSSEnumEnum): untyped = 18
template ExtendedCSSProperty*(_: type QsciLexerCSSEnumEnum): untyped = 19
template ExtendedPseudoClass*(_: type QsciLexerCSSEnumEnum): untyped = 20
template ExtendedPseudoElement*(_: type QsciLexerCSSEnumEnum): untyped = 21
template MediaRule*(_: type QsciLexerCSSEnumEnum): untyped = 22
template Variable*(_: type QsciLexerCSSEnumEnum): untyped = 23


import gen_qscilexercss_types
export gen_qscilexercss_types

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

type cQsciLexerCSS*{.exportc: "QsciLexerCSS", incompleteStruct.} = object

proc fcQsciLexerCSS_new(): ptr cQsciLexerCSS {.importc: "QsciLexerCSS_new".}
proc fcQsciLexerCSS_new2(parent: pointer): ptr cQsciLexerCSS {.importc: "QsciLexerCSS_new2".}
proc fcQsciLexerCSS_metaObject(self: pointer, ): pointer {.importc: "QsciLexerCSS_metaObject".}
proc fcQsciLexerCSS_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerCSS_metacast".}
proc fcQsciLexerCSS_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerCSS_metacall".}
proc fcQsciLexerCSS_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerCSS_tr".}
proc fcQsciLexerCSS_trUtf8(s: cstring): struct_miqt_string {.importc: "QsciLexerCSS_trUtf8".}
proc fcQsciLexerCSS_language(self: pointer, ): cstring {.importc: "QsciLexerCSS_language".}
proc fcQsciLexerCSS_lexer(self: pointer, ): cstring {.importc: "QsciLexerCSS_lexer".}
proc fcQsciLexerCSS_blockEnd(self: pointer, ): cstring {.importc: "QsciLexerCSS_blockEnd".}
proc fcQsciLexerCSS_blockStart(self: pointer, ): cstring {.importc: "QsciLexerCSS_blockStart".}
proc fcQsciLexerCSS_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerCSS_wordCharacters".}
proc fcQsciLexerCSS_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerCSS_defaultColor".}
proc fcQsciLexerCSS_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerCSS_defaultFont".}
proc fcQsciLexerCSS_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerCSS_keywords".}
proc fcQsciLexerCSS_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerCSS_description".}
proc fcQsciLexerCSS_refreshProperties(self: pointer, ): void {.importc: "QsciLexerCSS_refreshProperties".}
proc fcQsciLexerCSS_foldComments(self: pointer, ): bool {.importc: "QsciLexerCSS_foldComments".}
proc fcQsciLexerCSS_foldCompact(self: pointer, ): bool {.importc: "QsciLexerCSS_foldCompact".}
proc fcQsciLexerCSS_setHSSLanguage(self: pointer, enabled: bool): void {.importc: "QsciLexerCSS_setHSSLanguage".}
proc fcQsciLexerCSS_HSSLanguage(self: pointer, ): bool {.importc: "QsciLexerCSS_HSSLanguage".}
proc fcQsciLexerCSS_setLessLanguage(self: pointer, enabled: bool): void {.importc: "QsciLexerCSS_setLessLanguage".}
proc fcQsciLexerCSS_LessLanguage(self: pointer, ): bool {.importc: "QsciLexerCSS_LessLanguage".}
proc fcQsciLexerCSS_setSCSSLanguage(self: pointer, enabled: bool): void {.importc: "QsciLexerCSS_setSCSSLanguage".}
proc fcQsciLexerCSS_SCSSLanguage(self: pointer, ): bool {.importc: "QsciLexerCSS_SCSSLanguage".}
proc fcQsciLexerCSS_setFoldComments(self: pointer, fold: bool): void {.importc: "QsciLexerCSS_setFoldComments".}
proc fcQsciLexerCSS_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerCSS_setFoldCompact".}
proc fcQsciLexerCSS_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerCSS_tr2".}
proc fcQsciLexerCSS_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerCSS_tr3".}
proc fcQsciLexerCSS_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerCSS_trUtf82".}
proc fcQsciLexerCSS_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerCSS_trUtf83".}
proc fcQsciLexerCSS_blockEnd1(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerCSS_blockEnd1".}
proc fcQsciLexerCSS_blockStart1(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerCSS_blockStart1".}
proc fQsciLexerCSS_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QsciLexerCSS_virtualbase_metaObject".}
proc fcQsciLexerCSS_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QsciLexerCSS_override_virtual_metaObject".}
proc fQsciLexerCSS_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QsciLexerCSS_virtualbase_metacast".}
proc fcQsciLexerCSS_override_virtual_metacast(self: pointer, slot: int) {.importc: "QsciLexerCSS_override_virtual_metacast".}
proc fQsciLexerCSS_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciLexerCSS_virtualbase_metacall".}
proc fcQsciLexerCSS_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciLexerCSS_override_virtual_metacall".}
proc fQsciLexerCSS_virtualbase_setFoldComments(self: pointer, fold: bool): void{.importc: "QsciLexerCSS_virtualbase_setFoldComments".}
proc fcQsciLexerCSS_override_virtual_setFoldComments(self: pointer, slot: int) {.importc: "QsciLexerCSS_override_virtual_setFoldComments".}
proc fQsciLexerCSS_virtualbase_setFoldCompact(self: pointer, fold: bool): void{.importc: "QsciLexerCSS_virtualbase_setFoldCompact".}
proc fcQsciLexerCSS_override_virtual_setFoldCompact(self: pointer, slot: int) {.importc: "QsciLexerCSS_override_virtual_setFoldCompact".}
proc fcQsciLexerCSS_override_virtual_language(self: pointer, slot: int) {.importc: "QsciLexerCSS_override_virtual_language".}
proc fQsciLexerCSS_virtualbase_lexer(self: pointer, ): cstring{.importc: "QsciLexerCSS_virtualbase_lexer".}
proc fcQsciLexerCSS_override_virtual_lexer(self: pointer, slot: int) {.importc: "QsciLexerCSS_override_virtual_lexer".}
proc fQsciLexerCSS_virtualbase_lexerId(self: pointer, ): cint{.importc: "QsciLexerCSS_virtualbase_lexerId".}
proc fcQsciLexerCSS_override_virtual_lexerId(self: pointer, slot: int) {.importc: "QsciLexerCSS_override_virtual_lexerId".}
proc fQsciLexerCSS_virtualbase_autoCompletionFillups(self: pointer, ): cstring{.importc: "QsciLexerCSS_virtualbase_autoCompletionFillups".}
proc fcQsciLexerCSS_override_virtual_autoCompletionFillups(self: pointer, slot: int) {.importc: "QsciLexerCSS_override_virtual_autoCompletionFillups".}
proc fQsciLexerCSS_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array{.importc: "QsciLexerCSS_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerCSS_override_virtual_autoCompletionWordSeparators(self: pointer, slot: int) {.importc: "QsciLexerCSS_override_virtual_autoCompletionWordSeparators".}
proc fQsciLexerCSS_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerCSS_virtualbase_blockEnd".}
proc fcQsciLexerCSS_override_virtual_blockEnd(self: pointer, slot: int) {.importc: "QsciLexerCSS_override_virtual_blockEnd".}
proc fQsciLexerCSS_virtualbase_blockLookback(self: pointer, ): cint{.importc: "QsciLexerCSS_virtualbase_blockLookback".}
proc fcQsciLexerCSS_override_virtual_blockLookback(self: pointer, slot: int) {.importc: "QsciLexerCSS_override_virtual_blockLookback".}
proc fQsciLexerCSS_virtualbase_blockStart(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerCSS_virtualbase_blockStart".}
proc fcQsciLexerCSS_override_virtual_blockStart(self: pointer, slot: int) {.importc: "QsciLexerCSS_override_virtual_blockStart".}
proc fQsciLexerCSS_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerCSS_virtualbase_blockStartKeyword".}
proc fcQsciLexerCSS_override_virtual_blockStartKeyword(self: pointer, slot: int) {.importc: "QsciLexerCSS_override_virtual_blockStartKeyword".}
proc fQsciLexerCSS_virtualbase_braceStyle(self: pointer, ): cint{.importc: "QsciLexerCSS_virtualbase_braceStyle".}
proc fcQsciLexerCSS_override_virtual_braceStyle(self: pointer, slot: int) {.importc: "QsciLexerCSS_override_virtual_braceStyle".}
proc fQsciLexerCSS_virtualbase_caseSensitive(self: pointer, ): bool{.importc: "QsciLexerCSS_virtualbase_caseSensitive".}
proc fcQsciLexerCSS_override_virtual_caseSensitive(self: pointer, slot: int) {.importc: "QsciLexerCSS_override_virtual_caseSensitive".}
proc fQsciLexerCSS_virtualbase_color(self: pointer, style: cint): pointer{.importc: "QsciLexerCSS_virtualbase_color".}
proc fcQsciLexerCSS_override_virtual_color(self: pointer, slot: int) {.importc: "QsciLexerCSS_override_virtual_color".}
proc fQsciLexerCSS_virtualbase_eolFill(self: pointer, style: cint): bool{.importc: "QsciLexerCSS_virtualbase_eolFill".}
proc fcQsciLexerCSS_override_virtual_eolFill(self: pointer, slot: int) {.importc: "QsciLexerCSS_override_virtual_eolFill".}
proc fQsciLexerCSS_virtualbase_font(self: pointer, style: cint): pointer{.importc: "QsciLexerCSS_virtualbase_font".}
proc fcQsciLexerCSS_override_virtual_font(self: pointer, slot: int) {.importc: "QsciLexerCSS_override_virtual_font".}
proc fQsciLexerCSS_virtualbase_indentationGuideView(self: pointer, ): cint{.importc: "QsciLexerCSS_virtualbase_indentationGuideView".}
proc fcQsciLexerCSS_override_virtual_indentationGuideView(self: pointer, slot: int) {.importc: "QsciLexerCSS_override_virtual_indentationGuideView".}
proc fQsciLexerCSS_virtualbase_keywords(self: pointer, set: cint): cstring{.importc: "QsciLexerCSS_virtualbase_keywords".}
proc fcQsciLexerCSS_override_virtual_keywords(self: pointer, slot: int) {.importc: "QsciLexerCSS_override_virtual_keywords".}
proc fQsciLexerCSS_virtualbase_defaultStyle(self: pointer, ): cint{.importc: "QsciLexerCSS_virtualbase_defaultStyle".}
proc fcQsciLexerCSS_override_virtual_defaultStyle(self: pointer, slot: int) {.importc: "QsciLexerCSS_override_virtual_defaultStyle".}
proc fcQsciLexerCSS_override_virtual_description(self: pointer, slot: int) {.importc: "QsciLexerCSS_override_virtual_description".}
proc fQsciLexerCSS_virtualbase_paper(self: pointer, style: cint): pointer{.importc: "QsciLexerCSS_virtualbase_paper".}
proc fcQsciLexerCSS_override_virtual_paper(self: pointer, slot: int) {.importc: "QsciLexerCSS_override_virtual_paper".}
proc fQsciLexerCSS_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerCSS_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerCSS_override_virtual_defaultColorWithStyle(self: pointer, slot: int) {.importc: "QsciLexerCSS_override_virtual_defaultColorWithStyle".}
proc fQsciLexerCSS_virtualbase_defaultEolFill(self: pointer, style: cint): bool{.importc: "QsciLexerCSS_virtualbase_defaultEolFill".}
proc fcQsciLexerCSS_override_virtual_defaultEolFill(self: pointer, slot: int) {.importc: "QsciLexerCSS_override_virtual_defaultEolFill".}
proc fQsciLexerCSS_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerCSS_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerCSS_override_virtual_defaultFontWithStyle(self: pointer, slot: int) {.importc: "QsciLexerCSS_override_virtual_defaultFontWithStyle".}
proc fQsciLexerCSS_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerCSS_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerCSS_override_virtual_defaultPaperWithStyle(self: pointer, slot: int) {.importc: "QsciLexerCSS_override_virtual_defaultPaperWithStyle".}
proc fQsciLexerCSS_virtualbase_setEditor(self: pointer, editor: pointer): void{.importc: "QsciLexerCSS_virtualbase_setEditor".}
proc fcQsciLexerCSS_override_virtual_setEditor(self: pointer, slot: int) {.importc: "QsciLexerCSS_override_virtual_setEditor".}
proc fQsciLexerCSS_virtualbase_refreshProperties(self: pointer, ): void{.importc: "QsciLexerCSS_virtualbase_refreshProperties".}
proc fcQsciLexerCSS_override_virtual_refreshProperties(self: pointer, slot: int) {.importc: "QsciLexerCSS_override_virtual_refreshProperties".}
proc fQsciLexerCSS_virtualbase_styleBitsNeeded(self: pointer, ): cint{.importc: "QsciLexerCSS_virtualbase_styleBitsNeeded".}
proc fcQsciLexerCSS_override_virtual_styleBitsNeeded(self: pointer, slot: int) {.importc: "QsciLexerCSS_override_virtual_styleBitsNeeded".}
proc fQsciLexerCSS_virtualbase_wordCharacters(self: pointer, ): cstring{.importc: "QsciLexerCSS_virtualbase_wordCharacters".}
proc fcQsciLexerCSS_override_virtual_wordCharacters(self: pointer, slot: int) {.importc: "QsciLexerCSS_override_virtual_wordCharacters".}
proc fQsciLexerCSS_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void{.importc: "QsciLexerCSS_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerCSS_override_virtual_setAutoIndentStyle(self: pointer, slot: int) {.importc: "QsciLexerCSS_override_virtual_setAutoIndentStyle".}
proc fQsciLexerCSS_virtualbase_setColor(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerCSS_virtualbase_setColor".}
proc fcQsciLexerCSS_override_virtual_setColor(self: pointer, slot: int) {.importc: "QsciLexerCSS_override_virtual_setColor".}
proc fQsciLexerCSS_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void{.importc: "QsciLexerCSS_virtualbase_setEolFill".}
proc fcQsciLexerCSS_override_virtual_setEolFill(self: pointer, slot: int) {.importc: "QsciLexerCSS_override_virtual_setEolFill".}
proc fQsciLexerCSS_virtualbase_setFont(self: pointer, f: pointer, style: cint): void{.importc: "QsciLexerCSS_virtualbase_setFont".}
proc fcQsciLexerCSS_override_virtual_setFont(self: pointer, slot: int) {.importc: "QsciLexerCSS_override_virtual_setFont".}
proc fQsciLexerCSS_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerCSS_virtualbase_setPaper".}
proc fcQsciLexerCSS_override_virtual_setPaper(self: pointer, slot: int) {.importc: "QsciLexerCSS_override_virtual_setPaper".}
proc fQsciLexerCSS_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerCSS_virtualbase_readProperties".}
proc fcQsciLexerCSS_override_virtual_readProperties(self: pointer, slot: int) {.importc: "QsciLexerCSS_override_virtual_readProperties".}
proc fQsciLexerCSS_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerCSS_virtualbase_writeProperties".}
proc fcQsciLexerCSS_override_virtual_writeProperties(self: pointer, slot: int) {.importc: "QsciLexerCSS_override_virtual_writeProperties".}
proc fQsciLexerCSS_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QsciLexerCSS_virtualbase_event".}
proc fcQsciLexerCSS_override_virtual_event(self: pointer, slot: int) {.importc: "QsciLexerCSS_override_virtual_event".}
proc fQsciLexerCSS_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciLexerCSS_virtualbase_eventFilter".}
proc fcQsciLexerCSS_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciLexerCSS_override_virtual_eventFilter".}
proc fQsciLexerCSS_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciLexerCSS_virtualbase_timerEvent".}
proc fcQsciLexerCSS_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciLexerCSS_override_virtual_timerEvent".}
proc fQsciLexerCSS_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciLexerCSS_virtualbase_childEvent".}
proc fcQsciLexerCSS_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciLexerCSS_override_virtual_childEvent".}
proc fQsciLexerCSS_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciLexerCSS_virtualbase_customEvent".}
proc fcQsciLexerCSS_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciLexerCSS_override_virtual_customEvent".}
proc fQsciLexerCSS_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerCSS_virtualbase_connectNotify".}
proc fcQsciLexerCSS_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciLexerCSS_override_virtual_connectNotify".}
proc fQsciLexerCSS_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerCSS_virtualbase_disconnectNotify".}
proc fcQsciLexerCSS_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciLexerCSS_override_virtual_disconnectNotify".}
proc fcQsciLexerCSS_staticMetaObject(): pointer {.importc: "QsciLexerCSS_staticMetaObject".}
proc fcQsciLexerCSS_delete(self: pointer) {.importc: "QsciLexerCSS_delete".}


func init*(T: type gen_qscilexercss_types.QsciLexerCSS, h: ptr cQsciLexerCSS): gen_qscilexercss_types.QsciLexerCSS =
  T(h: h)
proc create*(T: type gen_qscilexercss_types.QsciLexerCSS, ): gen_qscilexercss_types.QsciLexerCSS =

  gen_qscilexercss_types.QsciLexerCSS.init(fcQsciLexerCSS_new())
proc create*(T: type gen_qscilexercss_types.QsciLexerCSS, parent: gen_qobject.QObject): gen_qscilexercss_types.QsciLexerCSS =

  gen_qscilexercss_types.QsciLexerCSS.init(fcQsciLexerCSS_new2(parent.h))
proc metaObject*(self: gen_qscilexercss_types.QsciLexerCSS, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQsciLexerCSS_metaObject(self.h))

proc metacast*(self: gen_qscilexercss_types.QsciLexerCSS, param1: cstring): pointer =

  fcQsciLexerCSS_metacast(self.h, param1)

proc metacall*(self: gen_qscilexercss_types.QsciLexerCSS, param1: cint, param2: cint, param3: pointer): cint =

  fcQsciLexerCSS_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexercss_types.QsciLexerCSS, s: cstring): string =

  let v_ms = fcQsciLexerCSS_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexercss_types.QsciLexerCSS, s: cstring): string =

  let v_ms = fcQsciLexerCSS_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexercss_types.QsciLexerCSS, ): cstring =

  (fcQsciLexerCSS_language(self.h))

proc lexer*(self: gen_qscilexercss_types.QsciLexerCSS, ): cstring =

  (fcQsciLexerCSS_lexer(self.h))

proc blockEnd*(self: gen_qscilexercss_types.QsciLexerCSS, ): cstring =

  (fcQsciLexerCSS_blockEnd(self.h))

proc blockStart*(self: gen_qscilexercss_types.QsciLexerCSS, ): cstring =

  (fcQsciLexerCSS_blockStart(self.h))

proc wordCharacters*(self: gen_qscilexercss_types.QsciLexerCSS, ): cstring =

  (fcQsciLexerCSS_wordCharacters(self.h))

proc defaultColor*(self: gen_qscilexercss_types.QsciLexerCSS, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerCSS_defaultColor(self.h, style))

proc defaultFont*(self: gen_qscilexercss_types.QsciLexerCSS, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQsciLexerCSS_defaultFont(self.h, style))

proc keywords*(self: gen_qscilexercss_types.QsciLexerCSS, set: cint): cstring =

  (fcQsciLexerCSS_keywords(self.h, set))

proc description*(self: gen_qscilexercss_types.QsciLexerCSS, style: cint): string =

  let v_ms = fcQsciLexerCSS_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: gen_qscilexercss_types.QsciLexerCSS, ): void =

  fcQsciLexerCSS_refreshProperties(self.h)

proc foldComments*(self: gen_qscilexercss_types.QsciLexerCSS, ): bool =

  fcQsciLexerCSS_foldComments(self.h)

proc foldCompact*(self: gen_qscilexercss_types.QsciLexerCSS, ): bool =

  fcQsciLexerCSS_foldCompact(self.h)

proc setHSSLanguage*(self: gen_qscilexercss_types.QsciLexerCSS, enabled: bool): void =

  fcQsciLexerCSS_setHSSLanguage(self.h, enabled)

proc HSSLanguage*(self: gen_qscilexercss_types.QsciLexerCSS, ): bool =

  fcQsciLexerCSS_HSSLanguage(self.h)

proc setLessLanguage*(self: gen_qscilexercss_types.QsciLexerCSS, enabled: bool): void =

  fcQsciLexerCSS_setLessLanguage(self.h, enabled)

proc LessLanguage*(self: gen_qscilexercss_types.QsciLexerCSS, ): bool =

  fcQsciLexerCSS_LessLanguage(self.h)

proc setSCSSLanguage*(self: gen_qscilexercss_types.QsciLexerCSS, enabled: bool): void =

  fcQsciLexerCSS_setSCSSLanguage(self.h, enabled)

proc SCSSLanguage*(self: gen_qscilexercss_types.QsciLexerCSS, ): bool =

  fcQsciLexerCSS_SCSSLanguage(self.h)

proc setFoldComments*(self: gen_qscilexercss_types.QsciLexerCSS, fold: bool): void =

  fcQsciLexerCSS_setFoldComments(self.h, fold)

proc setFoldCompact*(self: gen_qscilexercss_types.QsciLexerCSS, fold: bool): void =

  fcQsciLexerCSS_setFoldCompact(self.h, fold)

proc tr2*(_: type gen_qscilexercss_types.QsciLexerCSS, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerCSS_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type gen_qscilexercss_types.QsciLexerCSS, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerCSS_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type gen_qscilexercss_types.QsciLexerCSS, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerCSS_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type gen_qscilexercss_types.QsciLexerCSS, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerCSS_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc blockEnd1*(self: gen_qscilexercss_types.QsciLexerCSS, style: ptr cint): cstring =

  (fcQsciLexerCSS_blockEnd1(self.h, style))

proc blockStart1*(self: gen_qscilexercss_types.QsciLexerCSS, style: ptr cint): cstring =

  (fcQsciLexerCSS_blockStart1(self.h, style))

proc QsciLexerCSSmetaObject*(self: gen_qscilexercss_types.QsciLexerCSS, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fQsciLexerCSS_virtualbase_metaObject(self.h))

type QsciLexerCSSmetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qscilexercss_types.QsciLexerCSS, slot: QsciLexerCSSmetaObjectProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSSmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_metaObject(self: ptr cQsciLexerCSS, slot: int): pointer {.exportc: "miqt_exec_callback_QsciLexerCSS_metaObject ".} =
  var nimfunc = cast[ptr QsciLexerCSSmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QsciLexerCSSmetacast*(self: gen_qscilexercss_types.QsciLexerCSS, param1: cstring): pointer =

  fQsciLexerCSS_virtualbase_metacast(self.h, param1)

type QsciLexerCSSmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qscilexercss_types.QsciLexerCSS, slot: QsciLexerCSSmetacastProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSSmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_metacast(self: ptr cQsciLexerCSS, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciLexerCSS_metacast ".} =
  var nimfunc = cast[ptr QsciLexerCSSmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerCSSmetacall*(self: gen_qscilexercss_types.QsciLexerCSS, param1: cint, param2: cint, param3: pointer): cint =

  fQsciLexerCSS_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerCSSmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qscilexercss_types.QsciLexerCSS, slot: QsciLexerCSSmetacallProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSSmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_metacall(self: ptr cQsciLexerCSS, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerCSS_metacall ".} =
  var nimfunc = cast[ptr QsciLexerCSSmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QsciLexerCSSsetFoldComments*(self: gen_qscilexercss_types.QsciLexerCSS, fold: bool): void =

  fQsciLexerCSS_virtualbase_setFoldComments(self.h, fold)

type QsciLexerCSSsetFoldCommentsProc* = proc(fold: bool): void
proc onsetFoldComments*(self: gen_qscilexercss_types.QsciLexerCSS, slot: QsciLexerCSSsetFoldCommentsProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSSsetFoldCommentsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_setFoldComments(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_setFoldComments(self: ptr cQsciLexerCSS, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerCSS_setFoldComments ".} =
  var nimfunc = cast[ptr QsciLexerCSSsetFoldCommentsProc](cast[pointer](slot))
  let slotval1 = fold


  nimfunc[](slotval1)
proc QsciLexerCSSsetFoldCompact*(self: gen_qscilexercss_types.QsciLexerCSS, fold: bool): void =

  fQsciLexerCSS_virtualbase_setFoldCompact(self.h, fold)

type QsciLexerCSSsetFoldCompactProc* = proc(fold: bool): void
proc onsetFoldCompact*(self: gen_qscilexercss_types.QsciLexerCSS, slot: QsciLexerCSSsetFoldCompactProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSSsetFoldCompactProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_setFoldCompact(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_setFoldCompact(self: ptr cQsciLexerCSS, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerCSS_setFoldCompact ".} =
  var nimfunc = cast[ptr QsciLexerCSSsetFoldCompactProc](cast[pointer](slot))
  let slotval1 = fold


  nimfunc[](slotval1)
type QsciLexerCSSlanguageProc* = proc(): cstring
proc onlanguage*(self: gen_qscilexercss_types.QsciLexerCSS, slot: QsciLexerCSSlanguageProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSSlanguageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_language(self: ptr cQsciLexerCSS, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerCSS_language ".} =
  var nimfunc = cast[ptr QsciLexerCSSlanguageProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerCSSlexer*(self: gen_qscilexercss_types.QsciLexerCSS, ): cstring =

  (fQsciLexerCSS_virtualbase_lexer(self.h))

type QsciLexerCSSlexerProc* = proc(): cstring
proc onlexer*(self: gen_qscilexercss_types.QsciLexerCSS, slot: QsciLexerCSSlexerProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSSlexerProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_lexer(self: ptr cQsciLexerCSS, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerCSS_lexer ".} =
  var nimfunc = cast[ptr QsciLexerCSSlexerProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerCSSlexerId*(self: gen_qscilexercss_types.QsciLexerCSS, ): cint =

  fQsciLexerCSS_virtualbase_lexerId(self.h)

type QsciLexerCSSlexerIdProc* = proc(): cint
proc onlexerId*(self: gen_qscilexercss_types.QsciLexerCSS, slot: QsciLexerCSSlexerIdProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSSlexerIdProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_lexerId(self: ptr cQsciLexerCSS, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCSS_lexerId ".} =
  var nimfunc = cast[ptr QsciLexerCSSlexerIdProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerCSSautoCompletionFillups*(self: gen_qscilexercss_types.QsciLexerCSS, ): cstring =

  (fQsciLexerCSS_virtualbase_autoCompletionFillups(self.h))

type QsciLexerCSSautoCompletionFillupsProc* = proc(): cstring
proc onautoCompletionFillups*(self: gen_qscilexercss_types.QsciLexerCSS, slot: QsciLexerCSSautoCompletionFillupsProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSSautoCompletionFillupsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_autoCompletionFillups(self: ptr cQsciLexerCSS, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerCSS_autoCompletionFillups ".} =
  var nimfunc = cast[ptr QsciLexerCSSautoCompletionFillupsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerCSSautoCompletionWordSeparators*(self: gen_qscilexercss_types.QsciLexerCSS, ): seq[string] =

  var v_ma = fQsciLexerCSS_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerCSSautoCompletionWordSeparatorsProc* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: gen_qscilexercss_types.QsciLexerCSS, slot: QsciLexerCSSautoCompletionWordSeparatorsProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSSautoCompletionWordSeparatorsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_autoCompletionWordSeparators(self: ptr cQsciLexerCSS, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerCSS_autoCompletionWordSeparators ".} =
  var nimfunc = cast[ptr QsciLexerCSSautoCompletionWordSeparatorsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QsciLexerCSSblockEnd*(self: gen_qscilexercss_types.QsciLexerCSS, style: ptr cint): cstring =

  (fQsciLexerCSS_virtualbase_blockEnd(self.h, style))

type QsciLexerCSSblockEndProc* = proc(style: ptr cint): cstring
proc onblockEnd*(self: gen_qscilexercss_types.QsciLexerCSS, slot: QsciLexerCSSblockEndProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSSblockEndProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_blockEnd(self: ptr cQsciLexerCSS, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerCSS_blockEnd ".} =
  var nimfunc = cast[ptr QsciLexerCSSblockEndProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerCSSblockLookback*(self: gen_qscilexercss_types.QsciLexerCSS, ): cint =

  fQsciLexerCSS_virtualbase_blockLookback(self.h)

type QsciLexerCSSblockLookbackProc* = proc(): cint
proc onblockLookback*(self: gen_qscilexercss_types.QsciLexerCSS, slot: QsciLexerCSSblockLookbackProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSSblockLookbackProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_blockLookback(self: ptr cQsciLexerCSS, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCSS_blockLookback ".} =
  var nimfunc = cast[ptr QsciLexerCSSblockLookbackProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerCSSblockStart*(self: gen_qscilexercss_types.QsciLexerCSS, style: ptr cint): cstring =

  (fQsciLexerCSS_virtualbase_blockStart(self.h, style))

type QsciLexerCSSblockStartProc* = proc(style: ptr cint): cstring
proc onblockStart*(self: gen_qscilexercss_types.QsciLexerCSS, slot: QsciLexerCSSblockStartProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSSblockStartProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_blockStart(self: ptr cQsciLexerCSS, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerCSS_blockStart ".} =
  var nimfunc = cast[ptr QsciLexerCSSblockStartProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerCSSblockStartKeyword*(self: gen_qscilexercss_types.QsciLexerCSS, style: ptr cint): cstring =

  (fQsciLexerCSS_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerCSSblockStartKeywordProc* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: gen_qscilexercss_types.QsciLexerCSS, slot: QsciLexerCSSblockStartKeywordProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSSblockStartKeywordProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_blockStartKeyword(self: ptr cQsciLexerCSS, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerCSS_blockStartKeyword ".} =
  var nimfunc = cast[ptr QsciLexerCSSblockStartKeywordProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerCSSbraceStyle*(self: gen_qscilexercss_types.QsciLexerCSS, ): cint =

  fQsciLexerCSS_virtualbase_braceStyle(self.h)

type QsciLexerCSSbraceStyleProc* = proc(): cint
proc onbraceStyle*(self: gen_qscilexercss_types.QsciLexerCSS, slot: QsciLexerCSSbraceStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSSbraceStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_braceStyle(self: ptr cQsciLexerCSS, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCSS_braceStyle ".} =
  var nimfunc = cast[ptr QsciLexerCSSbraceStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerCSScaseSensitive*(self: gen_qscilexercss_types.QsciLexerCSS, ): bool =

  fQsciLexerCSS_virtualbase_caseSensitive(self.h)

type QsciLexerCSScaseSensitiveProc* = proc(): bool
proc oncaseSensitive*(self: gen_qscilexercss_types.QsciLexerCSS, slot: QsciLexerCSScaseSensitiveProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSScaseSensitiveProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_caseSensitive(self: ptr cQsciLexerCSS, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerCSS_caseSensitive ".} =
  var nimfunc = cast[ptr QsciLexerCSScaseSensitiveProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerCSScolor*(self: gen_qscilexercss_types.QsciLexerCSS, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fQsciLexerCSS_virtualbase_color(self.h, style))

type QsciLexerCSScolorProc* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: gen_qscilexercss_types.QsciLexerCSS, slot: QsciLexerCSScolorProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSScolorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_color(self: ptr cQsciLexerCSS, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCSS_color ".} =
  var nimfunc = cast[ptr QsciLexerCSScolorProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerCSSeolFill*(self: gen_qscilexercss_types.QsciLexerCSS, style: cint): bool =

  fQsciLexerCSS_virtualbase_eolFill(self.h, style)

type QsciLexerCSSeolFillProc* = proc(style: cint): bool
proc oneolFill*(self: gen_qscilexercss_types.QsciLexerCSS, slot: QsciLexerCSSeolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSSeolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_eolFill(self: ptr cQsciLexerCSS, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerCSS_eolFill ".} =
  var nimfunc = cast[ptr QsciLexerCSSeolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerCSSfont*(self: gen_qscilexercss_types.QsciLexerCSS, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fQsciLexerCSS_virtualbase_font(self.h, style))

type QsciLexerCSSfontProc* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: gen_qscilexercss_types.QsciLexerCSS, slot: QsciLexerCSSfontProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSSfontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_font(self: ptr cQsciLexerCSS, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCSS_font ".} =
  var nimfunc = cast[ptr QsciLexerCSSfontProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerCSSindentationGuideView*(self: gen_qscilexercss_types.QsciLexerCSS, ): cint =

  fQsciLexerCSS_virtualbase_indentationGuideView(self.h)

type QsciLexerCSSindentationGuideViewProc* = proc(): cint
proc onindentationGuideView*(self: gen_qscilexercss_types.QsciLexerCSS, slot: QsciLexerCSSindentationGuideViewProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSSindentationGuideViewProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_indentationGuideView(self: ptr cQsciLexerCSS, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCSS_indentationGuideView ".} =
  var nimfunc = cast[ptr QsciLexerCSSindentationGuideViewProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerCSSkeywords*(self: gen_qscilexercss_types.QsciLexerCSS, set: cint): cstring =

  (fQsciLexerCSS_virtualbase_keywords(self.h, set))

type QsciLexerCSSkeywordsProc* = proc(set: cint): cstring
proc onkeywords*(self: gen_qscilexercss_types.QsciLexerCSS, slot: QsciLexerCSSkeywordsProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSSkeywordsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_keywords(self: ptr cQsciLexerCSS, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerCSS_keywords ".} =
  var nimfunc = cast[ptr QsciLexerCSSkeywordsProc](cast[pointer](slot))
  let slotval1 = set


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerCSSdefaultStyle*(self: gen_qscilexercss_types.QsciLexerCSS, ): cint =

  fQsciLexerCSS_virtualbase_defaultStyle(self.h)

type QsciLexerCSSdefaultStyleProc* = proc(): cint
proc ondefaultStyle*(self: gen_qscilexercss_types.QsciLexerCSS, slot: QsciLexerCSSdefaultStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSSdefaultStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_defaultStyle(self: ptr cQsciLexerCSS, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCSS_defaultStyle ".} =
  var nimfunc = cast[ptr QsciLexerCSSdefaultStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QsciLexerCSSdescriptionProc* = proc(style: cint): string
proc ondescription*(self: gen_qscilexercss_types.QsciLexerCSS, slot: QsciLexerCSSdescriptionProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSSdescriptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_description(self: ptr cQsciLexerCSS, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerCSS_description ".} =
  var nimfunc = cast[ptr QsciLexerCSSdescriptionProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc QsciLexerCSSpaper*(self: gen_qscilexercss_types.QsciLexerCSS, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fQsciLexerCSS_virtualbase_paper(self.h, style))

type QsciLexerCSSpaperProc* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: gen_qscilexercss_types.QsciLexerCSS, slot: QsciLexerCSSpaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSSpaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_paper(self: ptr cQsciLexerCSS, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCSS_paper ".} =
  var nimfunc = cast[ptr QsciLexerCSSpaperProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerCSSdefaultColorWithStyle*(self: gen_qscilexercss_types.QsciLexerCSS, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fQsciLexerCSS_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerCSSdefaultColorWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColorWithStyle*(self: gen_qscilexercss_types.QsciLexerCSS, slot: QsciLexerCSSdefaultColorWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSSdefaultColorWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_defaultColorWithStyle(self: ptr cQsciLexerCSS, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCSS_defaultColorWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerCSSdefaultColorWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerCSSdefaultEolFill*(self: gen_qscilexercss_types.QsciLexerCSS, style: cint): bool =

  fQsciLexerCSS_virtualbase_defaultEolFill(self.h, style)

type QsciLexerCSSdefaultEolFillProc* = proc(style: cint): bool
proc ondefaultEolFill*(self: gen_qscilexercss_types.QsciLexerCSS, slot: QsciLexerCSSdefaultEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSSdefaultEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_defaultEolFill(self: ptr cQsciLexerCSS, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerCSS_defaultEolFill ".} =
  var nimfunc = cast[ptr QsciLexerCSSdefaultEolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerCSSdefaultFontWithStyle*(self: gen_qscilexercss_types.QsciLexerCSS, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fQsciLexerCSS_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerCSSdefaultFontWithStyleProc* = proc(style: cint): gen_qfont.QFont
proc ondefaultFontWithStyle*(self: gen_qscilexercss_types.QsciLexerCSS, slot: QsciLexerCSSdefaultFontWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSSdefaultFontWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_defaultFontWithStyle(self: ptr cQsciLexerCSS, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCSS_defaultFontWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerCSSdefaultFontWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerCSSdefaultPaperWithStyle*(self: gen_qscilexercss_types.QsciLexerCSS, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fQsciLexerCSS_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerCSSdefaultPaperWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaperWithStyle*(self: gen_qscilexercss_types.QsciLexerCSS, slot: QsciLexerCSSdefaultPaperWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSSdefaultPaperWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_defaultPaperWithStyle(self: ptr cQsciLexerCSS, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCSS_defaultPaperWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerCSSdefaultPaperWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerCSSsetEditor*(self: gen_qscilexercss_types.QsciLexerCSS, editor: gen_qsciscintilla.QsciScintilla): void =

  fQsciLexerCSS_virtualbase_setEditor(self.h, editor.h)

type QsciLexerCSSsetEditorProc* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: gen_qscilexercss_types.QsciLexerCSS, slot: QsciLexerCSSsetEditorProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSSsetEditorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_setEditor(self: ptr cQsciLexerCSS, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCSS_setEditor ".} =
  var nimfunc = cast[ptr QsciLexerCSSsetEditorProc](cast[pointer](slot))
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](slotval1)
proc QsciLexerCSSrefreshProperties*(self: gen_qscilexercss_types.QsciLexerCSS, ): void =

  fQsciLexerCSS_virtualbase_refreshProperties(self.h)

type QsciLexerCSSrefreshPropertiesProc* = proc(): void
proc onrefreshProperties*(self: gen_qscilexercss_types.QsciLexerCSS, slot: QsciLexerCSSrefreshPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSSrefreshPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_refreshProperties(self: ptr cQsciLexerCSS, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerCSS_refreshProperties ".} =
  var nimfunc = cast[ptr QsciLexerCSSrefreshPropertiesProc](cast[pointer](slot))

  nimfunc[]()
proc QsciLexerCSSstyleBitsNeeded*(self: gen_qscilexercss_types.QsciLexerCSS, ): cint =

  fQsciLexerCSS_virtualbase_styleBitsNeeded(self.h)

type QsciLexerCSSstyleBitsNeededProc* = proc(): cint
proc onstyleBitsNeeded*(self: gen_qscilexercss_types.QsciLexerCSS, slot: QsciLexerCSSstyleBitsNeededProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSSstyleBitsNeededProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_styleBitsNeeded(self: ptr cQsciLexerCSS, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCSS_styleBitsNeeded ".} =
  var nimfunc = cast[ptr QsciLexerCSSstyleBitsNeededProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerCSSwordCharacters*(self: gen_qscilexercss_types.QsciLexerCSS, ): cstring =

  (fQsciLexerCSS_virtualbase_wordCharacters(self.h))

type QsciLexerCSSwordCharactersProc* = proc(): cstring
proc onwordCharacters*(self: gen_qscilexercss_types.QsciLexerCSS, slot: QsciLexerCSSwordCharactersProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSSwordCharactersProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_wordCharacters(self: ptr cQsciLexerCSS, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerCSS_wordCharacters ".} =
  var nimfunc = cast[ptr QsciLexerCSSwordCharactersProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerCSSsetAutoIndentStyle*(self: gen_qscilexercss_types.QsciLexerCSS, autoindentstyle: cint): void =

  fQsciLexerCSS_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerCSSsetAutoIndentStyleProc* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: gen_qscilexercss_types.QsciLexerCSS, slot: QsciLexerCSSsetAutoIndentStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSSsetAutoIndentStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_setAutoIndentStyle(self: ptr cQsciLexerCSS, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerCSS_setAutoIndentStyle ".} =
  var nimfunc = cast[ptr QsciLexerCSSsetAutoIndentStyleProc](cast[pointer](slot))
  let slotval1 = autoindentstyle


  nimfunc[](slotval1)
proc QsciLexerCSSsetColor*(self: gen_qscilexercss_types.QsciLexerCSS, c: gen_qcolor.QColor, style: cint): void =

  fQsciLexerCSS_virtualbase_setColor(self.h, c.h, style)

type QsciLexerCSSsetColorProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: gen_qscilexercss_types.QsciLexerCSS, slot: QsciLexerCSSsetColorProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSSsetColorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_setColor(self: ptr cQsciLexerCSS, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerCSS_setColor ".} =
  var nimfunc = cast[ptr QsciLexerCSSsetColorProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerCSSsetEolFill*(self: gen_qscilexercss_types.QsciLexerCSS, eoffill: bool, style: cint): void =

  fQsciLexerCSS_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerCSSsetEolFillProc* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: gen_qscilexercss_types.QsciLexerCSS, slot: QsciLexerCSSsetEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSSsetEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_setEolFill(self: ptr cQsciLexerCSS, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerCSS_setEolFill ".} =
  var nimfunc = cast[ptr QsciLexerCSSsetEolFillProc](cast[pointer](slot))
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerCSSsetFont*(self: gen_qscilexercss_types.QsciLexerCSS, f: gen_qfont.QFont, style: cint): void =

  fQsciLexerCSS_virtualbase_setFont(self.h, f.h, style)

type QsciLexerCSSsetFontProc* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: gen_qscilexercss_types.QsciLexerCSS, slot: QsciLexerCSSsetFontProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSSsetFontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_setFont(self: ptr cQsciLexerCSS, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerCSS_setFont ".} =
  var nimfunc = cast[ptr QsciLexerCSSsetFontProc](cast[pointer](slot))
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerCSSsetPaper*(self: gen_qscilexercss_types.QsciLexerCSS, c: gen_qcolor.QColor, style: cint): void =

  fQsciLexerCSS_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerCSSsetPaperProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: gen_qscilexercss_types.QsciLexerCSS, slot: QsciLexerCSSsetPaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSSsetPaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_setPaper(self: ptr cQsciLexerCSS, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerCSS_setPaper ".} =
  var nimfunc = cast[ptr QsciLexerCSSsetPaperProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerCSSreadProperties*(self: gen_qscilexercss_types.QsciLexerCSS, qs: gen_qsettings.QSettings, prefix: string): bool =

  fQsciLexerCSS_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerCSSreadPropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: gen_qscilexercss_types.QsciLexerCSS, slot: QsciLexerCSSreadPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSSreadPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_readProperties(self: ptr cQsciLexerCSS, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerCSS_readProperties ".} =
  var nimfunc = cast[ptr QsciLexerCSSreadPropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerCSSwriteProperties*(self: gen_qscilexercss_types.QsciLexerCSS, qs: gen_qsettings.QSettings, prefix: string): bool =

  fQsciLexerCSS_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerCSSwritePropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: gen_qscilexercss_types.QsciLexerCSS, slot: QsciLexerCSSwritePropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSSwritePropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_writeProperties(self: ptr cQsciLexerCSS, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerCSS_writeProperties ".} =
  var nimfunc = cast[ptr QsciLexerCSSwritePropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerCSSevent*(self: gen_qscilexercss_types.QsciLexerCSS, event: gen_qcoreevent.QEvent): bool =

  fQsciLexerCSS_virtualbase_event(self.h, event.h)

type QsciLexerCSSeventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qscilexercss_types.QsciLexerCSS, slot: QsciLexerCSSeventProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSSeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_event(self: ptr cQsciLexerCSS, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerCSS_event ".} =
  var nimfunc = cast[ptr QsciLexerCSSeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerCSSeventFilter*(self: gen_qscilexercss_types.QsciLexerCSS, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =

  fQsciLexerCSS_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerCSSeventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qscilexercss_types.QsciLexerCSS, slot: QsciLexerCSSeventFilterProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSSeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_eventFilter(self: ptr cQsciLexerCSS, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerCSS_eventFilter ".} =
  var nimfunc = cast[ptr QsciLexerCSSeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerCSStimerEvent*(self: gen_qscilexercss_types.QsciLexerCSS, event: gen_qcoreevent.QTimerEvent): void =

  fQsciLexerCSS_virtualbase_timerEvent(self.h, event.h)

type QsciLexerCSStimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qscilexercss_types.QsciLexerCSS, slot: QsciLexerCSStimerEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSStimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_timerEvent(self: ptr cQsciLexerCSS, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCSS_timerEvent ".} =
  var nimfunc = cast[ptr QsciLexerCSStimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerCSSchildEvent*(self: gen_qscilexercss_types.QsciLexerCSS, event: gen_qcoreevent.QChildEvent): void =

  fQsciLexerCSS_virtualbase_childEvent(self.h, event.h)

type QsciLexerCSSchildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qscilexercss_types.QsciLexerCSS, slot: QsciLexerCSSchildEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSSchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_childEvent(self: ptr cQsciLexerCSS, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCSS_childEvent ".} =
  var nimfunc = cast[ptr QsciLexerCSSchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerCSScustomEvent*(self: gen_qscilexercss_types.QsciLexerCSS, event: gen_qcoreevent.QEvent): void =

  fQsciLexerCSS_virtualbase_customEvent(self.h, event.h)

type QsciLexerCSScustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qscilexercss_types.QsciLexerCSS, slot: QsciLexerCSScustomEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSScustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_customEvent(self: ptr cQsciLexerCSS, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCSS_customEvent ".} =
  var nimfunc = cast[ptr QsciLexerCSScustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerCSSconnectNotify*(self: gen_qscilexercss_types.QsciLexerCSS, signal: gen_qmetaobject.QMetaMethod): void =

  fQsciLexerCSS_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerCSSconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qscilexercss_types.QsciLexerCSS, slot: QsciLexerCSSconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSSconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_connectNotify(self: ptr cQsciLexerCSS, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCSS_connectNotify ".} =
  var nimfunc = cast[ptr QsciLexerCSSconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QsciLexerCSSdisconnectNotify*(self: gen_qscilexercss_types.QsciLexerCSS, signal: gen_qmetaobject.QMetaMethod): void =

  fQsciLexerCSS_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerCSSdisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qscilexercss_types.QsciLexerCSS, slot: QsciLexerCSSdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSSdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_disconnectNotify(self: ptr cQsciLexerCSS, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCSS_disconnectNotify ".} =
  var nimfunc = cast[ptr QsciLexerCSSdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qscilexercss_types.QsciLexerCSS): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerCSS_staticMetaObject())
proc delete*(self: gen_qscilexercss_types.QsciLexerCSS) =
  fcQsciLexerCSS_delete(self.h)
