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
{.compile("gen_qscilexerbash.cpp", cflags).}


type QsciLexerBashEnumEnum* = distinct cint
template Default*(_: type QsciLexerBashEnumEnum): untyped = 0
template Error*(_: type QsciLexerBashEnumEnum): untyped = 1
template Comment*(_: type QsciLexerBashEnumEnum): untyped = 2
template Number*(_: type QsciLexerBashEnumEnum): untyped = 3
template Keyword*(_: type QsciLexerBashEnumEnum): untyped = 4
template DoubleQuotedString*(_: type QsciLexerBashEnumEnum): untyped = 5
template SingleQuotedString*(_: type QsciLexerBashEnumEnum): untyped = 6
template Operator*(_: type QsciLexerBashEnumEnum): untyped = 7
template Identifier*(_: type QsciLexerBashEnumEnum): untyped = 8
template Scalar*(_: type QsciLexerBashEnumEnum): untyped = 9
template ParameterExpansion*(_: type QsciLexerBashEnumEnum): untyped = 10
template Backticks*(_: type QsciLexerBashEnumEnum): untyped = 11
template HereDocumentDelimiter*(_: type QsciLexerBashEnumEnum): untyped = 12
template SingleQuotedHereDocument*(_: type QsciLexerBashEnumEnum): untyped = 13


import gen_qscilexerbash_types
export gen_qscilexerbash_types

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

type cQsciLexerBash*{.exportc: "QsciLexerBash", incompleteStruct.} = object

