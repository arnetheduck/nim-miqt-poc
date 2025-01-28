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

type cQsciLexerCSS*{.exportc: "QsciLexerCSS", incompleteStruct.} = object

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
type cQsciLexerCSSVTable = object
  destructor*: proc(vtbl: ptr cQsciLexerCSSVTable, self: ptr cQsciLexerCSS) {.cdecl, raises:[], gcsafe.}
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
proc fcQsciLexerCSS_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QsciLexerCSS_virtualbase_metaObject".}
proc fcQsciLexerCSS_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerCSS_virtualbase_metacast".}
proc fcQsciLexerCSS_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerCSS_virtualbase_metacall".}
proc fcQsciLexerCSS_virtualbase_setFoldComments(self: pointer, fold: bool): void {.importc: "QsciLexerCSS_virtualbase_setFoldComments".}
proc fcQsciLexerCSS_virtualbase_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerCSS_virtualbase_setFoldCompact".}
proc fcQsciLexerCSS_virtualbase_lexer(self: pointer, ): cstring {.importc: "QsciLexerCSS_virtualbase_lexer".}
proc fcQsciLexerCSS_virtualbase_lexerId(self: pointer, ): cint {.importc: "QsciLexerCSS_virtualbase_lexerId".}
proc fcQsciLexerCSS_virtualbase_autoCompletionFillups(self: pointer, ): cstring {.importc: "QsciLexerCSS_virtualbase_autoCompletionFillups".}
proc fcQsciLexerCSS_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array {.importc: "QsciLexerCSS_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerCSS_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerCSS_virtualbase_blockEnd".}
proc fcQsciLexerCSS_virtualbase_blockLookback(self: pointer, ): cint {.importc: "QsciLexerCSS_virtualbase_blockLookback".}
proc fcQsciLexerCSS_virtualbase_blockStart(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerCSS_virtualbase_blockStart".}
proc fcQsciLexerCSS_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerCSS_virtualbase_blockStartKeyword".}
proc fcQsciLexerCSS_virtualbase_braceStyle(self: pointer, ): cint {.importc: "QsciLexerCSS_virtualbase_braceStyle".}
proc fcQsciLexerCSS_virtualbase_caseSensitive(self: pointer, ): bool {.importc: "QsciLexerCSS_virtualbase_caseSensitive".}
proc fcQsciLexerCSS_virtualbase_color(self: pointer, style: cint): pointer {.importc: "QsciLexerCSS_virtualbase_color".}
proc fcQsciLexerCSS_virtualbase_eolFill(self: pointer, style: cint): bool {.importc: "QsciLexerCSS_virtualbase_eolFill".}
proc fcQsciLexerCSS_virtualbase_font(self: pointer, style: cint): pointer {.importc: "QsciLexerCSS_virtualbase_font".}
proc fcQsciLexerCSS_virtualbase_indentationGuideView(self: pointer, ): cint {.importc: "QsciLexerCSS_virtualbase_indentationGuideView".}
proc fcQsciLexerCSS_virtualbase_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerCSS_virtualbase_keywords".}
proc fcQsciLexerCSS_virtualbase_defaultStyle(self: pointer, ): cint {.importc: "QsciLexerCSS_virtualbase_defaultStyle".}
proc fcQsciLexerCSS_virtualbase_paper(self: pointer, style: cint): pointer {.importc: "QsciLexerCSS_virtualbase_paper".}
proc fcQsciLexerCSS_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerCSS_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerCSS_virtualbase_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerCSS_virtualbase_defaultEolFill".}
proc fcQsciLexerCSS_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerCSS_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerCSS_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerCSS_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerCSS_virtualbase_setEditor(self: pointer, editor: pointer): void {.importc: "QsciLexerCSS_virtualbase_setEditor".}
proc fcQsciLexerCSS_virtualbase_refreshProperties(self: pointer, ): void {.importc: "QsciLexerCSS_virtualbase_refreshProperties".}
proc fcQsciLexerCSS_virtualbase_styleBitsNeeded(self: pointer, ): cint {.importc: "QsciLexerCSS_virtualbase_styleBitsNeeded".}
proc fcQsciLexerCSS_virtualbase_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerCSS_virtualbase_wordCharacters".}
proc fcQsciLexerCSS_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void {.importc: "QsciLexerCSS_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerCSS_virtualbase_setColor(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerCSS_virtualbase_setColor".}
proc fcQsciLexerCSS_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void {.importc: "QsciLexerCSS_virtualbase_setEolFill".}
proc fcQsciLexerCSS_virtualbase_setFont(self: pointer, f: pointer, style: cint): void {.importc: "QsciLexerCSS_virtualbase_setFont".}
proc fcQsciLexerCSS_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerCSS_virtualbase_setPaper".}
proc fcQsciLexerCSS_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerCSS_virtualbase_readProperties".}
proc fcQsciLexerCSS_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerCSS_virtualbase_writeProperties".}
proc fcQsciLexerCSS_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QsciLexerCSS_virtualbase_event".}
proc fcQsciLexerCSS_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QsciLexerCSS_virtualbase_eventFilter".}
proc fcQsciLexerCSS_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QsciLexerCSS_virtualbase_timerEvent".}
proc fcQsciLexerCSS_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QsciLexerCSS_virtualbase_childEvent".}
proc fcQsciLexerCSS_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QsciLexerCSS_virtualbase_customEvent".}
proc fcQsciLexerCSS_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerCSS_virtualbase_connectNotify".}
proc fcQsciLexerCSS_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerCSS_virtualbase_disconnectNotify".}
proc fcQsciLexerCSS_new(vtbl: pointer, ): ptr cQsciLexerCSS {.importc: "QsciLexerCSS_new".}
proc fcQsciLexerCSS_new2(vtbl: pointer, parent: pointer): ptr cQsciLexerCSS {.importc: "QsciLexerCSS_new2".}
proc fcQsciLexerCSS_staticMetaObject(): pointer {.importc: "QsciLexerCSS_staticMetaObject".}
proc fcQsciLexerCSS_delete(self: pointer) {.importc: "QsciLexerCSS_delete".}

proc metaObject*(self: gen_qscilexercss_types.QsciLexerCSS, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerCSS_metaObject(self.h))

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

proc defaultColor*(self: gen_qscilexercss_types.QsciLexerCSS, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerCSS_defaultColor(self.h, style))

proc defaultFont*(self: gen_qscilexercss_types.QsciLexerCSS, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerCSS_defaultFont(self.h, style))

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

proc tr*(_: type gen_qscilexercss_types.QsciLexerCSS, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerCSS_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexercss_types.QsciLexerCSS, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerCSS_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexercss_types.QsciLexerCSS, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerCSS_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexercss_types.QsciLexerCSS, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerCSS_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc blockEnd*(self: gen_qscilexercss_types.QsciLexerCSS, style: ptr cint): cstring =
  (fcQsciLexerCSS_blockEnd1(self.h, style))

proc blockStart*(self: gen_qscilexercss_types.QsciLexerCSS, style: ptr cint): cstring =
  (fcQsciLexerCSS_blockStart1(self.h, style))

type QsciLexerCSSmetaObjectProc* = proc(self: QsciLexerCSS): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QsciLexerCSSmetacastProc* = proc(self: QsciLexerCSS, param1: cstring): pointer {.raises: [], gcsafe.}
type QsciLexerCSSmetacallProc* = proc(self: QsciLexerCSS, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QsciLexerCSSsetFoldCommentsProc* = proc(self: QsciLexerCSS, fold: bool): void {.raises: [], gcsafe.}
type QsciLexerCSSsetFoldCompactProc* = proc(self: QsciLexerCSS, fold: bool): void {.raises: [], gcsafe.}
type QsciLexerCSSlanguageProc* = proc(self: QsciLexerCSS): cstring {.raises: [], gcsafe.}
type QsciLexerCSSlexerProc* = proc(self: QsciLexerCSS): cstring {.raises: [], gcsafe.}
type QsciLexerCSSlexerIdProc* = proc(self: QsciLexerCSS): cint {.raises: [], gcsafe.}
type QsciLexerCSSautoCompletionFillupsProc* = proc(self: QsciLexerCSS): cstring {.raises: [], gcsafe.}
type QsciLexerCSSautoCompletionWordSeparatorsProc* = proc(self: QsciLexerCSS): seq[string] {.raises: [], gcsafe.}
type QsciLexerCSSblockEndProc* = proc(self: QsciLexerCSS, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerCSSblockLookbackProc* = proc(self: QsciLexerCSS): cint {.raises: [], gcsafe.}
type QsciLexerCSSblockStartProc* = proc(self: QsciLexerCSS, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerCSSblockStartKeywordProc* = proc(self: QsciLexerCSS, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerCSSbraceStyleProc* = proc(self: QsciLexerCSS): cint {.raises: [], gcsafe.}
type QsciLexerCSScaseSensitiveProc* = proc(self: QsciLexerCSS): bool {.raises: [], gcsafe.}
type QsciLexerCSScolorProc* = proc(self: QsciLexerCSS, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerCSSeolFillProc* = proc(self: QsciLexerCSS, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerCSSfontProc* = proc(self: QsciLexerCSS, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerCSSindentationGuideViewProc* = proc(self: QsciLexerCSS): cint {.raises: [], gcsafe.}
type QsciLexerCSSkeywordsProc* = proc(self: QsciLexerCSS, set: cint): cstring {.raises: [], gcsafe.}
type QsciLexerCSSdefaultStyleProc* = proc(self: QsciLexerCSS): cint {.raises: [], gcsafe.}
type QsciLexerCSSdescriptionProc* = proc(self: QsciLexerCSS, style: cint): string {.raises: [], gcsafe.}
type QsciLexerCSSpaperProc* = proc(self: QsciLexerCSS, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerCSSdefaultColorProc* = proc(self: QsciLexerCSS, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerCSSdefaultEolFillProc* = proc(self: QsciLexerCSS, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerCSSdefaultFontProc* = proc(self: QsciLexerCSS, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerCSSdefaultPaperProc* = proc(self: QsciLexerCSS, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerCSSsetEditorProc* = proc(self: QsciLexerCSS, editor: gen_qsciscintilla_types.QsciScintilla): void {.raises: [], gcsafe.}
type QsciLexerCSSrefreshPropertiesProc* = proc(self: QsciLexerCSS): void {.raises: [], gcsafe.}
type QsciLexerCSSstyleBitsNeededProc* = proc(self: QsciLexerCSS): cint {.raises: [], gcsafe.}
type QsciLexerCSSwordCharactersProc* = proc(self: QsciLexerCSS): cstring {.raises: [], gcsafe.}
type QsciLexerCSSsetAutoIndentStyleProc* = proc(self: QsciLexerCSS, autoindentstyle: cint): void {.raises: [], gcsafe.}
type QsciLexerCSSsetColorProc* = proc(self: QsciLexerCSS, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerCSSsetEolFillProc* = proc(self: QsciLexerCSS, eoffill: bool, style: cint): void {.raises: [], gcsafe.}
type QsciLexerCSSsetFontProc* = proc(self: QsciLexerCSS, f: gen_qfont_types.QFont, style: cint): void {.raises: [], gcsafe.}
type QsciLexerCSSsetPaperProc* = proc(self: QsciLexerCSS, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerCSSreadPropertiesProc* = proc(self: QsciLexerCSS, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerCSSwritePropertiesProc* = proc(self: QsciLexerCSS, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerCSSeventProc* = proc(self: QsciLexerCSS, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerCSSeventFilterProc* = proc(self: QsciLexerCSS, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerCSStimerEventProc* = proc(self: QsciLexerCSS, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QsciLexerCSSchildEventProc* = proc(self: QsciLexerCSS, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QsciLexerCSScustomEventProc* = proc(self: QsciLexerCSS, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QsciLexerCSSconnectNotifyProc* = proc(self: QsciLexerCSS, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerCSSdisconnectNotifyProc* = proc(self: QsciLexerCSS, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerCSSVTable* = object
  vtbl: cQsciLexerCSSVTable
  metaObject*: QsciLexerCSSmetaObjectProc
  metacast*: QsciLexerCSSmetacastProc
  metacall*: QsciLexerCSSmetacallProc
  setFoldComments*: QsciLexerCSSsetFoldCommentsProc
  setFoldCompact*: QsciLexerCSSsetFoldCompactProc
  language*: QsciLexerCSSlanguageProc
  lexer*: QsciLexerCSSlexerProc
  lexerId*: QsciLexerCSSlexerIdProc
  autoCompletionFillups*: QsciLexerCSSautoCompletionFillupsProc
  autoCompletionWordSeparators*: QsciLexerCSSautoCompletionWordSeparatorsProc
  blockEnd*: QsciLexerCSSblockEndProc
  blockLookback*: QsciLexerCSSblockLookbackProc
  blockStart*: QsciLexerCSSblockStartProc
  blockStartKeyword*: QsciLexerCSSblockStartKeywordProc
  braceStyle*: QsciLexerCSSbraceStyleProc
  caseSensitive*: QsciLexerCSScaseSensitiveProc
  color*: QsciLexerCSScolorProc
  eolFill*: QsciLexerCSSeolFillProc
  font*: QsciLexerCSSfontProc
  indentationGuideView*: QsciLexerCSSindentationGuideViewProc
  keywords*: QsciLexerCSSkeywordsProc
  defaultStyle*: QsciLexerCSSdefaultStyleProc
  description*: QsciLexerCSSdescriptionProc
  paper*: QsciLexerCSSpaperProc
  defaultColor*: QsciLexerCSSdefaultColorProc
  defaultEolFill*: QsciLexerCSSdefaultEolFillProc
  defaultFont*: QsciLexerCSSdefaultFontProc
  defaultPaper*: QsciLexerCSSdefaultPaperProc
  setEditor*: QsciLexerCSSsetEditorProc
  refreshProperties*: QsciLexerCSSrefreshPropertiesProc
  styleBitsNeeded*: QsciLexerCSSstyleBitsNeededProc
  wordCharacters*: QsciLexerCSSwordCharactersProc
  setAutoIndentStyle*: QsciLexerCSSsetAutoIndentStyleProc
  setColor*: QsciLexerCSSsetColorProc
  setEolFill*: QsciLexerCSSsetEolFillProc
  setFont*: QsciLexerCSSsetFontProc
  setPaper*: QsciLexerCSSsetPaperProc
  readProperties*: QsciLexerCSSreadPropertiesProc
  writeProperties*: QsciLexerCSSwritePropertiesProc
  event*: QsciLexerCSSeventProc
  eventFilter*: QsciLexerCSSeventFilterProc
  timerEvent*: QsciLexerCSStimerEventProc
  childEvent*: QsciLexerCSSchildEventProc
  customEvent*: QsciLexerCSScustomEventProc
  connectNotify*: QsciLexerCSSconnectNotifyProc
  disconnectNotify*: QsciLexerCSSdisconnectNotifyProc
proc QsciLexerCSSmetaObject*(self: gen_qscilexercss_types.QsciLexerCSS, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerCSS_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQsciLexerCSS_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSSVTable](vtbl)
  let self = QsciLexerCSS(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QsciLexerCSSmetacast*(self: gen_qscilexercss_types.QsciLexerCSS, param1: cstring): pointer =
  fcQsciLexerCSS_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQsciLexerCSS_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSSVTable](vtbl)
  let self = QsciLexerCSS(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QsciLexerCSSmetacall*(self: gen_qscilexercss_types.QsciLexerCSS, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerCSS_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQsciLexerCSS_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSSVTable](vtbl)
  let self = QsciLexerCSS(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QsciLexerCSSsetFoldComments*(self: gen_qscilexercss_types.QsciLexerCSS, fold: bool): void =
  fcQsciLexerCSS_virtualbase_setFoldComments(self.h, fold)

proc miqt_exec_callback_cQsciLexerCSS_setFoldComments(vtbl: pointer, self: pointer, fold: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSSVTable](vtbl)
  let self = QsciLexerCSS(h: self)
  let slotval1 = fold
  vtbl[].setFoldComments(self, slotval1)

proc QsciLexerCSSsetFoldCompact*(self: gen_qscilexercss_types.QsciLexerCSS, fold: bool): void =
  fcQsciLexerCSS_virtualbase_setFoldCompact(self.h, fold)

proc miqt_exec_callback_cQsciLexerCSS_setFoldCompact(vtbl: pointer, self: pointer, fold: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSSVTable](vtbl)
  let self = QsciLexerCSS(h: self)
  let slotval1 = fold
  vtbl[].setFoldCompact(self, slotval1)

proc miqt_exec_callback_cQsciLexerCSS_language(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSSVTable](vtbl)
  let self = QsciLexerCSS(h: self)
  let virtualReturn = vtbl[].language(self)
  virtualReturn

proc QsciLexerCSSlexer*(self: gen_qscilexercss_types.QsciLexerCSS, ): cstring =
  (fcQsciLexerCSS_virtualbase_lexer(self.h))

proc miqt_exec_callback_cQsciLexerCSS_lexer(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSSVTable](vtbl)
  let self = QsciLexerCSS(h: self)
  let virtualReturn = vtbl[].lexer(self)
  virtualReturn

proc QsciLexerCSSlexerId*(self: gen_qscilexercss_types.QsciLexerCSS, ): cint =
  fcQsciLexerCSS_virtualbase_lexerId(self.h)

proc miqt_exec_callback_cQsciLexerCSS_lexerId(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSSVTable](vtbl)
  let self = QsciLexerCSS(h: self)
  let virtualReturn = vtbl[].lexerId(self)
  virtualReturn

proc QsciLexerCSSautoCompletionFillups*(self: gen_qscilexercss_types.QsciLexerCSS, ): cstring =
  (fcQsciLexerCSS_virtualbase_autoCompletionFillups(self.h))

proc miqt_exec_callback_cQsciLexerCSS_autoCompletionFillups(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSSVTable](vtbl)
  let self = QsciLexerCSS(h: self)
  let virtualReturn = vtbl[].autoCompletionFillups(self)
  virtualReturn

proc QsciLexerCSSautoCompletionWordSeparators*(self: gen_qscilexercss_types.QsciLexerCSS, ): seq[string] =
  var v_ma = fcQsciLexerCSS_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc miqt_exec_callback_cQsciLexerCSS_autoCompletionWordSeparators(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSSVTable](vtbl)
  let self = QsciLexerCSS(h: self)
  let virtualReturn = vtbl[].autoCompletionWordSeparators(self)
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QsciLexerCSSblockEnd*(self: gen_qscilexercss_types.QsciLexerCSS, style: ptr cint): cstring =
  (fcQsciLexerCSS_virtualbase_blockEnd(self.h, style))

proc miqt_exec_callback_cQsciLexerCSS_blockEnd(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSSVTable](vtbl)
  let self = QsciLexerCSS(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockEnd(self, slotval1)
  virtualReturn

proc QsciLexerCSSblockLookback*(self: gen_qscilexercss_types.QsciLexerCSS, ): cint =
  fcQsciLexerCSS_virtualbase_blockLookback(self.h)

proc miqt_exec_callback_cQsciLexerCSS_blockLookback(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSSVTable](vtbl)
  let self = QsciLexerCSS(h: self)
  let virtualReturn = vtbl[].blockLookback(self)
  virtualReturn

proc QsciLexerCSSblockStart*(self: gen_qscilexercss_types.QsciLexerCSS, style: ptr cint): cstring =
  (fcQsciLexerCSS_virtualbase_blockStart(self.h, style))

proc miqt_exec_callback_cQsciLexerCSS_blockStart(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSSVTable](vtbl)
  let self = QsciLexerCSS(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStart(self, slotval1)
  virtualReturn

proc QsciLexerCSSblockStartKeyword*(self: gen_qscilexercss_types.QsciLexerCSS, style: ptr cint): cstring =
  (fcQsciLexerCSS_virtualbase_blockStartKeyword(self.h, style))

proc miqt_exec_callback_cQsciLexerCSS_blockStartKeyword(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSSVTable](vtbl)
  let self = QsciLexerCSS(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStartKeyword(self, slotval1)
  virtualReturn

proc QsciLexerCSSbraceStyle*(self: gen_qscilexercss_types.QsciLexerCSS, ): cint =
  fcQsciLexerCSS_virtualbase_braceStyle(self.h)

proc miqt_exec_callback_cQsciLexerCSS_braceStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSSVTable](vtbl)
  let self = QsciLexerCSS(h: self)
  let virtualReturn = vtbl[].braceStyle(self)
  virtualReturn

proc QsciLexerCSScaseSensitive*(self: gen_qscilexercss_types.QsciLexerCSS, ): bool =
  fcQsciLexerCSS_virtualbase_caseSensitive(self.h)

proc miqt_exec_callback_cQsciLexerCSS_caseSensitive(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSSVTable](vtbl)
  let self = QsciLexerCSS(h: self)
  let virtualReturn = vtbl[].caseSensitive(self)
  virtualReturn

proc QsciLexerCSScolor*(self: gen_qscilexercss_types.QsciLexerCSS, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerCSS_virtualbase_color(self.h, style))

proc miqt_exec_callback_cQsciLexerCSS_color(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSSVTable](vtbl)
  let self = QsciLexerCSS(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].color(self, slotval1)
  virtualReturn.h

proc QsciLexerCSSeolFill*(self: gen_qscilexercss_types.QsciLexerCSS, style: cint): bool =
  fcQsciLexerCSS_virtualbase_eolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerCSS_eolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSSVTable](vtbl)
  let self = QsciLexerCSS(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].eolFill(self, slotval1)
  virtualReturn

proc QsciLexerCSSfont*(self: gen_qscilexercss_types.QsciLexerCSS, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerCSS_virtualbase_font(self.h, style))

proc miqt_exec_callback_cQsciLexerCSS_font(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSSVTable](vtbl)
  let self = QsciLexerCSS(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].font(self, slotval1)
  virtualReturn.h

proc QsciLexerCSSindentationGuideView*(self: gen_qscilexercss_types.QsciLexerCSS, ): cint =
  fcQsciLexerCSS_virtualbase_indentationGuideView(self.h)

proc miqt_exec_callback_cQsciLexerCSS_indentationGuideView(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSSVTable](vtbl)
  let self = QsciLexerCSS(h: self)
  let virtualReturn = vtbl[].indentationGuideView(self)
  virtualReturn

proc QsciLexerCSSkeywords*(self: gen_qscilexercss_types.QsciLexerCSS, set: cint): cstring =
  (fcQsciLexerCSS_virtualbase_keywords(self.h, set))

proc miqt_exec_callback_cQsciLexerCSS_keywords(vtbl: pointer, self: pointer, set: cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSSVTable](vtbl)
  let self = QsciLexerCSS(h: self)
  let slotval1 = set
  let virtualReturn = vtbl[].keywords(self, slotval1)
  virtualReturn

proc QsciLexerCSSdefaultStyle*(self: gen_qscilexercss_types.QsciLexerCSS, ): cint =
  fcQsciLexerCSS_virtualbase_defaultStyle(self.h)

proc miqt_exec_callback_cQsciLexerCSS_defaultStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSSVTable](vtbl)
  let self = QsciLexerCSS(h: self)
  let virtualReturn = vtbl[].defaultStyle(self)
  virtualReturn

proc miqt_exec_callback_cQsciLexerCSS_description(vtbl: pointer, self: pointer, style: cint): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSSVTable](vtbl)
  let self = QsciLexerCSS(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].description(self, slotval1)
  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))

proc QsciLexerCSSpaper*(self: gen_qscilexercss_types.QsciLexerCSS, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerCSS_virtualbase_paper(self.h, style))

proc miqt_exec_callback_cQsciLexerCSS_paper(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSSVTable](vtbl)
  let self = QsciLexerCSS(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].paper(self, slotval1)
  virtualReturn.h

proc QsciLexerCSSdefaultColor*(self: gen_qscilexercss_types.QsciLexerCSS, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerCSS_virtualbase_defaultColorWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerCSS_defaultColorWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSSVTable](vtbl)
  let self = QsciLexerCSS(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultColor(self, slotval1)
  virtualReturn.h

proc QsciLexerCSSdefaultEolFill*(self: gen_qscilexercss_types.QsciLexerCSS, style: cint): bool =
  fcQsciLexerCSS_virtualbase_defaultEolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerCSS_defaultEolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSSVTable](vtbl)
  let self = QsciLexerCSS(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultEolFill(self, slotval1)
  virtualReturn

proc QsciLexerCSSdefaultFont*(self: gen_qscilexercss_types.QsciLexerCSS, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerCSS_virtualbase_defaultFontWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerCSS_defaultFontWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSSVTable](vtbl)
  let self = QsciLexerCSS(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultFont(self, slotval1)
  virtualReturn.h

proc QsciLexerCSSdefaultPaper*(self: gen_qscilexercss_types.QsciLexerCSS, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerCSS_virtualbase_defaultPaperWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerCSS_defaultPaperWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSSVTable](vtbl)
  let self = QsciLexerCSS(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultPaper(self, slotval1)
  virtualReturn.h

proc QsciLexerCSSsetEditor*(self: gen_qscilexercss_types.QsciLexerCSS, editor: gen_qsciscintilla_types.QsciScintilla): void =
  fcQsciLexerCSS_virtualbase_setEditor(self.h, editor.h)

proc miqt_exec_callback_cQsciLexerCSS_setEditor(vtbl: pointer, self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSSVTable](vtbl)
  let self = QsciLexerCSS(h: self)
  let slotval1 = gen_qsciscintilla_types.QsciScintilla(h: editor)
  vtbl[].setEditor(self, slotval1)

proc QsciLexerCSSrefreshProperties*(self: gen_qscilexercss_types.QsciLexerCSS, ): void =
  fcQsciLexerCSS_virtualbase_refreshProperties(self.h)

proc miqt_exec_callback_cQsciLexerCSS_refreshProperties(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSSVTable](vtbl)
  let self = QsciLexerCSS(h: self)
  vtbl[].refreshProperties(self)

proc QsciLexerCSSstyleBitsNeeded*(self: gen_qscilexercss_types.QsciLexerCSS, ): cint =
  fcQsciLexerCSS_virtualbase_styleBitsNeeded(self.h)

proc miqt_exec_callback_cQsciLexerCSS_styleBitsNeeded(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSSVTable](vtbl)
  let self = QsciLexerCSS(h: self)
  let virtualReturn = vtbl[].styleBitsNeeded(self)
  virtualReturn

proc QsciLexerCSSwordCharacters*(self: gen_qscilexercss_types.QsciLexerCSS, ): cstring =
  (fcQsciLexerCSS_virtualbase_wordCharacters(self.h))

proc miqt_exec_callback_cQsciLexerCSS_wordCharacters(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSSVTable](vtbl)
  let self = QsciLexerCSS(h: self)
  let virtualReturn = vtbl[].wordCharacters(self)
  virtualReturn

proc QsciLexerCSSsetAutoIndentStyle*(self: gen_qscilexercss_types.QsciLexerCSS, autoindentstyle: cint): void =
  fcQsciLexerCSS_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

proc miqt_exec_callback_cQsciLexerCSS_setAutoIndentStyle(vtbl: pointer, self: pointer, autoindentstyle: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSSVTable](vtbl)
  let self = QsciLexerCSS(h: self)
  let slotval1 = autoindentstyle
  vtbl[].setAutoIndentStyle(self, slotval1)

proc QsciLexerCSSsetColor*(self: gen_qscilexercss_types.QsciLexerCSS, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerCSS_virtualbase_setColor(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerCSS_setColor(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSSVTable](vtbl)
  let self = QsciLexerCSS(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setColor(self, slotval1, slotval2)

proc QsciLexerCSSsetEolFill*(self: gen_qscilexercss_types.QsciLexerCSS, eoffill: bool, style: cint): void =
  fcQsciLexerCSS_virtualbase_setEolFill(self.h, eoffill, style)

proc miqt_exec_callback_cQsciLexerCSS_setEolFill(vtbl: pointer, self: pointer, eoffill: bool, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSSVTable](vtbl)
  let self = QsciLexerCSS(h: self)
  let slotval1 = eoffill
  let slotval2 = style
  vtbl[].setEolFill(self, slotval1, slotval2)

proc QsciLexerCSSsetFont*(self: gen_qscilexercss_types.QsciLexerCSS, f: gen_qfont_types.QFont, style: cint): void =
  fcQsciLexerCSS_virtualbase_setFont(self.h, f.h, style)

proc miqt_exec_callback_cQsciLexerCSS_setFont(vtbl: pointer, self: pointer, f: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSSVTable](vtbl)
  let self = QsciLexerCSS(h: self)
  let slotval1 = gen_qfont_types.QFont(h: f)
  let slotval2 = style
  vtbl[].setFont(self, slotval1, slotval2)

proc QsciLexerCSSsetPaper*(self: gen_qscilexercss_types.QsciLexerCSS, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerCSS_virtualbase_setPaper(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerCSS_setPaper(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSSVTable](vtbl)
  let self = QsciLexerCSS(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setPaper(self, slotval1, slotval2)

proc QsciLexerCSSreadProperties*(self: gen_qscilexercss_types.QsciLexerCSS, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerCSS_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerCSS_readProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSSVTable](vtbl)
  let self = QsciLexerCSS(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].readProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerCSSwriteProperties*(self: gen_qscilexercss_types.QsciLexerCSS, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerCSS_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerCSS_writeProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSSVTable](vtbl)
  let self = QsciLexerCSS(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].writeProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerCSSevent*(self: gen_qscilexercss_types.QsciLexerCSS, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerCSS_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQsciLexerCSS_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSSVTable](vtbl)
  let self = QsciLexerCSS(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QsciLexerCSSeventFilter*(self: gen_qscilexercss_types.QsciLexerCSS, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerCSS_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQsciLexerCSS_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSSVTable](vtbl)
  let self = QsciLexerCSS(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerCSStimerEvent*(self: gen_qscilexercss_types.QsciLexerCSS, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQsciLexerCSS_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerCSS_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSSVTable](vtbl)
  let self = QsciLexerCSS(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QsciLexerCSSchildEvent*(self: gen_qscilexercss_types.QsciLexerCSS, event: gen_qcoreevent_types.QChildEvent): void =
  fcQsciLexerCSS_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerCSS_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSSVTable](vtbl)
  let self = QsciLexerCSS(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QsciLexerCSScustomEvent*(self: gen_qscilexercss_types.QsciLexerCSS, event: gen_qcoreevent_types.QEvent): void =
  fcQsciLexerCSS_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerCSS_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSSVTable](vtbl)
  let self = QsciLexerCSS(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QsciLexerCSSconnectNotify*(self: gen_qscilexercss_types.QsciLexerCSS, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerCSS_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerCSS_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSSVTable](vtbl)
  let self = QsciLexerCSS(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QsciLexerCSSdisconnectNotify*(self: gen_qscilexercss_types.QsciLexerCSS, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerCSS_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerCSS_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSSVTable](vtbl)
  let self = QsciLexerCSS(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qscilexercss_types.QsciLexerCSS,
    vtbl: ref QsciLexerCSSVTable = nil): gen_qscilexercss_types.QsciLexerCSS =
  let vtbl = if vtbl == nil: new QsciLexerCSSVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerCSSVTable, _: ptr cQsciLexerCSS) {.cdecl.} =
    let vtbl = cast[ref QsciLexerCSSVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerCSS_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerCSS_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerCSS_metacall
  if not isNil(vtbl.setFoldComments):
    vtbl[].vtbl.setFoldComments = miqt_exec_callback_cQsciLexerCSS_setFoldComments
  if not isNil(vtbl.setFoldCompact):
    vtbl[].vtbl.setFoldCompact = miqt_exec_callback_cQsciLexerCSS_setFoldCompact
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerCSS_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerCSS_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerCSS_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerCSS_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerCSS_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerCSS_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerCSS_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerCSS_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerCSS_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerCSS_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerCSS_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerCSS_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerCSS_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerCSS_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerCSS_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerCSS_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerCSS_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerCSS_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerCSS_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerCSS_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerCSS_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerCSS_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerCSS_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerCSS_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerCSS_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerCSS_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerCSS_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerCSS_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerCSS_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerCSS_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerCSS_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerCSS_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerCSS_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerCSS_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerCSS_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerCSS_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerCSS_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerCSS_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerCSS_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerCSS_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerCSS_disconnectNotify
  gen_qscilexercss_types.QsciLexerCSS(h: fcQsciLexerCSS_new(addr(vtbl[]), ))

proc create*(T: type gen_qscilexercss_types.QsciLexerCSS,
    parent: gen_qobject_types.QObject,
    vtbl: ref QsciLexerCSSVTable = nil): gen_qscilexercss_types.QsciLexerCSS =
  let vtbl = if vtbl == nil: new QsciLexerCSSVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerCSSVTable, _: ptr cQsciLexerCSS) {.cdecl.} =
    let vtbl = cast[ref QsciLexerCSSVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerCSS_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerCSS_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerCSS_metacall
  if not isNil(vtbl.setFoldComments):
    vtbl[].vtbl.setFoldComments = miqt_exec_callback_cQsciLexerCSS_setFoldComments
  if not isNil(vtbl.setFoldCompact):
    vtbl[].vtbl.setFoldCompact = miqt_exec_callback_cQsciLexerCSS_setFoldCompact
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerCSS_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerCSS_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerCSS_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerCSS_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerCSS_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerCSS_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerCSS_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerCSS_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerCSS_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerCSS_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerCSS_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerCSS_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerCSS_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerCSS_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerCSS_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerCSS_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerCSS_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerCSS_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerCSS_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerCSS_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerCSS_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerCSS_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerCSS_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerCSS_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerCSS_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerCSS_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerCSS_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerCSS_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerCSS_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerCSS_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerCSS_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerCSS_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerCSS_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerCSS_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerCSS_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerCSS_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerCSS_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerCSS_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerCSS_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerCSS_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerCSS_disconnectNotify
  gen_qscilexercss_types.QsciLexerCSS(h: fcQsciLexerCSS_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qscilexercss_types.QsciLexerCSS): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerCSS_staticMetaObject())
proc delete*(self: gen_qscilexercss_types.QsciLexerCSS) =
  fcQsciLexerCSS_delete(self.h)
