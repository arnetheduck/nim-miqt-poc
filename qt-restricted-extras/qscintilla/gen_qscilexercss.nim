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


type QsciLexerCSSEnum* = cint
const
  QsciLexerCSSDefault* = 0
  QsciLexerCSSTag* = 1
  QsciLexerCSSClassSelector* = 2
  QsciLexerCSSPseudoClass* = 3
  QsciLexerCSSUnknownPseudoClass* = 4
  QsciLexerCSSOperator* = 5
  QsciLexerCSSCSS1Property* = 6
  QsciLexerCSSUnknownProperty* = 7
  QsciLexerCSSValue* = 8
  QsciLexerCSSComment* = 9
  QsciLexerCSSIDSelector* = 10
  QsciLexerCSSImportant* = 11
  QsciLexerCSSAtRule* = 12
  QsciLexerCSSDoubleQuotedString* = 13
  QsciLexerCSSSingleQuotedString* = 14
  QsciLexerCSSCSS2Property* = 15
  QsciLexerCSSAttribute* = 16
  QsciLexerCSSCSS3Property* = 17
  QsciLexerCSSPseudoElement* = 18
  QsciLexerCSSExtendedCSSProperty* = 19
  QsciLexerCSSExtendedPseudoClass* = 20
  QsciLexerCSSExtendedPseudoElement* = 21
  QsciLexerCSSMediaRule* = 22
  QsciLexerCSSVariable* = 23



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


func init*(T: type QsciLexerCSS, h: ptr cQsciLexerCSS): QsciLexerCSS =
  T(h: h)
proc create*(T: type QsciLexerCSS, ): QsciLexerCSS =

  QsciLexerCSS.init(fcQsciLexerCSS_new())
proc create*(T: type QsciLexerCSS, parent: gen_qobject.QObject): QsciLexerCSS =

  QsciLexerCSS.init(fcQsciLexerCSS_new2(parent.h))
proc metaObject*(self: QsciLexerCSS, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQsciLexerCSS_metaObject(self.h))

proc metacast*(self: QsciLexerCSS, param1: cstring): pointer =

  fcQsciLexerCSS_metacast(self.h, param1)

proc metacall*(self: QsciLexerCSS, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQsciLexerCSS_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QsciLexerCSS, s: cstring): string =

  let v_ms = fcQsciLexerCSS_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QsciLexerCSS, s: cstring): string =

  let v_ms = fcQsciLexerCSS_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: QsciLexerCSS, ): cstring =

  (fcQsciLexerCSS_language(self.h))

proc lexer*(self: QsciLexerCSS, ): cstring =

  (fcQsciLexerCSS_lexer(self.h))

proc blockEnd*(self: QsciLexerCSS, ): cstring =

  (fcQsciLexerCSS_blockEnd(self.h))

proc blockStart*(self: QsciLexerCSS, ): cstring =

  (fcQsciLexerCSS_blockStart(self.h))

proc wordCharacters*(self: QsciLexerCSS, ): cstring =

  (fcQsciLexerCSS_wordCharacters(self.h))

proc defaultColor*(self: QsciLexerCSS, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerCSS_defaultColor(self.h, style))

proc defaultFont*(self: QsciLexerCSS, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQsciLexerCSS_defaultFont(self.h, style))

proc keywords*(self: QsciLexerCSS, set: cint): cstring =

  (fcQsciLexerCSS_keywords(self.h, set))

proc description*(self: QsciLexerCSS, style: cint): string =

  let v_ms = fcQsciLexerCSS_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: QsciLexerCSS, ): void =

  fcQsciLexerCSS_refreshProperties(self.h)

proc foldComments*(self: QsciLexerCSS, ): bool =

  fcQsciLexerCSS_foldComments(self.h)

proc foldCompact*(self: QsciLexerCSS, ): bool =

  fcQsciLexerCSS_foldCompact(self.h)

proc setHSSLanguage*(self: QsciLexerCSS, enabled: bool): void =

  fcQsciLexerCSS_setHSSLanguage(self.h, enabled)

proc HSSLanguage*(self: QsciLexerCSS, ): bool =

  fcQsciLexerCSS_HSSLanguage(self.h)