proc fcQsciLexerBash_new(): ptr cQsciLexerBash {.importc: "QsciLexerBash_new".}
proc fcQsciLexerBash_new2(parent: pointer): ptr cQsciLexerBash {.importc: "QsciLexerBash_new2".}
proc fcQsciLexerBash_metaObject(self: pointer, ): pointer {.importc: "QsciLexerBash_metaObject".}
proc fcQsciLexerBash_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerBash_metacast".}
proc fcQsciLexerBash_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerBash_metacall".}
proc fcQsciLexerBash_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerBash_tr".}
proc fcQsciLexerBash_language(self: pointer, ): cstring {.importc: "QsciLexerBash_language".}
proc fcQsciLexerBash_lexer(self: pointer, ): cstring {.importc: "QsciLexerBash_lexer".}
proc fcQsciLexerBash_braceStyle(self: pointer, ): cint {.importc: "QsciLexerBash_braceStyle".}
proc fcQsciLexerBash_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerBash_wordCharacters".}
proc fcQsciLexerBash_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerBash_defaultColor".}
proc fcQsciLexerBash_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerBash_defaultEolFill".}
proc fcQsciLexerBash_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerBash_defaultFont".}
proc fcQsciLexerBash_defaultPaper(self: pointer, style: cint): pointer {.importc: "QsciLexerBash_defaultPaper".}
proc fcQsciLexerBash_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerBash_keywords".}
proc fcQsciLexerBash_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerBash_description".}
proc fcQsciLexerBash_refreshProperties(self: pointer, ): void {.importc: "QsciLexerBash_refreshProperties".}
proc fcQsciLexerBash_foldComments(self: pointer, ): bool {.importc: "QsciLexerBash_foldComments".}
proc fcQsciLexerBash_foldCompact(self: pointer, ): bool {.importc: "QsciLexerBash_foldCompact".}
proc fcQsciLexerBash_setFoldComments(self: pointer, fold: bool): void {.importc: "QsciLexerBash_setFoldComments".}
proc fcQsciLexerBash_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerBash_setFoldCompact".}
proc fcQsciLexerBash_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerBash_tr2".}
proc fcQsciLexerBash_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerBash_tr3".}
proc fQsciLexerBash_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QsciLexerBash_virtualbase_metaObject".}
proc fcQsciLexerBash_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_metaObject".}
proc fQsciLexerBash_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QsciLexerBash_virtualbase_metacast".}
proc fcQsciLexerBash_override_virtual_metacast(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_metacast".}
proc fQsciLexerBash_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciLexerBash_virtualbase_metacall".}
proc fcQsciLexerBash_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_metacall".}
proc fQsciLexerBash_virtualbase_setFoldComments(self: pointer, fold: bool): void{.importc: "QsciLexerBash_virtualbase_setFoldComments".}
proc fcQsciLexerBash_override_virtual_setFoldComments(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_setFoldComments".}
proc fQsciLexerBash_virtualbase_setFoldCompact(self: pointer, fold: bool): void{.importc: "QsciLexerBash_virtualbase_setFoldCompact".}
proc fcQsciLexerBash_override_virtual_setFoldCompact(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_setFoldCompact".}
proc fcQsciLexerBash_override_virtual_language(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_language".}
proc fQsciLexerBash_virtualbase_lexer(self: pointer, ): cstring{.importc: "QsciLexerBash_virtualbase_lexer".}
proc fcQsciLexerBash_override_virtual_lexer(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_lexer".}
proc fQsciLexerBash_virtualbase_lexerId(self: pointer, ): cint{.importc: "QsciLexerBash_virtualbase_lexerId".}
proc fcQsciLexerBash_override_virtual_lexerId(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_lexerId".}
proc fQsciLexerBash_virtualbase_autoCompletionFillups(self: pointer, ): cstring{.importc: "QsciLexerBash_virtualbase_autoCompletionFillups".}
proc fcQsciLexerBash_override_virtual_autoCompletionFillups(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_autoCompletionFillups".}
proc fQsciLexerBash_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array{.importc: "QsciLexerBash_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerBash_override_virtual_autoCompletionWordSeparators(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_autoCompletionWordSeparators".}
proc fQsciLexerBash_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerBash_virtualbase_blockEnd".}
proc fcQsciLexerBash_override_virtual_blockEnd(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_blockEnd".}
proc fQsciLexerBash_virtualbase_blockLookback(self: pointer, ): cint{.importc: "QsciLexerBash_virtualbase_blockLookback".}
proc fcQsciLexerBash_override_virtual_blockLookback(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_blockLookback".}
proc fQsciLexerBash_virtualbase_blockStart(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerBash_virtualbase_blockStart".}
proc fcQsciLexerBash_override_virtual_blockStart(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_blockStart".}
proc fQsciLexerBash_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerBash_virtualbase_blockStartKeyword".}
proc fcQsciLexerBash_override_virtual_blockStartKeyword(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_blockStartKeyword".}
proc fQsciLexerBash_virtualbase_braceStyle(self: pointer, ): cint{.importc: "QsciLexerBash_virtualbase_braceStyle".}
proc fcQsciLexerBash_override_virtual_braceStyle(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_braceStyle".}
proc fQsciLexerBash_virtualbase_caseSensitive(self: pointer, ): bool{.importc: "QsciLexerBash_virtualbase_caseSensitive".}
proc fcQsciLexerBash_override_virtual_caseSensitive(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_caseSensitive".}
proc fQsciLexerBash_virtualbase_color(self: pointer, style: cint): pointer{.importc: "QsciLexerBash_virtualbase_color".}
proc fcQsciLexerBash_override_virtual_color(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_color".}
proc fQsciLexerBash_virtualbase_eolFill(self: pointer, style: cint): bool{.importc: "QsciLexerBash_virtualbase_eolFill".}
proc fcQsciLexerBash_override_virtual_eolFill(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_eolFill".}
proc fQsciLexerBash_virtualbase_font(self: pointer, style: cint): pointer{.importc: "QsciLexerBash_virtualbase_font".}
proc fcQsciLexerBash_override_virtual_font(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_font".}
proc fQsciLexerBash_virtualbase_indentationGuideView(self: pointer, ): cint{.importc: "QsciLexerBash_virtualbase_indentationGuideView".}
proc fcQsciLexerBash_override_virtual_indentationGuideView(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_indentationGuideView".}
proc fQsciLexerBash_virtualbase_keywords(self: pointer, set: cint): cstring{.importc: "QsciLexerBash_virtualbase_keywords".}
proc fcQsciLexerBash_override_virtual_keywords(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_keywords".}
proc fQsciLexerBash_virtualbase_defaultStyle(self: pointer, ): cint{.importc: "QsciLexerBash_virtualbase_defaultStyle".}
proc fcQsciLexerBash_override_virtual_defaultStyle(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_defaultStyle".}
proc fcQsciLexerBash_override_virtual_description(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_description".}
proc fQsciLexerBash_virtualbase_paper(self: pointer, style: cint): pointer{.importc: "QsciLexerBash_virtualbase_paper".}
proc fcQsciLexerBash_override_virtual_paper(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_paper".}
proc fQsciLexerBash_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerBash_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerBash_override_virtual_defaultColorWithStyle(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_defaultColorWithStyle".}
proc fQsciLexerBash_virtualbase_defaultEolFill(self: pointer, style: cint): bool{.importc: "QsciLexerBash_virtualbase_defaultEolFill".}
proc fcQsciLexerBash_override_virtual_defaultEolFill(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_defaultEolFill".}
proc fQsciLexerBash_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerBash_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerBash_override_virtual_defaultFontWithStyle(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_defaultFontWithStyle".}
proc fQsciLexerBash_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerBash_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerBash_override_virtual_defaultPaperWithStyle(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_defaultPaperWithStyle".}
proc fQsciLexerBash_virtualbase_setEditor(self: pointer, editor: pointer): void{.importc: "QsciLexerBash_virtualbase_setEditor".}
proc fcQsciLexerBash_override_virtual_setEditor(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_setEditor".}
proc fQsciLexerBash_virtualbase_refreshProperties(self: pointer, ): void{.importc: "QsciLexerBash_virtualbase_refreshProperties".}
proc fcQsciLexerBash_override_virtual_refreshProperties(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_refreshProperties".}
proc fQsciLexerBash_virtualbase_styleBitsNeeded(self: pointer, ): cint{.importc: "QsciLexerBash_virtualbase_styleBitsNeeded".}
proc fcQsciLexerBash_override_virtual_styleBitsNeeded(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_styleBitsNeeded".}
proc fQsciLexerBash_virtualbase_wordCharacters(self: pointer, ): cstring{.importc: "QsciLexerBash_virtualbase_wordCharacters".}
proc fcQsciLexerBash_override_virtual_wordCharacters(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_wordCharacters".}
proc fQsciLexerBash_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void{.importc: "QsciLexerBash_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerBash_override_virtual_setAutoIndentStyle(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_setAutoIndentStyle".}
proc fQsciLexerBash_virtualbase_setColor(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerBash_virtualbase_setColor".}
proc fcQsciLexerBash_override_virtual_setColor(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_setColor".}
proc fQsciLexerBash_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void{.importc: "QsciLexerBash_virtualbase_setEolFill".}
proc fcQsciLexerBash_override_virtual_setEolFill(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_setEolFill".}
proc fQsciLexerBash_virtualbase_setFont(self: pointer, f: pointer, style: cint): void{.importc: "QsciLexerBash_virtualbase_setFont".}
proc fcQsciLexerBash_override_virtual_setFont(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_setFont".}
proc fQsciLexerBash_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerBash_virtualbase_setPaper".}
proc fcQsciLexerBash_override_virtual_setPaper(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_setPaper".}
proc fQsciLexerBash_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerBash_virtualbase_readProperties".}
proc fcQsciLexerBash_override_virtual_readProperties(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_readProperties".}
proc fQsciLexerBash_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerBash_virtualbase_writeProperties".}
proc fcQsciLexerBash_override_virtual_writeProperties(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_writeProperties".}
proc fQsciLexerBash_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QsciLexerBash_virtualbase_event".}
proc fcQsciLexerBash_override_virtual_event(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_event".}
proc fQsciLexerBash_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciLexerBash_virtualbase_eventFilter".}
proc fcQsciLexerBash_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_eventFilter".}
proc fQsciLexerBash_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciLexerBash_virtualbase_timerEvent".}
proc fcQsciLexerBash_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_timerEvent".}
proc fQsciLexerBash_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciLexerBash_virtualbase_childEvent".}
proc fcQsciLexerBash_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_childEvent".}
proc fQsciLexerBash_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciLexerBash_virtualbase_customEvent".}
proc fcQsciLexerBash_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_customEvent".}
proc fQsciLexerBash_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerBash_virtualbase_connectNotify".}
proc fcQsciLexerBash_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_connectNotify".}
proc fQsciLexerBash_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerBash_virtualbase_disconnectNotify".}
proc fcQsciLexerBash_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_disconnectNotify".}
proc fcQsciLexerBash_staticMetaObject(): pointer {.importc: "QsciLexerBash_staticMetaObject".}
proc fcQsciLexerBash_delete(self: pointer) {.importc: "QsciLexerBash_delete".}


func init*(T: type gen_qscilexerbash_types.QsciLexerBash, h: ptr cQsciLexerBash): gen_qscilexerbash_types.QsciLexerBash =
  T(h: h)
proc create*(T: type gen_qscilexerbash_types.QsciLexerBash, ): gen_qscilexerbash_types.QsciLexerBash =
  gen_qscilexerbash_types.QsciLexerBash.init(fcQsciLexerBash_new())

proc create*(T: type gen_qscilexerbash_types.QsciLexerBash, parent: gen_qobject.QObject): gen_qscilexerbash_types.QsciLexerBash =
  gen_qscilexerbash_types.QsciLexerBash.init(fcQsciLexerBash_new2(parent.h))

proc metaObject*(self: gen_qscilexerbash_types.QsciLexerBash, ): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerBash_metaObject(self.h))

proc metacast*(self: gen_qscilexerbash_types.QsciLexerBash, param1: cstring): pointer =
  fcQsciLexerBash_metacast(self.h, param1)

proc metacall*(self: gen_qscilexerbash_types.QsciLexerBash, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerBash_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexerbash_types.QsciLexerBash, s: cstring): string =
  let v_ms = fcQsciLexerBash_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexerbash_types.QsciLexerBash, ): cstring =
  (fcQsciLexerBash_language(self.h))

proc lexer*(self: gen_qscilexerbash_types.QsciLexerBash, ): cstring =
  (fcQsciLexerBash_lexer(self.h))

proc braceStyle*(self: gen_qscilexerbash_types.QsciLexerBash, ): cint =
  fcQsciLexerBash_braceStyle(self.h)

proc wordCharacters*(self: gen_qscilexerbash_types.QsciLexerBash, ): cstring =
  (fcQsciLexerBash_wordCharacters(self.h))

proc defaultColor*(self: gen_qscilexerbash_types.QsciLexerBash, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fcQsciLexerBash_defaultColor(self.h, style))

proc defaultEolFill*(self: gen_qscilexerbash_types.QsciLexerBash, style: cint): bool =
  fcQsciLexerBash_defaultEolFill(self.h, style)

proc defaultFont*(self: gen_qscilexerbash_types.QsciLexerBash, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fcQsciLexerBash_defaultFont(self.h, style))

proc defaultPaper*(self: gen_qscilexerbash_types.QsciLexerBash, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fcQsciLexerBash_defaultPaper(self.h, style))

proc keywords*(self: gen_qscilexerbash_types.QsciLexerBash, set: cint): cstring =
  (fcQsciLexerBash_keywords(self.h, set))

proc description*(self: gen_qscilexerbash_types.QsciLexerBash, style: cint): string =
  let v_ms = fcQsciLexerBash_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: gen_qscilexerbash_types.QsciLexerBash, ): void =
  fcQsciLexerBash_refreshProperties(self.h)

proc foldComments*(self: gen_qscilexerbash_types.QsciLexerBash, ): bool =
  fcQsciLexerBash_foldComments(self.h)

proc foldCompact*(self: gen_qscilexerbash_types.QsciLexerBash, ): bool =
  fcQsciLexerBash_foldCompact(self.h)

proc setFoldComments*(self: gen_qscilexerbash_types.QsciLexerBash, fold: bool): void =
  fcQsciLexerBash_setFoldComments(self.h, fold)

proc setFoldCompact*(self: gen_qscilexerbash_types.QsciLexerBash, fold: bool): void =
  fcQsciLexerBash_setFoldCompact(self.h, fold)

proc tr*(_: type gen_qscilexerbash_types.QsciLexerBash, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerBash_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexerbash_types.QsciLexerBash, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerBash_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QsciLexerBashmetaObject*(self: gen_qscilexerbash_types.QsciLexerBash, ): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fQsciLexerBash_virtualbase_metaObject(self.h))

type QsciLexerBashmetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qscilexerbash_types.QsciLexerBash, slot: QsciLexerBashmetaObjectProc) =
  # TODO check subclass
  var tmp = new QsciLexerBashmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_metaObject(self: ptr cQsciLexerBash, slot: int): pointer {.exportc: "miqt_exec_callback_QsciLexerBash_metaObject ".} =
  var nimfunc = cast[ptr QsciLexerBashmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QsciLexerBashmetacast*(self: gen_qscilexerbash_types.QsciLexerBash, param1: cstring): pointer =
  fQsciLexerBash_virtualbase_metacast(self.h, param1)

type QsciLexerBashmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qscilexerbash_types.QsciLexerBash, slot: QsciLexerBashmetacastProc) =
  # TODO check subclass
  var tmp = new QsciLexerBashmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_metacast(self: ptr cQsciLexerBash, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciLexerBash_metacast ".} =
  var nimfunc = cast[ptr QsciLexerBashmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerBashmetacall*(self: gen_qscilexerbash_types.QsciLexerBash, param1: cint, param2: cint, param3: pointer): cint =
  fQsciLexerBash_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerBashmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qscilexerbash_types.QsciLexerBash, slot: QsciLexerBashmetacallProc) =
  # TODO check subclass
  var tmp = new QsciLexerBashmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_metacall(self: ptr cQsciLexerBash, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerBash_metacall ".} =
  var nimfunc = cast[ptr QsciLexerBashmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QsciLexerBashsetFoldComments*(self: gen_qscilexerbash_types.QsciLexerBash, fold: bool): void =
  fQsciLexerBash_virtualbase_setFoldComments(self.h, fold)

type QsciLexerBashsetFoldCommentsProc* = proc(fold: bool): void
proc onsetFoldComments*(self: gen_qscilexerbash_types.QsciLexerBash, slot: QsciLexerBashsetFoldCommentsProc) =
  # TODO check subclass
  var tmp = new QsciLexerBashsetFoldCommentsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_setFoldComments(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_setFoldComments(self: ptr cQsciLexerBash, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerBash_setFoldComments ".} =
  var nimfunc = cast[ptr QsciLexerBashsetFoldCommentsProc](cast[pointer](slot))
  let slotval1 = fold


  nimfunc[](slotval1)
proc QsciLexerBashsetFoldCompact*(self: gen_qscilexerbash_types.QsciLexerBash, fold: bool): void =
  fQsciLexerBash_virtualbase_setFoldCompact(self.h, fold)

type QsciLexerBashsetFoldCompactProc* = proc(fold: bool): void
proc onsetFoldCompact*(self: gen_qscilexerbash_types.QsciLexerBash, slot: QsciLexerBashsetFoldCompactProc) =
  # TODO check subclass
  var tmp = new QsciLexerBashsetFoldCompactProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_setFoldCompact(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_setFoldCompact(self: ptr cQsciLexerBash, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerBash_setFoldCompact ".} =
  var nimfunc = cast[ptr QsciLexerBashsetFoldCompactProc](cast[pointer](slot))
  let slotval1 = fold


  nimfunc[](slotval1)
type QsciLexerBashlanguageProc* = proc(): cstring
proc onlanguage*(self: gen_qscilexerbash_types.QsciLexerBash, slot: QsciLexerBashlanguageProc) =
  # TODO check subclass
  var tmp = new QsciLexerBashlanguageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_language(self: ptr cQsciLexerBash, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerBash_language ".} =
  var nimfunc = cast[ptr QsciLexerBashlanguageProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerBashlexer*(self: gen_qscilexerbash_types.QsciLexerBash, ): cstring =
  (fQsciLexerBash_virtualbase_lexer(self.h))

type QsciLexerBashlexerProc* = proc(): cstring
proc onlexer*(self: gen_qscilexerbash_types.QsciLexerBash, slot: QsciLexerBashlexerProc) =
  # TODO check subclass
  var tmp = new QsciLexerBashlexerProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_lexer(self: ptr cQsciLexerBash, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerBash_lexer ".} =
  var nimfunc = cast[ptr QsciLexerBashlexerProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerBashlexerId*(self: gen_qscilexerbash_types.QsciLexerBash, ): cint =
  fQsciLexerBash_virtualbase_lexerId(self.h)

type QsciLexerBashlexerIdProc* = proc(): cint
proc onlexerId*(self: gen_qscilexerbash_types.QsciLexerBash, slot: QsciLexerBashlexerIdProc) =
  # TODO check subclass
  var tmp = new QsciLexerBashlexerIdProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_lexerId(self: ptr cQsciLexerBash, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerBash_lexerId ".} =
  var nimfunc = cast[ptr QsciLexerBashlexerIdProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerBashautoCompletionFillups*(self: gen_qscilexerbash_types.QsciLexerBash, ): cstring =
  (fQsciLexerBash_virtualbase_autoCompletionFillups(self.h))

type QsciLexerBashautoCompletionFillupsProc* = proc(): cstring
proc onautoCompletionFillups*(self: gen_qscilexerbash_types.QsciLexerBash, slot: QsciLexerBashautoCompletionFillupsProc) =
  # TODO check subclass
  var tmp = new QsciLexerBashautoCompletionFillupsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_autoCompletionFillups(self: ptr cQsciLexerBash, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerBash_autoCompletionFillups ".} =
  var nimfunc = cast[ptr QsciLexerBashautoCompletionFillupsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerBashautoCompletionWordSeparators*(self: gen_qscilexerbash_types.QsciLexerBash, ): seq[string] =
  var v_ma = fQsciLexerBash_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerBashautoCompletionWordSeparatorsProc* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: gen_qscilexerbash_types.QsciLexerBash, slot: QsciLexerBashautoCompletionWordSeparatorsProc) =
  # TODO check subclass
  var tmp = new QsciLexerBashautoCompletionWordSeparatorsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_autoCompletionWordSeparators(self: ptr cQsciLexerBash, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerBash_autoCompletionWordSeparators ".} =
  var nimfunc = cast[ptr QsciLexerBashautoCompletionWordSeparatorsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QsciLexerBashblockEnd*(self: gen_qscilexerbash_types.QsciLexerBash, style: ptr cint): cstring =
  (fQsciLexerBash_virtualbase_blockEnd(self.h, style))

type QsciLexerBashblockEndProc* = proc(style: ptr cint): cstring
proc onblockEnd*(self: gen_qscilexerbash_types.QsciLexerBash, slot: QsciLexerBashblockEndProc) =
  # TODO check subclass
  var tmp = new QsciLexerBashblockEndProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_blockEnd(self: ptr cQsciLexerBash, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerBash_blockEnd ".} =
  var nimfunc = cast[ptr QsciLexerBashblockEndProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerBashblockLookback*(self: gen_qscilexerbash_types.QsciLexerBash, ): cint =
  fQsciLexerBash_virtualbase_blockLookback(self.h)

type QsciLexerBashblockLookbackProc* = proc(): cint
proc onblockLookback*(self: gen_qscilexerbash_types.QsciLexerBash, slot: QsciLexerBashblockLookbackProc) =
  # TODO check subclass
  var tmp = new QsciLexerBashblockLookbackProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_blockLookback(self: ptr cQsciLexerBash, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerBash_blockLookback ".} =
  var nimfunc = cast[ptr QsciLexerBashblockLookbackProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerBashblockStart*(self: gen_qscilexerbash_types.QsciLexerBash, style: ptr cint): cstring =
  (fQsciLexerBash_virtualbase_blockStart(self.h, style))

type QsciLexerBashblockStartProc* = proc(style: ptr cint): cstring
proc onblockStart*(self: gen_qscilexerbash_types.QsciLexerBash, slot: QsciLexerBashblockStartProc) =
  # TODO check subclass
  var tmp = new QsciLexerBashblockStartProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_blockStart(self: ptr cQsciLexerBash, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerBash_blockStart ".} =
  var nimfunc = cast[ptr QsciLexerBashblockStartProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerBashblockStartKeyword*(self: gen_qscilexerbash_types.QsciLexerBash, style: ptr cint): cstring =
  (fQsciLexerBash_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerBashblockStartKeywordProc* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: gen_qscilexerbash_types.QsciLexerBash, slot: QsciLexerBashblockStartKeywordProc) =
  # TODO check subclass
  var tmp = new QsciLexerBashblockStartKeywordProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_blockStartKeyword(self: ptr cQsciLexerBash, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerBash_blockStartKeyword ".} =
  var nimfunc = cast[ptr QsciLexerBashblockStartKeywordProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerBashbraceStyle*(self: gen_qscilexerbash_types.QsciLexerBash, ): cint =
  fQsciLexerBash_virtualbase_braceStyle(self.h)

type QsciLexerBashbraceStyleProc* = proc(): cint
proc onbraceStyle*(self: gen_qscilexerbash_types.QsciLexerBash, slot: QsciLexerBashbraceStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerBashbraceStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_braceStyle(self: ptr cQsciLexerBash, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerBash_braceStyle ".} =
  var nimfunc = cast[ptr QsciLexerBashbraceStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerBashcaseSensitive*(self: gen_qscilexerbash_types.QsciLexerBash, ): bool =
  fQsciLexerBash_virtualbase_caseSensitive(self.h)

type QsciLexerBashcaseSensitiveProc* = proc(): bool
proc oncaseSensitive*(self: gen_qscilexerbash_types.QsciLexerBash, slot: QsciLexerBashcaseSensitiveProc) =
  # TODO check subclass
  var tmp = new QsciLexerBashcaseSensitiveProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_caseSensitive(self: ptr cQsciLexerBash, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerBash_caseSensitive ".} =
  var nimfunc = cast[ptr QsciLexerBashcaseSensitiveProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerBashcolor*(self: gen_qscilexerbash_types.QsciLexerBash, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerBash_virtualbase_color(self.h, style))

type QsciLexerBashcolorProc* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: gen_qscilexerbash_types.QsciLexerBash, slot: QsciLexerBashcolorProc) =
  # TODO check subclass
  var tmp = new QsciLexerBashcolorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_color(self: ptr cQsciLexerBash, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerBash_color ".} =
  var nimfunc = cast[ptr QsciLexerBashcolorProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerBasheolFill*(self: gen_qscilexerbash_types.QsciLexerBash, style: cint): bool =
  fQsciLexerBash_virtualbase_eolFill(self.h, style)

type QsciLexerBasheolFillProc* = proc(style: cint): bool
proc oneolFill*(self: gen_qscilexerbash_types.QsciLexerBash, slot: QsciLexerBasheolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerBasheolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_eolFill(self: ptr cQsciLexerBash, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerBash_eolFill ".} =
  var nimfunc = cast[ptr QsciLexerBasheolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerBashfont*(self: gen_qscilexerbash_types.QsciLexerBash, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fQsciLexerBash_virtualbase_font(self.h, style))

type QsciLexerBashfontProc* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: gen_qscilexerbash_types.QsciLexerBash, slot: QsciLexerBashfontProc) =
  # TODO check subclass
  var tmp = new QsciLexerBashfontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_font(self: ptr cQsciLexerBash, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerBash_font ".} =
  var nimfunc = cast[ptr QsciLexerBashfontProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerBashindentationGuideView*(self: gen_qscilexerbash_types.QsciLexerBash, ): cint =
  fQsciLexerBash_virtualbase_indentationGuideView(self.h)

type QsciLexerBashindentationGuideViewProc* = proc(): cint
proc onindentationGuideView*(self: gen_qscilexerbash_types.QsciLexerBash, slot: QsciLexerBashindentationGuideViewProc) =
  # TODO check subclass
  var tmp = new QsciLexerBashindentationGuideViewProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_indentationGuideView(self: ptr cQsciLexerBash, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerBash_indentationGuideView ".} =
  var nimfunc = cast[ptr QsciLexerBashindentationGuideViewProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerBashkeywords*(self: gen_qscilexerbash_types.QsciLexerBash, set: cint): cstring =
  (fQsciLexerBash_virtualbase_keywords(self.h, set))

type QsciLexerBashkeywordsProc* = proc(set: cint): cstring
proc onkeywords*(self: gen_qscilexerbash_types.QsciLexerBash, slot: QsciLexerBashkeywordsProc) =
  # TODO check subclass
  var tmp = new QsciLexerBashkeywordsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_keywords(self: ptr cQsciLexerBash, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerBash_keywords ".} =
  var nimfunc = cast[ptr QsciLexerBashkeywordsProc](cast[pointer](slot))
  let slotval1 = set


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerBashdefaultStyle*(self: gen_qscilexerbash_types.QsciLexerBash, ): cint =
  fQsciLexerBash_virtualbase_defaultStyle(self.h)

type QsciLexerBashdefaultStyleProc* = proc(): cint
proc ondefaultStyle*(self: gen_qscilexerbash_types.QsciLexerBash, slot: QsciLexerBashdefaultStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerBashdefaultStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_defaultStyle(self: ptr cQsciLexerBash, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerBash_defaultStyle ".} =
  var nimfunc = cast[ptr QsciLexerBashdefaultStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QsciLexerBashdescriptionProc* = proc(style: cint): string
proc ondescription*(self: gen_qscilexerbash_types.QsciLexerBash, slot: QsciLexerBashdescriptionProc) =
  # TODO check subclass
  var tmp = new QsciLexerBashdescriptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_description(self: ptr cQsciLexerBash, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerBash_description ".} =
  var nimfunc = cast[ptr QsciLexerBashdescriptionProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc QsciLexerBashpaper*(self: gen_qscilexerbash_types.QsciLexerBash, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerBash_virtualbase_paper(self.h, style))

type QsciLexerBashpaperProc* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: gen_qscilexerbash_types.QsciLexerBash, slot: QsciLexerBashpaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerBashpaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_paper(self: ptr cQsciLexerBash, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerBash_paper ".} =
  var nimfunc = cast[ptr QsciLexerBashpaperProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerBashdefaultColor*(self: gen_qscilexerbash_types.QsciLexerBash, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerBash_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerBashdefaultColorWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColor*(self: gen_qscilexerbash_types.QsciLexerBash, slot: QsciLexerBashdefaultColorWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerBashdefaultColorWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_defaultColorWithStyle(self: ptr cQsciLexerBash, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerBash_defaultColorWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerBashdefaultColorWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerBashdefaultEolFill*(self: gen_qscilexerbash_types.QsciLexerBash, style: cint): bool =
  fQsciLexerBash_virtualbase_defaultEolFill(self.h, style)

type QsciLexerBashdefaultEolFillProc* = proc(style: cint): bool
proc ondefaultEolFill*(self: gen_qscilexerbash_types.QsciLexerBash, slot: QsciLexerBashdefaultEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerBashdefaultEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_defaultEolFill(self: ptr cQsciLexerBash, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerBash_defaultEolFill ".} =
  var nimfunc = cast[ptr QsciLexerBashdefaultEolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerBashdefaultFont*(self: gen_qscilexerbash_types.QsciLexerBash, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fQsciLexerBash_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerBashdefaultFontWithStyleProc* = proc(style: cint): gen_qfont.QFont
proc ondefaultFont*(self: gen_qscilexerbash_types.QsciLexerBash, slot: QsciLexerBashdefaultFontWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerBashdefaultFontWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_defaultFontWithStyle(self: ptr cQsciLexerBash, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerBash_defaultFontWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerBashdefaultFontWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerBashdefaultPaper*(self: gen_qscilexerbash_types.QsciLexerBash, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerBash_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerBashdefaultPaperWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaper*(self: gen_qscilexerbash_types.QsciLexerBash, slot: QsciLexerBashdefaultPaperWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerBashdefaultPaperWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_defaultPaperWithStyle(self: ptr cQsciLexerBash, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerBash_defaultPaperWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerBashdefaultPaperWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerBashsetEditor*(self: gen_qscilexerbash_types.QsciLexerBash, editor: gen_qsciscintilla.QsciScintilla): void =
  fQsciLexerBash_virtualbase_setEditor(self.h, editor.h)

type QsciLexerBashsetEditorProc* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: gen_qscilexerbash_types.QsciLexerBash, slot: QsciLexerBashsetEditorProc) =
  # TODO check subclass
  var tmp = new QsciLexerBashsetEditorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_setEditor(self: ptr cQsciLexerBash, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerBash_setEditor ".} =
  var nimfunc = cast[ptr QsciLexerBashsetEditorProc](cast[pointer](slot))
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](slotval1)
proc QsciLexerBashrefreshProperties*(self: gen_qscilexerbash_types.QsciLexerBash, ): void =
  fQsciLexerBash_virtualbase_refreshProperties(self.h)

type QsciLexerBashrefreshPropertiesProc* = proc(): void
proc onrefreshProperties*(self: gen_qscilexerbash_types.QsciLexerBash, slot: QsciLexerBashrefreshPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerBashrefreshPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_refreshProperties(self: ptr cQsciLexerBash, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerBash_refreshProperties ".} =
  var nimfunc = cast[ptr QsciLexerBashrefreshPropertiesProc](cast[pointer](slot))

  nimfunc[]()
proc QsciLexerBashstyleBitsNeeded*(self: gen_qscilexerbash_types.QsciLexerBash, ): cint =
  fQsciLexerBash_virtualbase_styleBitsNeeded(self.h)

type QsciLexerBashstyleBitsNeededProc* = proc(): cint
proc onstyleBitsNeeded*(self: gen_qscilexerbash_types.QsciLexerBash, slot: QsciLexerBashstyleBitsNeededProc) =
  # TODO check subclass
  var tmp = new QsciLexerBashstyleBitsNeededProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_styleBitsNeeded(self: ptr cQsciLexerBash, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerBash_styleBitsNeeded ".} =
  var nimfunc = cast[ptr QsciLexerBashstyleBitsNeededProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerBashwordCharacters*(self: gen_qscilexerbash_types.QsciLexerBash, ): cstring =
  (fQsciLexerBash_virtualbase_wordCharacters(self.h))

type QsciLexerBashwordCharactersProc* = proc(): cstring
proc onwordCharacters*(self: gen_qscilexerbash_types.QsciLexerBash, slot: QsciLexerBashwordCharactersProc) =
  # TODO check subclass
  var tmp = new QsciLexerBashwordCharactersProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_wordCharacters(self: ptr cQsciLexerBash, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerBash_wordCharacters ".} =
  var nimfunc = cast[ptr QsciLexerBashwordCharactersProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerBashsetAutoIndentStyle*(self: gen_qscilexerbash_types.QsciLexerBash, autoindentstyle: cint): void =
  fQsciLexerBash_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerBashsetAutoIndentStyleProc* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: gen_qscilexerbash_types.QsciLexerBash, slot: QsciLexerBashsetAutoIndentStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerBashsetAutoIndentStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_setAutoIndentStyle(self: ptr cQsciLexerBash, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerBash_setAutoIndentStyle ".} =
  var nimfunc = cast[ptr QsciLexerBashsetAutoIndentStyleProc](cast[pointer](slot))
  let slotval1 = autoindentstyle


  nimfunc[](slotval1)
proc QsciLexerBashsetColor*(self: gen_qscilexerbash_types.QsciLexerBash, c: gen_qcolor.QColor, style: cint): void =
  fQsciLexerBash_virtualbase_setColor(self.h, c.h, style)

type QsciLexerBashsetColorProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: gen_qscilexerbash_types.QsciLexerBash, slot: QsciLexerBashsetColorProc) =
  # TODO check subclass
  var tmp = new QsciLexerBashsetColorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_setColor(self: ptr cQsciLexerBash, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerBash_setColor ".} =
  var nimfunc = cast[ptr QsciLexerBashsetColorProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerBashsetEolFill*(self: gen_qscilexerbash_types.QsciLexerBash, eoffill: bool, style: cint): void =
  fQsciLexerBash_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerBashsetEolFillProc* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: gen_qscilexerbash_types.QsciLexerBash, slot: QsciLexerBashsetEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerBashsetEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_setEolFill(self: ptr cQsciLexerBash, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerBash_setEolFill ".} =
  var nimfunc = cast[ptr QsciLexerBashsetEolFillProc](cast[pointer](slot))
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerBashsetFont*(self: gen_qscilexerbash_types.QsciLexerBash, f: gen_qfont.QFont, style: cint): void =
  fQsciLexerBash_virtualbase_setFont(self.h, f.h, style)

type QsciLexerBashsetFontProc* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: gen_qscilexerbash_types.QsciLexerBash, slot: QsciLexerBashsetFontProc) =
  # TODO check subclass
  var tmp = new QsciLexerBashsetFontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_setFont(self: ptr cQsciLexerBash, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerBash_setFont ".} =
  var nimfunc = cast[ptr QsciLexerBashsetFontProc](cast[pointer](slot))
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerBashsetPaper*(self: gen_qscilexerbash_types.QsciLexerBash, c: gen_qcolor.QColor, style: cint): void =
  fQsciLexerBash_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerBashsetPaperProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: gen_qscilexerbash_types.QsciLexerBash, slot: QsciLexerBashsetPaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerBashsetPaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_setPaper(self: ptr cQsciLexerBash, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerBash_setPaper ".} =
  var nimfunc = cast[ptr QsciLexerBashsetPaperProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerBashreadProperties*(self: gen_qscilexerbash_types.QsciLexerBash, qs: gen_qsettings.QSettings, prefix: string): bool =
  fQsciLexerBash_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerBashreadPropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: gen_qscilexerbash_types.QsciLexerBash, slot: QsciLexerBashreadPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerBashreadPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_readProperties(self: ptr cQsciLexerBash, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerBash_readProperties ".} =
  var nimfunc = cast[ptr QsciLexerBashreadPropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerBashwriteProperties*(self: gen_qscilexerbash_types.QsciLexerBash, qs: gen_qsettings.QSettings, prefix: string): bool =
  fQsciLexerBash_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerBashwritePropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: gen_qscilexerbash_types.QsciLexerBash, slot: QsciLexerBashwritePropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerBashwritePropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_writeProperties(self: ptr cQsciLexerBash, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerBash_writeProperties ".} =
  var nimfunc = cast[ptr QsciLexerBashwritePropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerBashevent*(self: gen_qscilexerbash_types.QsciLexerBash, event: gen_qcoreevent.QEvent): bool =
  fQsciLexerBash_virtualbase_event(self.h, event.h)

type QsciLexerBasheventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qscilexerbash_types.QsciLexerBash, slot: QsciLexerBasheventProc) =
  # TODO check subclass
  var tmp = new QsciLexerBasheventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_event(self: ptr cQsciLexerBash, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerBash_event ".} =
  var nimfunc = cast[ptr QsciLexerBasheventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerBasheventFilter*(self: gen_qscilexerbash_types.QsciLexerBash, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =
  fQsciLexerBash_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerBasheventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qscilexerbash_types.QsciLexerBash, slot: QsciLexerBasheventFilterProc) =
  # TODO check subclass
  var tmp = new QsciLexerBasheventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_eventFilter(self: ptr cQsciLexerBash, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerBash_eventFilter ".} =
  var nimfunc = cast[ptr QsciLexerBasheventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerBashtimerEvent*(self: gen_qscilexerbash_types.QsciLexerBash, event: gen_qcoreevent.QTimerEvent): void =
  fQsciLexerBash_virtualbase_timerEvent(self.h, event.h)

type QsciLexerBashtimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qscilexerbash_types.QsciLexerBash, slot: QsciLexerBashtimerEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerBashtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_timerEvent(self: ptr cQsciLexerBash, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerBash_timerEvent ".} =
  var nimfunc = cast[ptr QsciLexerBashtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerBashchildEvent*(self: gen_qscilexerbash_types.QsciLexerBash, event: gen_qcoreevent.QChildEvent): void =
  fQsciLexerBash_virtualbase_childEvent(self.h, event.h)

type QsciLexerBashchildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qscilexerbash_types.QsciLexerBash, slot: QsciLexerBashchildEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerBashchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_childEvent(self: ptr cQsciLexerBash, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerBash_childEvent ".} =
  var nimfunc = cast[ptr QsciLexerBashchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerBashcustomEvent*(self: gen_qscilexerbash_types.QsciLexerBash, event: gen_qcoreevent.QEvent): void =
  fQsciLexerBash_virtualbase_customEvent(self.h, event.h)

type QsciLexerBashcustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qscilexerbash_types.QsciLexerBash, slot: QsciLexerBashcustomEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerBashcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_customEvent(self: ptr cQsciLexerBash, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerBash_customEvent ".} =
  var nimfunc = cast[ptr QsciLexerBashcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerBashconnectNotify*(self: gen_qscilexerbash_types.QsciLexerBash, signal: gen_qmetaobject.QMetaMethod): void =
  fQsciLexerBash_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerBashconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qscilexerbash_types.QsciLexerBash, slot: QsciLexerBashconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerBashconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_connectNotify(self: ptr cQsciLexerBash, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerBash_connectNotify ".} =
  var nimfunc = cast[ptr QsciLexerBashconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QsciLexerBashdisconnectNotify*(self: gen_qscilexerbash_types.QsciLexerBash, signal: gen_qmetaobject.QMetaMethod): void =
  fQsciLexerBash_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerBashdisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qscilexerbash_types.QsciLexerBash, slot: QsciLexerBashdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerBashdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_disconnectNotify(self: ptr cQsciLexerBash, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerBash_disconnectNotify ".} =
  var nimfunc = cast[ptr QsciLexerBashdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qscilexerbash_types.QsciLexerBash): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerBash_staticMetaObject())
proc delete*(self: gen_qscilexerbash_types.QsciLexerBash) =
  fcQsciLexerBash_delete(self.h)