proc setLessLanguage*(self: QsciLexerCSS, enabled: bool): void =

  fcQsciLexerCSS_setLessLanguage(self.h, enabled)

proc LessLanguage*(self: QsciLexerCSS, ): bool =

  fcQsciLexerCSS_LessLanguage(self.h)

proc setSCSSLanguage*(self: QsciLexerCSS, enabled: bool): void =

  fcQsciLexerCSS_setSCSSLanguage(self.h, enabled)

proc SCSSLanguage*(self: QsciLexerCSS, ): bool =

  fcQsciLexerCSS_SCSSLanguage(self.h)

proc setFoldComments*(self: QsciLexerCSS, fold: bool): void =

  fcQsciLexerCSS_setFoldComments(self.h, fold)

proc setFoldCompact*(self: QsciLexerCSS, fold: bool): void =

  fcQsciLexerCSS_setFoldCompact(self.h, fold)

proc tr2*(_: type QsciLexerCSS, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerCSS_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QsciLexerCSS, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerCSS_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QsciLexerCSS, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerCSS_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QsciLexerCSS, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerCSS_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc blockEnd1*(self: QsciLexerCSS, style: ptr cint): cstring =

  (fcQsciLexerCSS_blockEnd1(self.h, style))

proc blockStart1*(self: QsciLexerCSS, style: ptr cint): cstring =

  (fcQsciLexerCSS_blockStart1(self.h, style))

proc callVirtualBase_metaObject(self: QsciLexerCSS, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQsciLexerCSS_virtualbase_metaObject(self.h))

type QsciLexerCSSmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QsciLexerCSS, slot: proc(super: QsciLexerCSSmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSSmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_metaObject(self: ptr cQsciLexerCSS, slot: int): pointer {.exportc: "miqt_exec_callback_QsciLexerCSS_metaObject ".} =
  type Cb = proc(super: QsciLexerCSSmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QsciLexerCSS(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QsciLexerCSS, param1: cstring): pointer =


  fQsciLexerCSS_virtualbase_metacast(self.h, param1)

type QsciLexerCSSmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QsciLexerCSS, slot: proc(super: QsciLexerCSSmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSSmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_metacast(self: ptr cQsciLexerCSS, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciLexerCSS_metacast ".} =
  type Cb = proc(super: QsciLexerCSSmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QsciLexerCSS(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QsciLexerCSS, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQsciLexerCSS_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerCSSmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QsciLexerCSS, slot: proc(super: QsciLexerCSSmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSSmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_metacall(self: ptr cQsciLexerCSS, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerCSS_metacall ".} =
  type Cb = proc(super: QsciLexerCSSmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QsciLexerCSS(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_setFoldComments(self: QsciLexerCSS, fold: bool): void =


  fQsciLexerCSS_virtualbase_setFoldComments(self.h, fold)

type QsciLexerCSSsetFoldCommentsBase* = proc(fold: bool): void
proc onsetFoldComments*(self: QsciLexerCSS, slot: proc(super: QsciLexerCSSsetFoldCommentsBase, fold: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSSsetFoldCommentsBase, fold: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_setFoldComments(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_setFoldComments(self: ptr cQsciLexerCSS, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerCSS_setFoldComments ".} =
  type Cb = proc(super: QsciLexerCSSsetFoldCommentsBase, fold: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: bool): auto =
    callVirtualBase_setFoldComments(QsciLexerCSS(h: self), fold)
  let slotval1 = fold


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setFoldCompact(self: QsciLexerCSS, fold: bool): void =


  fQsciLexerCSS_virtualbase_setFoldCompact(self.h, fold)

type QsciLexerCSSsetFoldCompactBase* = proc(fold: bool): void
proc onsetFoldCompact*(self: QsciLexerCSS, slot: proc(super: QsciLexerCSSsetFoldCompactBase, fold: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSSsetFoldCompactBase, fold: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_setFoldCompact(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_setFoldCompact(self: ptr cQsciLexerCSS, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerCSS_setFoldCompact ".} =
  type Cb = proc(super: QsciLexerCSSsetFoldCompactBase, fold: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: bool): auto =
    callVirtualBase_setFoldCompact(QsciLexerCSS(h: self), fold)
  let slotval1 = fold


  nimfunc[](superCall, slotval1)
type QsciLexerCSSlanguageBase* = proc(): cstring
proc onlanguage*(self: QsciLexerCSS, slot: proc(): cstring) =
  # TODO check subclass
  type Cb = proc(): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_language(self: ptr cQsciLexerCSS, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerCSS_language ".} =
  type Cb = proc(): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc callVirtualBase_lexer(self: QsciLexerCSS, ): cstring =


  (fQsciLexerCSS_virtualbase_lexer(self.h))

type QsciLexerCSSlexerBase* = proc(): cstring
proc onlexer*(self: QsciLexerCSS, slot: proc(super: QsciLexerCSSlexerBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSSlexerBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_lexer(self: ptr cQsciLexerCSS, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerCSS_lexer ".} =
  type Cb = proc(super: QsciLexerCSSlexerBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexer(QsciLexerCSS(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_lexerId(self: QsciLexerCSS, ): cint =


  fQsciLexerCSS_virtualbase_lexerId(self.h)

type QsciLexerCSSlexerIdBase* = proc(): cint
proc onlexerId*(self: QsciLexerCSS, slot: proc(super: QsciLexerCSSlexerIdBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSSlexerIdBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_lexerId(self: ptr cQsciLexerCSS, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCSS_lexerId ".} =
  type Cb = proc(super: QsciLexerCSSlexerIdBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexerId(QsciLexerCSS(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionFillups(self: QsciLexerCSS, ): cstring =


  (fQsciLexerCSS_virtualbase_autoCompletionFillups(self.h))

type QsciLexerCSSautoCompletionFillupsBase* = proc(): cstring
proc onautoCompletionFillups*(self: QsciLexerCSS, slot: proc(super: QsciLexerCSSautoCompletionFillupsBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSSautoCompletionFillupsBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_autoCompletionFillups(self: ptr cQsciLexerCSS, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerCSS_autoCompletionFillups ".} =
  type Cb = proc(super: QsciLexerCSSautoCompletionFillupsBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionFillups(QsciLexerCSS(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionWordSeparators(self: QsciLexerCSS, ): seq[string] =


  var v_ma = fQsciLexerCSS_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerCSSautoCompletionWordSeparatorsBase* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: QsciLexerCSS, slot: proc(super: QsciLexerCSSautoCompletionWordSeparatorsBase): seq[string]) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSSautoCompletionWordSeparatorsBase): seq[string]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_autoCompletionWordSeparators(self: ptr cQsciLexerCSS, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerCSS_autoCompletionWordSeparators ".} =
  type Cb = proc(super: QsciLexerCSSautoCompletionWordSeparatorsBase): seq[string]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionWordSeparators(QsciLexerCSS(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_blockEnd(self: QsciLexerCSS, style: ptr cint): cstring =


  (fQsciLexerCSS_virtualbase_blockEnd(self.h, style))

type QsciLexerCSSblockEndBase* = proc(style: ptr cint): cstring
proc onblockEnd*(self: QsciLexerCSS, slot: proc(super: QsciLexerCSSblockEndBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSSblockEndBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_blockEnd(self: ptr cQsciLexerCSS, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerCSS_blockEnd ".} =
  type Cb = proc(super: QsciLexerCSSblockEndBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockEnd(QsciLexerCSS(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockLookback(self: QsciLexerCSS, ): cint =


  fQsciLexerCSS_virtualbase_blockLookback(self.h)

type QsciLexerCSSblockLookbackBase* = proc(): cint
proc onblockLookback*(self: QsciLexerCSS, slot: proc(super: QsciLexerCSSblockLookbackBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSSblockLookbackBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_blockLookback(self: ptr cQsciLexerCSS, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCSS_blockLookback ".} =
  type Cb = proc(super: QsciLexerCSSblockLookbackBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_blockLookback(QsciLexerCSS(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_blockStart(self: QsciLexerCSS, style: ptr cint): cstring =


  (fQsciLexerCSS_virtualbase_blockStart(self.h, style))

type QsciLexerCSSblockStartBase* = proc(style: ptr cint): cstring
proc onblockStart*(self: QsciLexerCSS, slot: proc(super: QsciLexerCSSblockStartBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSSblockStartBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_blockStart(self: ptr cQsciLexerCSS, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerCSS_blockStart ".} =
  type Cb = proc(super: QsciLexerCSSblockStartBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStart(QsciLexerCSS(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockStartKeyword(self: QsciLexerCSS, style: ptr cint): cstring =


  (fQsciLexerCSS_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerCSSblockStartKeywordBase* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: QsciLexerCSS, slot: proc(super: QsciLexerCSSblockStartKeywordBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSSblockStartKeywordBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_blockStartKeyword(self: ptr cQsciLexerCSS, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerCSS_blockStartKeyword ".} =
  type Cb = proc(super: QsciLexerCSSblockStartKeywordBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStartKeyword(QsciLexerCSS(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_braceStyle(self: QsciLexerCSS, ): cint =


  fQsciLexerCSS_virtualbase_braceStyle(self.h)

type QsciLexerCSSbraceStyleBase* = proc(): cint
proc onbraceStyle*(self: QsciLexerCSS, slot: proc(super: QsciLexerCSSbraceStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSSbraceStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_braceStyle(self: ptr cQsciLexerCSS, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCSS_braceStyle ".} =
  type Cb = proc(super: QsciLexerCSSbraceStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_braceStyle(QsciLexerCSS(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_caseSensitive(self: QsciLexerCSS, ): bool =


  fQsciLexerCSS_virtualbase_caseSensitive(self.h)

type QsciLexerCSScaseSensitiveBase* = proc(): bool
proc oncaseSensitive*(self: QsciLexerCSS, slot: proc(super: QsciLexerCSScaseSensitiveBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSScaseSensitiveBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_caseSensitive(self: ptr cQsciLexerCSS, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerCSS_caseSensitive ".} =
  type Cb = proc(super: QsciLexerCSScaseSensitiveBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_caseSensitive(QsciLexerCSS(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_color(self: QsciLexerCSS, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerCSS_virtualbase_color(self.h, style))

type QsciLexerCSScolorBase* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: QsciLexerCSS, slot: proc(super: QsciLexerCSScolorBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSScolorBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_color(self: ptr cQsciLexerCSS, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCSS_color ".} =
  type Cb = proc(super: QsciLexerCSScolorBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_color(QsciLexerCSS(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_eolFill(self: QsciLexerCSS, style: cint): bool =


  fQsciLexerCSS_virtualbase_eolFill(self.h, style)

type QsciLexerCSSeolFillBase* = proc(style: cint): bool
proc oneolFill*(self: QsciLexerCSS, slot: proc(super: QsciLexerCSSeolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSSeolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_eolFill(self: ptr cQsciLexerCSS, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerCSS_eolFill ".} =
  type Cb = proc(super: QsciLexerCSSeolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_eolFill(QsciLexerCSS(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_font(self: QsciLexerCSS, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerCSS_virtualbase_font(self.h, style))

type QsciLexerCSSfontBase* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: QsciLexerCSS, slot: proc(super: QsciLexerCSSfontBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSSfontBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_font(self: ptr cQsciLexerCSS, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCSS_font ".} =
  type Cb = proc(super: QsciLexerCSSfontBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_font(QsciLexerCSS(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_indentationGuideView(self: QsciLexerCSS, ): cint =


  fQsciLexerCSS_virtualbase_indentationGuideView(self.h)

type QsciLexerCSSindentationGuideViewBase* = proc(): cint
proc onindentationGuideView*(self: QsciLexerCSS, slot: proc(super: QsciLexerCSSindentationGuideViewBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSSindentationGuideViewBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_indentationGuideView(self: ptr cQsciLexerCSS, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCSS_indentationGuideView ".} =
  type Cb = proc(super: QsciLexerCSSindentationGuideViewBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_indentationGuideView(QsciLexerCSS(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_keywords(self: QsciLexerCSS, set: cint): cstring =


  (fQsciLexerCSS_virtualbase_keywords(self.h, set))

type QsciLexerCSSkeywordsBase* = proc(set: cint): cstring
proc onkeywords*(self: QsciLexerCSS, slot: proc(super: QsciLexerCSSkeywordsBase, set: cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSSkeywordsBase, set: cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_keywords(self: ptr cQsciLexerCSS, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerCSS_keywords ".} =
  type Cb = proc(super: QsciLexerCSSkeywordsBase, set: cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(set: cint): auto =
    callVirtualBase_keywords(QsciLexerCSS(h: self), set)
  let slotval1 = set


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultStyle(self: QsciLexerCSS, ): cint =


  fQsciLexerCSS_virtualbase_defaultStyle(self.h)

type QsciLexerCSSdefaultStyleBase* = proc(): cint
proc ondefaultStyle*(self: QsciLexerCSS, slot: proc(super: QsciLexerCSSdefaultStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSSdefaultStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_defaultStyle(self: ptr cQsciLexerCSS, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCSS_defaultStyle ".} =
  type Cb = proc(super: QsciLexerCSSdefaultStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_defaultStyle(QsciLexerCSS(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
type QsciLexerCSSdescriptionBase* = proc(style: cint): string
proc ondescription*(self: QsciLexerCSS, slot: proc(style: cint): string) =
  # TODO check subclass
  type Cb = proc(style: cint): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_description(self: ptr cQsciLexerCSS, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerCSS_description ".} =
  type Cb = proc(style: cint): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc callVirtualBase_paper(self: QsciLexerCSS, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerCSS_virtualbase_paper(self.h, style))

type QsciLexerCSSpaperBase* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: QsciLexerCSS, slot: proc(super: QsciLexerCSSpaperBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSSpaperBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_paper(self: ptr cQsciLexerCSS, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCSS_paper ".} =
  type Cb = proc(super: QsciLexerCSSpaperBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_paper(QsciLexerCSS(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultColorWithStyle(self: QsciLexerCSS, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerCSS_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerCSSdefaultColorWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColorWithStyle*(self: QsciLexerCSS, slot: proc(super: QsciLexerCSSdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSSdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_defaultColorWithStyle(self: ptr cQsciLexerCSS, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCSS_defaultColorWithStyle ".} =
  type Cb = proc(super: QsciLexerCSSdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultColorWithStyle(QsciLexerCSS(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultEolFill(self: QsciLexerCSS, style: cint): bool =


  fQsciLexerCSS_virtualbase_defaultEolFill(self.h, style)

type QsciLexerCSSdefaultEolFillBase* = proc(style: cint): bool
proc ondefaultEolFill*(self: QsciLexerCSS, slot: proc(super: QsciLexerCSSdefaultEolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSSdefaultEolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_defaultEolFill(self: ptr cQsciLexerCSS, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerCSS_defaultEolFill ".} =
  type Cb = proc(super: QsciLexerCSSdefaultEolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultEolFill(QsciLexerCSS(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultFontWithStyle(self: QsciLexerCSS, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerCSS_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerCSSdefaultFontWithStyleBase* = proc(style: cint): gen_qfont.QFont
proc ondefaultFontWithStyle*(self: QsciLexerCSS, slot: proc(super: QsciLexerCSSdefaultFontWithStyleBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSSdefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_defaultFontWithStyle(self: ptr cQsciLexerCSS, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCSS_defaultFontWithStyle ".} =
  type Cb = proc(super: QsciLexerCSSdefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultFontWithStyle(QsciLexerCSS(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultPaperWithStyle(self: QsciLexerCSS, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerCSS_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerCSSdefaultPaperWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaperWithStyle*(self: QsciLexerCSS, slot: proc(super: QsciLexerCSSdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSSdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_defaultPaperWithStyle(self: ptr cQsciLexerCSS, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCSS_defaultPaperWithStyle ".} =
  type Cb = proc(super: QsciLexerCSSdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultPaperWithStyle(QsciLexerCSS(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_setEditor(self: QsciLexerCSS, editor: gen_qsciscintilla.QsciScintilla): void =


  fQsciLexerCSS_virtualbase_setEditor(self.h, editor.h)

type QsciLexerCSSsetEditorBase* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: QsciLexerCSS, slot: proc(super: QsciLexerCSSsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSSsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_setEditor(self: ptr cQsciLexerCSS, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCSS_setEditor ".} =
  type Cb = proc(super: QsciLexerCSSsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qsciscintilla.QsciScintilla): auto =
    callVirtualBase_setEditor(QsciLexerCSS(h: self), editor)
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_refreshProperties(self: QsciLexerCSS, ): void =


  fQsciLexerCSS_virtualbase_refreshProperties(self.h)

type QsciLexerCSSrefreshPropertiesBase* = proc(): void
proc onrefreshProperties*(self: QsciLexerCSS, slot: proc(super: QsciLexerCSSrefreshPropertiesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSSrefreshPropertiesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_refreshProperties(self: ptr cQsciLexerCSS, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerCSS_refreshProperties ".} =
  type Cb = proc(super: QsciLexerCSSrefreshPropertiesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_refreshProperties(QsciLexerCSS(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_styleBitsNeeded(self: QsciLexerCSS, ): cint =


  fQsciLexerCSS_virtualbase_styleBitsNeeded(self.h)

type QsciLexerCSSstyleBitsNeededBase* = proc(): cint
proc onstyleBitsNeeded*(self: QsciLexerCSS, slot: proc(super: QsciLexerCSSstyleBitsNeededBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSSstyleBitsNeededBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_styleBitsNeeded(self: ptr cQsciLexerCSS, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCSS_styleBitsNeeded ".} =
  type Cb = proc(super: QsciLexerCSSstyleBitsNeededBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_styleBitsNeeded(QsciLexerCSS(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_wordCharacters(self: QsciLexerCSS, ): cstring =


  (fQsciLexerCSS_virtualbase_wordCharacters(self.h))

type QsciLexerCSSwordCharactersBase* = proc(): cstring
proc onwordCharacters*(self: QsciLexerCSS, slot: proc(super: QsciLexerCSSwordCharactersBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSSwordCharactersBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_wordCharacters(self: ptr cQsciLexerCSS, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerCSS_wordCharacters ".} =
  type Cb = proc(super: QsciLexerCSSwordCharactersBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_wordCharacters(QsciLexerCSS(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setAutoIndentStyle(self: QsciLexerCSS, autoindentstyle: cint): void =


  fQsciLexerCSS_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerCSSsetAutoIndentStyleBase* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: QsciLexerCSS, slot: proc(super: QsciLexerCSSsetAutoIndentStyleBase, autoindentstyle: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSSsetAutoIndentStyleBase, autoindentstyle: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_setAutoIndentStyle(self: ptr cQsciLexerCSS, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerCSS_setAutoIndentStyle ".} =
  type Cb = proc(super: QsciLexerCSSsetAutoIndentStyleBase, autoindentstyle: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(autoindentstyle: cint): auto =
    callVirtualBase_setAutoIndentStyle(QsciLexerCSS(h: self), autoindentstyle)
  let slotval1 = autoindentstyle


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setColor(self: QsciLexerCSS, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerCSS_virtualbase_setColor(self.h, c.h, style)

type QsciLexerCSSsetColorBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: QsciLexerCSS, slot: proc(super: QsciLexerCSSsetColorBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSSsetColorBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_setColor(self: ptr cQsciLexerCSS, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerCSS_setColor ".} =
  type Cb = proc(super: QsciLexerCSSsetColorBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setColor(QsciLexerCSS(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setEolFill(self: QsciLexerCSS, eoffill: bool, style: cint): void =


  fQsciLexerCSS_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerCSSsetEolFillBase* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: QsciLexerCSS, slot: proc(super: QsciLexerCSSsetEolFillBase, eoffill: bool, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSSsetEolFillBase, eoffill: bool, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_setEolFill(self: ptr cQsciLexerCSS, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerCSS_setEolFill ".} =
  type Cb = proc(super: QsciLexerCSSsetEolFillBase, eoffill: bool, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eoffill: bool, style: cint): auto =
    callVirtualBase_setEolFill(QsciLexerCSS(h: self), eoffill, style)
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setFont(self: QsciLexerCSS, f: gen_qfont.QFont, style: cint): void =


  fQsciLexerCSS_virtualbase_setFont(self.h, f.h, style)

type QsciLexerCSSsetFontBase* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: QsciLexerCSS, slot: proc(super: QsciLexerCSSsetFontBase, f: gen_qfont.QFont, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSSsetFontBase, f: gen_qfont.QFont, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_setFont(self: ptr cQsciLexerCSS, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerCSS_setFont ".} =
  type Cb = proc(super: QsciLexerCSSsetFontBase, f: gen_qfont.QFont, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(f: gen_qfont.QFont, style: cint): auto =
    callVirtualBase_setFont(QsciLexerCSS(h: self), f, style)
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setPaper(self: QsciLexerCSS, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerCSS_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerCSSsetPaperBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: QsciLexerCSS, slot: proc(super: QsciLexerCSSsetPaperBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSSsetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_setPaper(self: ptr cQsciLexerCSS, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerCSS_setPaper ".} =
  type Cb = proc(super: QsciLexerCSSsetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setPaper(QsciLexerCSS(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_readProperties(self: QsciLexerCSS, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerCSS_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerCSSreadPropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: QsciLexerCSS, slot: proc(super: QsciLexerCSSreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSSreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_readProperties(self: ptr cQsciLexerCSS, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerCSS_readProperties ".} =
  type Cb = proc(super: QsciLexerCSSreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_readProperties(QsciLexerCSS(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_writeProperties(self: QsciLexerCSS, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerCSS_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerCSSwritePropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: QsciLexerCSS, slot: proc(super: QsciLexerCSSwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSSwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_writeProperties(self: ptr cQsciLexerCSS, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerCSS_writeProperties ".} =
  type Cb = proc(super: QsciLexerCSSwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_writeProperties(QsciLexerCSS(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_event(self: QsciLexerCSS, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerCSS_virtualbase_event(self.h, event.h)

type QsciLexerCSSeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QsciLexerCSS, slot: proc(super: QsciLexerCSSeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSSeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_event(self: ptr cQsciLexerCSS, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerCSS_event ".} =
  type Cb = proc(super: QsciLexerCSSeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QsciLexerCSS(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QsciLexerCSS, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerCSS_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerCSSeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QsciLexerCSS, slot: proc(super: QsciLexerCSSeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSSeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_eventFilter(self: ptr cQsciLexerCSS, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerCSS_eventFilter ".} =
  type Cb = proc(super: QsciLexerCSSeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QsciLexerCSS(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QsciLexerCSS, event: gen_qcoreevent.QTimerEvent): void =


  fQsciLexerCSS_virtualbase_timerEvent(self.h, event.h)

type QsciLexerCSStimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QsciLexerCSS, slot: proc(super: QsciLexerCSStimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSStimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_timerEvent(self: ptr cQsciLexerCSS, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCSS_timerEvent ".} =
  type Cb = proc(super: QsciLexerCSStimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QsciLexerCSS(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QsciLexerCSS, event: gen_qcoreevent.QChildEvent): void =


  fQsciLexerCSS_virtualbase_childEvent(self.h, event.h)

type QsciLexerCSSchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QsciLexerCSS, slot: proc(super: QsciLexerCSSchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSSchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_childEvent(self: ptr cQsciLexerCSS, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCSS_childEvent ".} =
  type Cb = proc(super: QsciLexerCSSchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QsciLexerCSS(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QsciLexerCSS, event: gen_qcoreevent.QEvent): void =


  fQsciLexerCSS_virtualbase_customEvent(self.h, event.h)

type QsciLexerCSScustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QsciLexerCSS, slot: proc(super: QsciLexerCSScustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSScustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_customEvent(self: ptr cQsciLexerCSS, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCSS_customEvent ".} =
  type Cb = proc(super: QsciLexerCSScustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QsciLexerCSS(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QsciLexerCSS, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerCSS_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerCSSconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QsciLexerCSS, slot: proc(super: QsciLexerCSSconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSSconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_connectNotify(self: ptr cQsciLexerCSS, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCSS_connectNotify ".} =
  type Cb = proc(super: QsciLexerCSSconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QsciLexerCSS(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QsciLexerCSS, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerCSS_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerCSSdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QsciLexerCSS, slot: proc(super: QsciLexerCSSdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSSdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSS_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSS_disconnectNotify(self: ptr cQsciLexerCSS, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCSS_disconnectNotify ".} =
  type Cb = proc(super: QsciLexerCSSdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QsciLexerCSS(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QsciLexerCSS): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerCSS_staticMetaObject())
proc delete*(self: QsciLexerCSS) =
  fcQsciLexerCSS_delete(self.h)
