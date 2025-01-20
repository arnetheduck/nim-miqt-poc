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
{.compile("gen_qscilexeravs.cpp", cflags).}


type QsciLexerAVSEnumEnum* = distinct cint
template Default*(_: type QsciLexerAVSEnumEnum): untyped = 0
template BlockComment*(_: type QsciLexerAVSEnumEnum): untyped = 1
template NestedBlockComment*(_: type QsciLexerAVSEnumEnum): untyped = 2
template LineComment*(_: type QsciLexerAVSEnumEnum): untyped = 3
template Number*(_: type QsciLexerAVSEnumEnum): untyped = 4
template Operator*(_: type QsciLexerAVSEnumEnum): untyped = 5
template Identifier*(_: type QsciLexerAVSEnumEnum): untyped = 6
template String*(_: type QsciLexerAVSEnumEnum): untyped = 7
template TripleString*(_: type QsciLexerAVSEnumEnum): untyped = 8
template Keyword*(_: type QsciLexerAVSEnumEnum): untyped = 9
template Filter*(_: type QsciLexerAVSEnumEnum): untyped = 10
template Plugin*(_: type QsciLexerAVSEnumEnum): untyped = 11
template Function*(_: type QsciLexerAVSEnumEnum): untyped = 12
template ClipProperty*(_: type QsciLexerAVSEnumEnum): untyped = 13
template KeywordSet6*(_: type QsciLexerAVSEnumEnum): untyped = 14


import gen_qscilexeravs_types
export gen_qscilexeravs_types

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

type cQsciLexerAVS*{.exportc: "QsciLexerAVS", incompleteStruct.} = object

proc fcQsciLexerAVS_new(): ptr cQsciLexerAVS {.importc: "QsciLexerAVS_new".}
proc fcQsciLexerAVS_new2(parent: pointer): ptr cQsciLexerAVS {.importc: "QsciLexerAVS_new2".}
proc fcQsciLexerAVS_metaObject(self: pointer, ): pointer {.importc: "QsciLexerAVS_metaObject".}
proc fcQsciLexerAVS_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerAVS_metacast".}
proc fcQsciLexerAVS_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerAVS_metacall".}
proc fcQsciLexerAVS_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerAVS_tr".}
proc fcQsciLexerAVS_language(self: pointer, ): cstring {.importc: "QsciLexerAVS_language".}
proc fcQsciLexerAVS_lexer(self: pointer, ): cstring {.importc: "QsciLexerAVS_lexer".}
proc fcQsciLexerAVS_braceStyle(self: pointer, ): cint {.importc: "QsciLexerAVS_braceStyle".}
proc fcQsciLexerAVS_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerAVS_wordCharacters".}
proc fcQsciLexerAVS_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerAVS_defaultColor".}
proc fcQsciLexerAVS_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerAVS_defaultFont".}
proc fcQsciLexerAVS_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerAVS_keywords".}
proc fcQsciLexerAVS_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerAVS_description".}
proc fcQsciLexerAVS_refreshProperties(self: pointer, ): void {.importc: "QsciLexerAVS_refreshProperties".}
proc fcQsciLexerAVS_foldComments(self: pointer, ): bool {.importc: "QsciLexerAVS_foldComments".}
proc fcQsciLexerAVS_foldCompact(self: pointer, ): bool {.importc: "QsciLexerAVS_foldCompact".}
proc fcQsciLexerAVS_setFoldComments(self: pointer, fold: bool): void {.importc: "QsciLexerAVS_setFoldComments".}
proc fcQsciLexerAVS_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerAVS_setFoldCompact".}
proc fcQsciLexerAVS_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerAVS_tr2".}
proc fcQsciLexerAVS_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerAVS_tr3".}
proc fQsciLexerAVS_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QsciLexerAVS_virtualbase_metaObject".}
proc fcQsciLexerAVS_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_metaObject".}
proc fQsciLexerAVS_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QsciLexerAVS_virtualbase_metacast".}
proc fcQsciLexerAVS_override_virtual_metacast(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_metacast".}
proc fQsciLexerAVS_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciLexerAVS_virtualbase_metacall".}
proc fcQsciLexerAVS_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_metacall".}
proc fQsciLexerAVS_virtualbase_setFoldComments(self: pointer, fold: bool): void{.importc: "QsciLexerAVS_virtualbase_setFoldComments".}
proc fcQsciLexerAVS_override_virtual_setFoldComments(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_setFoldComments".}
proc fQsciLexerAVS_virtualbase_setFoldCompact(self: pointer, fold: bool): void{.importc: "QsciLexerAVS_virtualbase_setFoldCompact".}
proc fcQsciLexerAVS_override_virtual_setFoldCompact(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_setFoldCompact".}
proc fcQsciLexerAVS_override_virtual_language(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_language".}
proc fQsciLexerAVS_virtualbase_lexer(self: pointer, ): cstring{.importc: "QsciLexerAVS_virtualbase_lexer".}
proc fcQsciLexerAVS_override_virtual_lexer(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_lexer".}
proc fQsciLexerAVS_virtualbase_lexerId(self: pointer, ): cint{.importc: "QsciLexerAVS_virtualbase_lexerId".}
proc fcQsciLexerAVS_override_virtual_lexerId(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_lexerId".}
proc fQsciLexerAVS_virtualbase_autoCompletionFillups(self: pointer, ): cstring{.importc: "QsciLexerAVS_virtualbase_autoCompletionFillups".}
proc fcQsciLexerAVS_override_virtual_autoCompletionFillups(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_autoCompletionFillups".}
proc fQsciLexerAVS_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array{.importc: "QsciLexerAVS_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerAVS_override_virtual_autoCompletionWordSeparators(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_autoCompletionWordSeparators".}
proc fQsciLexerAVS_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerAVS_virtualbase_blockEnd".}
proc fcQsciLexerAVS_override_virtual_blockEnd(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_blockEnd".}
proc fQsciLexerAVS_virtualbase_blockLookback(self: pointer, ): cint{.importc: "QsciLexerAVS_virtualbase_blockLookback".}
proc fcQsciLexerAVS_override_virtual_blockLookback(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_blockLookback".}
proc fQsciLexerAVS_virtualbase_blockStart(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerAVS_virtualbase_blockStart".}
proc fcQsciLexerAVS_override_virtual_blockStart(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_blockStart".}
proc fQsciLexerAVS_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerAVS_virtualbase_blockStartKeyword".}
proc fcQsciLexerAVS_override_virtual_blockStartKeyword(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_blockStartKeyword".}
proc fQsciLexerAVS_virtualbase_braceStyle(self: pointer, ): cint{.importc: "QsciLexerAVS_virtualbase_braceStyle".}
proc fcQsciLexerAVS_override_virtual_braceStyle(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_braceStyle".}
proc fQsciLexerAVS_virtualbase_caseSensitive(self: pointer, ): bool{.importc: "QsciLexerAVS_virtualbase_caseSensitive".}
proc fcQsciLexerAVS_override_virtual_caseSensitive(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_caseSensitive".}
proc fQsciLexerAVS_virtualbase_color(self: pointer, style: cint): pointer{.importc: "QsciLexerAVS_virtualbase_color".}
proc fcQsciLexerAVS_override_virtual_color(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_color".}
proc fQsciLexerAVS_virtualbase_eolFill(self: pointer, style: cint): bool{.importc: "QsciLexerAVS_virtualbase_eolFill".}
proc fcQsciLexerAVS_override_virtual_eolFill(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_eolFill".}
proc fQsciLexerAVS_virtualbase_font(self: pointer, style: cint): pointer{.importc: "QsciLexerAVS_virtualbase_font".}
proc fcQsciLexerAVS_override_virtual_font(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_font".}
proc fQsciLexerAVS_virtualbase_indentationGuideView(self: pointer, ): cint{.importc: "QsciLexerAVS_virtualbase_indentationGuideView".}
proc fcQsciLexerAVS_override_virtual_indentationGuideView(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_indentationGuideView".}
proc fQsciLexerAVS_virtualbase_keywords(self: pointer, set: cint): cstring{.importc: "QsciLexerAVS_virtualbase_keywords".}
proc fcQsciLexerAVS_override_virtual_keywords(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_keywords".}
proc fQsciLexerAVS_virtualbase_defaultStyle(self: pointer, ): cint{.importc: "QsciLexerAVS_virtualbase_defaultStyle".}
proc fcQsciLexerAVS_override_virtual_defaultStyle(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_defaultStyle".}
proc fcQsciLexerAVS_override_virtual_description(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_description".}
proc fQsciLexerAVS_virtualbase_paper(self: pointer, style: cint): pointer{.importc: "QsciLexerAVS_virtualbase_paper".}
proc fcQsciLexerAVS_override_virtual_paper(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_paper".}
proc fQsciLexerAVS_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerAVS_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerAVS_override_virtual_defaultColorWithStyle(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_defaultColorWithStyle".}
proc fQsciLexerAVS_virtualbase_defaultEolFill(self: pointer, style: cint): bool{.importc: "QsciLexerAVS_virtualbase_defaultEolFill".}
proc fcQsciLexerAVS_override_virtual_defaultEolFill(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_defaultEolFill".}
proc fQsciLexerAVS_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerAVS_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerAVS_override_virtual_defaultFontWithStyle(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_defaultFontWithStyle".}
proc fQsciLexerAVS_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerAVS_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerAVS_override_virtual_defaultPaperWithStyle(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_defaultPaperWithStyle".}
proc fQsciLexerAVS_virtualbase_setEditor(self: pointer, editor: pointer): void{.importc: "QsciLexerAVS_virtualbase_setEditor".}
proc fcQsciLexerAVS_override_virtual_setEditor(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_setEditor".}
proc fQsciLexerAVS_virtualbase_refreshProperties(self: pointer, ): void{.importc: "QsciLexerAVS_virtualbase_refreshProperties".}
proc fcQsciLexerAVS_override_virtual_refreshProperties(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_refreshProperties".}
proc fQsciLexerAVS_virtualbase_styleBitsNeeded(self: pointer, ): cint{.importc: "QsciLexerAVS_virtualbase_styleBitsNeeded".}
proc fcQsciLexerAVS_override_virtual_styleBitsNeeded(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_styleBitsNeeded".}
proc fQsciLexerAVS_virtualbase_wordCharacters(self: pointer, ): cstring{.importc: "QsciLexerAVS_virtualbase_wordCharacters".}
proc fcQsciLexerAVS_override_virtual_wordCharacters(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_wordCharacters".}
proc fQsciLexerAVS_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void{.importc: "QsciLexerAVS_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerAVS_override_virtual_setAutoIndentStyle(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_setAutoIndentStyle".}
proc fQsciLexerAVS_virtualbase_setColor(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerAVS_virtualbase_setColor".}
proc fcQsciLexerAVS_override_virtual_setColor(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_setColor".}
proc fQsciLexerAVS_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void{.importc: "QsciLexerAVS_virtualbase_setEolFill".}
proc fcQsciLexerAVS_override_virtual_setEolFill(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_setEolFill".}
proc fQsciLexerAVS_virtualbase_setFont(self: pointer, f: pointer, style: cint): void{.importc: "QsciLexerAVS_virtualbase_setFont".}
proc fcQsciLexerAVS_override_virtual_setFont(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_setFont".}
proc fQsciLexerAVS_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerAVS_virtualbase_setPaper".}
proc fcQsciLexerAVS_override_virtual_setPaper(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_setPaper".}
proc fQsciLexerAVS_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerAVS_virtualbase_readProperties".}
proc fcQsciLexerAVS_override_virtual_readProperties(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_readProperties".}
proc fQsciLexerAVS_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerAVS_virtualbase_writeProperties".}
proc fcQsciLexerAVS_override_virtual_writeProperties(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_writeProperties".}
proc fQsciLexerAVS_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QsciLexerAVS_virtualbase_event".}
proc fcQsciLexerAVS_override_virtual_event(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_event".}
proc fQsciLexerAVS_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciLexerAVS_virtualbase_eventFilter".}
proc fcQsciLexerAVS_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_eventFilter".}
proc fQsciLexerAVS_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciLexerAVS_virtualbase_timerEvent".}
proc fcQsciLexerAVS_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_timerEvent".}
proc fQsciLexerAVS_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciLexerAVS_virtualbase_childEvent".}
proc fcQsciLexerAVS_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_childEvent".}
proc fQsciLexerAVS_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciLexerAVS_virtualbase_customEvent".}
proc fcQsciLexerAVS_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_customEvent".}
proc fQsciLexerAVS_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerAVS_virtualbase_connectNotify".}
proc fcQsciLexerAVS_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_connectNotify".}
proc fQsciLexerAVS_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerAVS_virtualbase_disconnectNotify".}
proc fcQsciLexerAVS_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_disconnectNotify".}
proc fcQsciLexerAVS_staticMetaObject(): pointer {.importc: "QsciLexerAVS_staticMetaObject".}
proc fcQsciLexerAVS_delete(self: pointer) {.importc: "QsciLexerAVS_delete".}


func init*(T: type gen_qscilexeravs_types.QsciLexerAVS, h: ptr cQsciLexerAVS): gen_qscilexeravs_types.QsciLexerAVS =
  T(h: h)
proc create*(T: type gen_qscilexeravs_types.QsciLexerAVS, ): gen_qscilexeravs_types.QsciLexerAVS =
  gen_qscilexeravs_types.QsciLexerAVS.init(fcQsciLexerAVS_new())

proc create*(T: type gen_qscilexeravs_types.QsciLexerAVS, parent: gen_qobject.QObject): gen_qscilexeravs_types.QsciLexerAVS =
  gen_qscilexeravs_types.QsciLexerAVS.init(fcQsciLexerAVS_new2(parent.h))

proc metaObject*(self: gen_qscilexeravs_types.QsciLexerAVS, ): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerAVS_metaObject(self.h))

proc metacast*(self: gen_qscilexeravs_types.QsciLexerAVS, param1: cstring): pointer =
  fcQsciLexerAVS_metacast(self.h, param1)

proc metacall*(self: gen_qscilexeravs_types.QsciLexerAVS, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerAVS_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexeravs_types.QsciLexerAVS, s: cstring): string =
  let v_ms = fcQsciLexerAVS_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexeravs_types.QsciLexerAVS, ): cstring =
  (fcQsciLexerAVS_language(self.h))

proc lexer*(self: gen_qscilexeravs_types.QsciLexerAVS, ): cstring =
  (fcQsciLexerAVS_lexer(self.h))

proc braceStyle*(self: gen_qscilexeravs_types.QsciLexerAVS, ): cint =
  fcQsciLexerAVS_braceStyle(self.h)

proc wordCharacters*(self: gen_qscilexeravs_types.QsciLexerAVS, ): cstring =
  (fcQsciLexerAVS_wordCharacters(self.h))

proc defaultColor*(self: gen_qscilexeravs_types.QsciLexerAVS, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fcQsciLexerAVS_defaultColor(self.h, style))

proc defaultFont*(self: gen_qscilexeravs_types.QsciLexerAVS, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fcQsciLexerAVS_defaultFont(self.h, style))

proc keywords*(self: gen_qscilexeravs_types.QsciLexerAVS, set: cint): cstring =
  (fcQsciLexerAVS_keywords(self.h, set))

proc description*(self: gen_qscilexeravs_types.QsciLexerAVS, style: cint): string =
  let v_ms = fcQsciLexerAVS_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: gen_qscilexeravs_types.QsciLexerAVS, ): void =
  fcQsciLexerAVS_refreshProperties(self.h)

proc foldComments*(self: gen_qscilexeravs_types.QsciLexerAVS, ): bool =
  fcQsciLexerAVS_foldComments(self.h)

proc foldCompact*(self: gen_qscilexeravs_types.QsciLexerAVS, ): bool =
  fcQsciLexerAVS_foldCompact(self.h)

proc setFoldComments*(self: gen_qscilexeravs_types.QsciLexerAVS, fold: bool): void =
  fcQsciLexerAVS_setFoldComments(self.h, fold)

proc setFoldCompact*(self: gen_qscilexeravs_types.QsciLexerAVS, fold: bool): void =
  fcQsciLexerAVS_setFoldCompact(self.h, fold)

proc tr*(_: type gen_qscilexeravs_types.QsciLexerAVS, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerAVS_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexeravs_types.QsciLexerAVS, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerAVS_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QsciLexerAVSmetaObject*(self: gen_qscilexeravs_types.QsciLexerAVS, ): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fQsciLexerAVS_virtualbase_metaObject(self.h))

type QsciLexerAVSmetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qscilexeravs_types.QsciLexerAVS, slot: QsciLexerAVSmetaObjectProc) =
  # TODO check subclass
  var tmp = new QsciLexerAVSmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_metaObject(self: ptr cQsciLexerAVS, slot: int): pointer {.exportc: "miqt_exec_callback_QsciLexerAVS_metaObject ".} =
  var nimfunc = cast[ptr QsciLexerAVSmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QsciLexerAVSmetacast*(self: gen_qscilexeravs_types.QsciLexerAVS, param1: cstring): pointer =
  fQsciLexerAVS_virtualbase_metacast(self.h, param1)

type QsciLexerAVSmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qscilexeravs_types.QsciLexerAVS, slot: QsciLexerAVSmetacastProc) =
  # TODO check subclass
  var tmp = new QsciLexerAVSmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_metacast(self: ptr cQsciLexerAVS, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciLexerAVS_metacast ".} =
  var nimfunc = cast[ptr QsciLexerAVSmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerAVSmetacall*(self: gen_qscilexeravs_types.QsciLexerAVS, param1: cint, param2: cint, param3: pointer): cint =
  fQsciLexerAVS_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerAVSmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qscilexeravs_types.QsciLexerAVS, slot: QsciLexerAVSmetacallProc) =
  # TODO check subclass
  var tmp = new QsciLexerAVSmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_metacall(self: ptr cQsciLexerAVS, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerAVS_metacall ".} =
  var nimfunc = cast[ptr QsciLexerAVSmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QsciLexerAVSsetFoldComments*(self: gen_qscilexeravs_types.QsciLexerAVS, fold: bool): void =
  fQsciLexerAVS_virtualbase_setFoldComments(self.h, fold)

type QsciLexerAVSsetFoldCommentsProc* = proc(fold: bool): void
proc onsetFoldComments*(self: gen_qscilexeravs_types.QsciLexerAVS, slot: QsciLexerAVSsetFoldCommentsProc) =
  # TODO check subclass
  var tmp = new QsciLexerAVSsetFoldCommentsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_setFoldComments(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_setFoldComments(self: ptr cQsciLexerAVS, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerAVS_setFoldComments ".} =
  var nimfunc = cast[ptr QsciLexerAVSsetFoldCommentsProc](cast[pointer](slot))
  let slotval1 = fold


  nimfunc[](slotval1)
proc QsciLexerAVSsetFoldCompact*(self: gen_qscilexeravs_types.QsciLexerAVS, fold: bool): void =
  fQsciLexerAVS_virtualbase_setFoldCompact(self.h, fold)

type QsciLexerAVSsetFoldCompactProc* = proc(fold: bool): void
proc onsetFoldCompact*(self: gen_qscilexeravs_types.QsciLexerAVS, slot: QsciLexerAVSsetFoldCompactProc) =
  # TODO check subclass
  var tmp = new QsciLexerAVSsetFoldCompactProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_setFoldCompact(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_setFoldCompact(self: ptr cQsciLexerAVS, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerAVS_setFoldCompact ".} =
  var nimfunc = cast[ptr QsciLexerAVSsetFoldCompactProc](cast[pointer](slot))
  let slotval1 = fold


  nimfunc[](slotval1)
type QsciLexerAVSlanguageProc* = proc(): cstring
proc onlanguage*(self: gen_qscilexeravs_types.QsciLexerAVS, slot: QsciLexerAVSlanguageProc) =
  # TODO check subclass
  var tmp = new QsciLexerAVSlanguageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_language(self: ptr cQsciLexerAVS, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerAVS_language ".} =
  var nimfunc = cast[ptr QsciLexerAVSlanguageProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerAVSlexer*(self: gen_qscilexeravs_types.QsciLexerAVS, ): cstring =
  (fQsciLexerAVS_virtualbase_lexer(self.h))

type QsciLexerAVSlexerProc* = proc(): cstring
proc onlexer*(self: gen_qscilexeravs_types.QsciLexerAVS, slot: QsciLexerAVSlexerProc) =
  # TODO check subclass
  var tmp = new QsciLexerAVSlexerProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_lexer(self: ptr cQsciLexerAVS, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerAVS_lexer ".} =
  var nimfunc = cast[ptr QsciLexerAVSlexerProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerAVSlexerId*(self: gen_qscilexeravs_types.QsciLexerAVS, ): cint =
  fQsciLexerAVS_virtualbase_lexerId(self.h)

type QsciLexerAVSlexerIdProc* = proc(): cint
proc onlexerId*(self: gen_qscilexeravs_types.QsciLexerAVS, slot: QsciLexerAVSlexerIdProc) =
  # TODO check subclass
  var tmp = new QsciLexerAVSlexerIdProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_lexerId(self: ptr cQsciLexerAVS, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerAVS_lexerId ".} =
  var nimfunc = cast[ptr QsciLexerAVSlexerIdProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerAVSautoCompletionFillups*(self: gen_qscilexeravs_types.QsciLexerAVS, ): cstring =
  (fQsciLexerAVS_virtualbase_autoCompletionFillups(self.h))

type QsciLexerAVSautoCompletionFillupsProc* = proc(): cstring
proc onautoCompletionFillups*(self: gen_qscilexeravs_types.QsciLexerAVS, slot: QsciLexerAVSautoCompletionFillupsProc) =
  # TODO check subclass
  var tmp = new QsciLexerAVSautoCompletionFillupsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_autoCompletionFillups(self: ptr cQsciLexerAVS, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerAVS_autoCompletionFillups ".} =
  var nimfunc = cast[ptr QsciLexerAVSautoCompletionFillupsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerAVSautoCompletionWordSeparators*(self: gen_qscilexeravs_types.QsciLexerAVS, ): seq[string] =
  var v_ma = fQsciLexerAVS_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerAVSautoCompletionWordSeparatorsProc* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: gen_qscilexeravs_types.QsciLexerAVS, slot: QsciLexerAVSautoCompletionWordSeparatorsProc) =
  # TODO check subclass
  var tmp = new QsciLexerAVSautoCompletionWordSeparatorsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_autoCompletionWordSeparators(self: ptr cQsciLexerAVS, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerAVS_autoCompletionWordSeparators ".} =
  var nimfunc = cast[ptr QsciLexerAVSautoCompletionWordSeparatorsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QsciLexerAVSblockEnd*(self: gen_qscilexeravs_types.QsciLexerAVS, style: ptr cint): cstring =
  (fQsciLexerAVS_virtualbase_blockEnd(self.h, style))

type QsciLexerAVSblockEndProc* = proc(style: ptr cint): cstring
proc onblockEnd*(self: gen_qscilexeravs_types.QsciLexerAVS, slot: QsciLexerAVSblockEndProc) =
  # TODO check subclass
  var tmp = new QsciLexerAVSblockEndProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_blockEnd(self: ptr cQsciLexerAVS, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerAVS_blockEnd ".} =
  var nimfunc = cast[ptr QsciLexerAVSblockEndProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerAVSblockLookback*(self: gen_qscilexeravs_types.QsciLexerAVS, ): cint =
  fQsciLexerAVS_virtualbase_blockLookback(self.h)

type QsciLexerAVSblockLookbackProc* = proc(): cint
proc onblockLookback*(self: gen_qscilexeravs_types.QsciLexerAVS, slot: QsciLexerAVSblockLookbackProc) =
  # TODO check subclass
  var tmp = new QsciLexerAVSblockLookbackProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_blockLookback(self: ptr cQsciLexerAVS, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerAVS_blockLookback ".} =
  var nimfunc = cast[ptr QsciLexerAVSblockLookbackProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerAVSblockStart*(self: gen_qscilexeravs_types.QsciLexerAVS, style: ptr cint): cstring =
  (fQsciLexerAVS_virtualbase_blockStart(self.h, style))

type QsciLexerAVSblockStartProc* = proc(style: ptr cint): cstring
proc onblockStart*(self: gen_qscilexeravs_types.QsciLexerAVS, slot: QsciLexerAVSblockStartProc) =
  # TODO check subclass
  var tmp = new QsciLexerAVSblockStartProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_blockStart(self: ptr cQsciLexerAVS, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerAVS_blockStart ".} =
  var nimfunc = cast[ptr QsciLexerAVSblockStartProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerAVSblockStartKeyword*(self: gen_qscilexeravs_types.QsciLexerAVS, style: ptr cint): cstring =
  (fQsciLexerAVS_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerAVSblockStartKeywordProc* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: gen_qscilexeravs_types.QsciLexerAVS, slot: QsciLexerAVSblockStartKeywordProc) =
  # TODO check subclass
  var tmp = new QsciLexerAVSblockStartKeywordProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_blockStartKeyword(self: ptr cQsciLexerAVS, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerAVS_blockStartKeyword ".} =
  var nimfunc = cast[ptr QsciLexerAVSblockStartKeywordProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerAVSbraceStyle*(self: gen_qscilexeravs_types.QsciLexerAVS, ): cint =
  fQsciLexerAVS_virtualbase_braceStyle(self.h)

type QsciLexerAVSbraceStyleProc* = proc(): cint
proc onbraceStyle*(self: gen_qscilexeravs_types.QsciLexerAVS, slot: QsciLexerAVSbraceStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerAVSbraceStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_braceStyle(self: ptr cQsciLexerAVS, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerAVS_braceStyle ".} =
  var nimfunc = cast[ptr QsciLexerAVSbraceStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerAVScaseSensitive*(self: gen_qscilexeravs_types.QsciLexerAVS, ): bool =
  fQsciLexerAVS_virtualbase_caseSensitive(self.h)

type QsciLexerAVScaseSensitiveProc* = proc(): bool
proc oncaseSensitive*(self: gen_qscilexeravs_types.QsciLexerAVS, slot: QsciLexerAVScaseSensitiveProc) =
  # TODO check subclass
  var tmp = new QsciLexerAVScaseSensitiveProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_caseSensitive(self: ptr cQsciLexerAVS, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerAVS_caseSensitive ".} =
  var nimfunc = cast[ptr QsciLexerAVScaseSensitiveProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerAVScolor*(self: gen_qscilexeravs_types.QsciLexerAVS, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerAVS_virtualbase_color(self.h, style))

type QsciLexerAVScolorProc* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: gen_qscilexeravs_types.QsciLexerAVS, slot: QsciLexerAVScolorProc) =
  # TODO check subclass
  var tmp = new QsciLexerAVScolorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_color(self: ptr cQsciLexerAVS, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerAVS_color ".} =
  var nimfunc = cast[ptr QsciLexerAVScolorProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerAVSeolFill*(self: gen_qscilexeravs_types.QsciLexerAVS, style: cint): bool =
  fQsciLexerAVS_virtualbase_eolFill(self.h, style)

type QsciLexerAVSeolFillProc* = proc(style: cint): bool
proc oneolFill*(self: gen_qscilexeravs_types.QsciLexerAVS, slot: QsciLexerAVSeolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerAVSeolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_eolFill(self: ptr cQsciLexerAVS, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerAVS_eolFill ".} =
  var nimfunc = cast[ptr QsciLexerAVSeolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerAVSfont*(self: gen_qscilexeravs_types.QsciLexerAVS, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fQsciLexerAVS_virtualbase_font(self.h, style))

type QsciLexerAVSfontProc* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: gen_qscilexeravs_types.QsciLexerAVS, slot: QsciLexerAVSfontProc) =
  # TODO check subclass
  var tmp = new QsciLexerAVSfontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_font(self: ptr cQsciLexerAVS, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerAVS_font ".} =
  var nimfunc = cast[ptr QsciLexerAVSfontProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerAVSindentationGuideView*(self: gen_qscilexeravs_types.QsciLexerAVS, ): cint =
  fQsciLexerAVS_virtualbase_indentationGuideView(self.h)

type QsciLexerAVSindentationGuideViewProc* = proc(): cint
proc onindentationGuideView*(self: gen_qscilexeravs_types.QsciLexerAVS, slot: QsciLexerAVSindentationGuideViewProc) =
  # TODO check subclass
  var tmp = new QsciLexerAVSindentationGuideViewProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_indentationGuideView(self: ptr cQsciLexerAVS, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerAVS_indentationGuideView ".} =
  var nimfunc = cast[ptr QsciLexerAVSindentationGuideViewProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerAVSkeywords*(self: gen_qscilexeravs_types.QsciLexerAVS, set: cint): cstring =
  (fQsciLexerAVS_virtualbase_keywords(self.h, set))

type QsciLexerAVSkeywordsProc* = proc(set: cint): cstring
proc onkeywords*(self: gen_qscilexeravs_types.QsciLexerAVS, slot: QsciLexerAVSkeywordsProc) =
  # TODO check subclass
  var tmp = new QsciLexerAVSkeywordsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_keywords(self: ptr cQsciLexerAVS, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerAVS_keywords ".} =
  var nimfunc = cast[ptr QsciLexerAVSkeywordsProc](cast[pointer](slot))
  let slotval1 = set


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerAVSdefaultStyle*(self: gen_qscilexeravs_types.QsciLexerAVS, ): cint =
  fQsciLexerAVS_virtualbase_defaultStyle(self.h)

type QsciLexerAVSdefaultStyleProc* = proc(): cint
proc ondefaultStyle*(self: gen_qscilexeravs_types.QsciLexerAVS, slot: QsciLexerAVSdefaultStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerAVSdefaultStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_defaultStyle(self: ptr cQsciLexerAVS, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerAVS_defaultStyle ".} =
  var nimfunc = cast[ptr QsciLexerAVSdefaultStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QsciLexerAVSdescriptionProc* = proc(style: cint): string
proc ondescription*(self: gen_qscilexeravs_types.QsciLexerAVS, slot: QsciLexerAVSdescriptionProc) =
  # TODO check subclass
  var tmp = new QsciLexerAVSdescriptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_description(self: ptr cQsciLexerAVS, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerAVS_description ".} =
  var nimfunc = cast[ptr QsciLexerAVSdescriptionProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc QsciLexerAVSpaper*(self: gen_qscilexeravs_types.QsciLexerAVS, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerAVS_virtualbase_paper(self.h, style))

type QsciLexerAVSpaperProc* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: gen_qscilexeravs_types.QsciLexerAVS, slot: QsciLexerAVSpaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerAVSpaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_paper(self: ptr cQsciLexerAVS, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerAVS_paper ".} =
  var nimfunc = cast[ptr QsciLexerAVSpaperProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerAVSdefaultColor*(self: gen_qscilexeravs_types.QsciLexerAVS, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerAVS_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerAVSdefaultColorWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColor*(self: gen_qscilexeravs_types.QsciLexerAVS, slot: QsciLexerAVSdefaultColorWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerAVSdefaultColorWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_defaultColorWithStyle(self: ptr cQsciLexerAVS, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerAVS_defaultColorWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerAVSdefaultColorWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerAVSdefaultEolFill*(self: gen_qscilexeravs_types.QsciLexerAVS, style: cint): bool =
  fQsciLexerAVS_virtualbase_defaultEolFill(self.h, style)

type QsciLexerAVSdefaultEolFillProc* = proc(style: cint): bool
proc ondefaultEolFill*(self: gen_qscilexeravs_types.QsciLexerAVS, slot: QsciLexerAVSdefaultEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerAVSdefaultEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_defaultEolFill(self: ptr cQsciLexerAVS, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerAVS_defaultEolFill ".} =
  var nimfunc = cast[ptr QsciLexerAVSdefaultEolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerAVSdefaultFont*(self: gen_qscilexeravs_types.QsciLexerAVS, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fQsciLexerAVS_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerAVSdefaultFontWithStyleProc* = proc(style: cint): gen_qfont.QFont
proc ondefaultFont*(self: gen_qscilexeravs_types.QsciLexerAVS, slot: QsciLexerAVSdefaultFontWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerAVSdefaultFontWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_defaultFontWithStyle(self: ptr cQsciLexerAVS, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerAVS_defaultFontWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerAVSdefaultFontWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerAVSdefaultPaper*(self: gen_qscilexeravs_types.QsciLexerAVS, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerAVS_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerAVSdefaultPaperWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaper*(self: gen_qscilexeravs_types.QsciLexerAVS, slot: QsciLexerAVSdefaultPaperWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerAVSdefaultPaperWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_defaultPaperWithStyle(self: ptr cQsciLexerAVS, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerAVS_defaultPaperWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerAVSdefaultPaperWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerAVSsetEditor*(self: gen_qscilexeravs_types.QsciLexerAVS, editor: gen_qsciscintilla.QsciScintilla): void =
  fQsciLexerAVS_virtualbase_setEditor(self.h, editor.h)

type QsciLexerAVSsetEditorProc* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: gen_qscilexeravs_types.QsciLexerAVS, slot: QsciLexerAVSsetEditorProc) =
  # TODO check subclass
  var tmp = new QsciLexerAVSsetEditorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_setEditor(self: ptr cQsciLexerAVS, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerAVS_setEditor ".} =
  var nimfunc = cast[ptr QsciLexerAVSsetEditorProc](cast[pointer](slot))
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](slotval1)
proc QsciLexerAVSrefreshProperties*(self: gen_qscilexeravs_types.QsciLexerAVS, ): void =
  fQsciLexerAVS_virtualbase_refreshProperties(self.h)

type QsciLexerAVSrefreshPropertiesProc* = proc(): void
proc onrefreshProperties*(self: gen_qscilexeravs_types.QsciLexerAVS, slot: QsciLexerAVSrefreshPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerAVSrefreshPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_refreshProperties(self: ptr cQsciLexerAVS, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerAVS_refreshProperties ".} =
  var nimfunc = cast[ptr QsciLexerAVSrefreshPropertiesProc](cast[pointer](slot))

  nimfunc[]()
proc QsciLexerAVSstyleBitsNeeded*(self: gen_qscilexeravs_types.QsciLexerAVS, ): cint =
  fQsciLexerAVS_virtualbase_styleBitsNeeded(self.h)

type QsciLexerAVSstyleBitsNeededProc* = proc(): cint
proc onstyleBitsNeeded*(self: gen_qscilexeravs_types.QsciLexerAVS, slot: QsciLexerAVSstyleBitsNeededProc) =
  # TODO check subclass
  var tmp = new QsciLexerAVSstyleBitsNeededProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_styleBitsNeeded(self: ptr cQsciLexerAVS, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerAVS_styleBitsNeeded ".} =
  var nimfunc = cast[ptr QsciLexerAVSstyleBitsNeededProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerAVSwordCharacters*(self: gen_qscilexeravs_types.QsciLexerAVS, ): cstring =
  (fQsciLexerAVS_virtualbase_wordCharacters(self.h))

type QsciLexerAVSwordCharactersProc* = proc(): cstring
proc onwordCharacters*(self: gen_qscilexeravs_types.QsciLexerAVS, slot: QsciLexerAVSwordCharactersProc) =
  # TODO check subclass
  var tmp = new QsciLexerAVSwordCharactersProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_wordCharacters(self: ptr cQsciLexerAVS, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerAVS_wordCharacters ".} =
  var nimfunc = cast[ptr QsciLexerAVSwordCharactersProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerAVSsetAutoIndentStyle*(self: gen_qscilexeravs_types.QsciLexerAVS, autoindentstyle: cint): void =
  fQsciLexerAVS_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerAVSsetAutoIndentStyleProc* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: gen_qscilexeravs_types.QsciLexerAVS, slot: QsciLexerAVSsetAutoIndentStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerAVSsetAutoIndentStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_setAutoIndentStyle(self: ptr cQsciLexerAVS, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerAVS_setAutoIndentStyle ".} =
  var nimfunc = cast[ptr QsciLexerAVSsetAutoIndentStyleProc](cast[pointer](slot))
  let slotval1 = autoindentstyle


  nimfunc[](slotval1)
proc QsciLexerAVSsetColor*(self: gen_qscilexeravs_types.QsciLexerAVS, c: gen_qcolor.QColor, style: cint): void =
  fQsciLexerAVS_virtualbase_setColor(self.h, c.h, style)

type QsciLexerAVSsetColorProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: gen_qscilexeravs_types.QsciLexerAVS, slot: QsciLexerAVSsetColorProc) =
  # TODO check subclass
  var tmp = new QsciLexerAVSsetColorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_setColor(self: ptr cQsciLexerAVS, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerAVS_setColor ".} =
  var nimfunc = cast[ptr QsciLexerAVSsetColorProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerAVSsetEolFill*(self: gen_qscilexeravs_types.QsciLexerAVS, eoffill: bool, style: cint): void =
  fQsciLexerAVS_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerAVSsetEolFillProc* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: gen_qscilexeravs_types.QsciLexerAVS, slot: QsciLexerAVSsetEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerAVSsetEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_setEolFill(self: ptr cQsciLexerAVS, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerAVS_setEolFill ".} =
  var nimfunc = cast[ptr QsciLexerAVSsetEolFillProc](cast[pointer](slot))
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerAVSsetFont*(self: gen_qscilexeravs_types.QsciLexerAVS, f: gen_qfont.QFont, style: cint): void =
  fQsciLexerAVS_virtualbase_setFont(self.h, f.h, style)

type QsciLexerAVSsetFontProc* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: gen_qscilexeravs_types.QsciLexerAVS, slot: QsciLexerAVSsetFontProc) =
  # TODO check subclass
  var tmp = new QsciLexerAVSsetFontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_setFont(self: ptr cQsciLexerAVS, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerAVS_setFont ".} =
  var nimfunc = cast[ptr QsciLexerAVSsetFontProc](cast[pointer](slot))
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerAVSsetPaper*(self: gen_qscilexeravs_types.QsciLexerAVS, c: gen_qcolor.QColor, style: cint): void =
  fQsciLexerAVS_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerAVSsetPaperProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: gen_qscilexeravs_types.QsciLexerAVS, slot: QsciLexerAVSsetPaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerAVSsetPaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_setPaper(self: ptr cQsciLexerAVS, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerAVS_setPaper ".} =
  var nimfunc = cast[ptr QsciLexerAVSsetPaperProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerAVSreadProperties*(self: gen_qscilexeravs_types.QsciLexerAVS, qs: gen_qsettings.QSettings, prefix: string): bool =
  fQsciLexerAVS_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerAVSreadPropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: gen_qscilexeravs_types.QsciLexerAVS, slot: QsciLexerAVSreadPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerAVSreadPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_readProperties(self: ptr cQsciLexerAVS, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerAVS_readProperties ".} =
  var nimfunc = cast[ptr QsciLexerAVSreadPropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerAVSwriteProperties*(self: gen_qscilexeravs_types.QsciLexerAVS, qs: gen_qsettings.QSettings, prefix: string): bool =
  fQsciLexerAVS_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerAVSwritePropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: gen_qscilexeravs_types.QsciLexerAVS, slot: QsciLexerAVSwritePropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerAVSwritePropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_writeProperties(self: ptr cQsciLexerAVS, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerAVS_writeProperties ".} =
  var nimfunc = cast[ptr QsciLexerAVSwritePropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerAVSevent*(self: gen_qscilexeravs_types.QsciLexerAVS, event: gen_qcoreevent.QEvent): bool =
  fQsciLexerAVS_virtualbase_event(self.h, event.h)

type QsciLexerAVSeventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qscilexeravs_types.QsciLexerAVS, slot: QsciLexerAVSeventProc) =
  # TODO check subclass
  var tmp = new QsciLexerAVSeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_event(self: ptr cQsciLexerAVS, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerAVS_event ".} =
  var nimfunc = cast[ptr QsciLexerAVSeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerAVSeventFilter*(self: gen_qscilexeravs_types.QsciLexerAVS, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =
  fQsciLexerAVS_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerAVSeventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qscilexeravs_types.QsciLexerAVS, slot: QsciLexerAVSeventFilterProc) =
  # TODO check subclass
  var tmp = new QsciLexerAVSeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_eventFilter(self: ptr cQsciLexerAVS, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerAVS_eventFilter ".} =
  var nimfunc = cast[ptr QsciLexerAVSeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerAVStimerEvent*(self: gen_qscilexeravs_types.QsciLexerAVS, event: gen_qcoreevent.QTimerEvent): void =
  fQsciLexerAVS_virtualbase_timerEvent(self.h, event.h)

type QsciLexerAVStimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qscilexeravs_types.QsciLexerAVS, slot: QsciLexerAVStimerEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerAVStimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_timerEvent(self: ptr cQsciLexerAVS, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerAVS_timerEvent ".} =
  var nimfunc = cast[ptr QsciLexerAVStimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerAVSchildEvent*(self: gen_qscilexeravs_types.QsciLexerAVS, event: gen_qcoreevent.QChildEvent): void =
  fQsciLexerAVS_virtualbase_childEvent(self.h, event.h)

type QsciLexerAVSchildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qscilexeravs_types.QsciLexerAVS, slot: QsciLexerAVSchildEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerAVSchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_childEvent(self: ptr cQsciLexerAVS, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerAVS_childEvent ".} =
  var nimfunc = cast[ptr QsciLexerAVSchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerAVScustomEvent*(self: gen_qscilexeravs_types.QsciLexerAVS, event: gen_qcoreevent.QEvent): void =
  fQsciLexerAVS_virtualbase_customEvent(self.h, event.h)

type QsciLexerAVScustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qscilexeravs_types.QsciLexerAVS, slot: QsciLexerAVScustomEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerAVScustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_customEvent(self: ptr cQsciLexerAVS, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerAVS_customEvent ".} =
  var nimfunc = cast[ptr QsciLexerAVScustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerAVSconnectNotify*(self: gen_qscilexeravs_types.QsciLexerAVS, signal: gen_qmetaobject.QMetaMethod): void =
  fQsciLexerAVS_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerAVSconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qscilexeravs_types.QsciLexerAVS, slot: QsciLexerAVSconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerAVSconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_connectNotify(self: ptr cQsciLexerAVS, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerAVS_connectNotify ".} =
  var nimfunc = cast[ptr QsciLexerAVSconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QsciLexerAVSdisconnectNotify*(self: gen_qscilexeravs_types.QsciLexerAVS, signal: gen_qmetaobject.QMetaMethod): void =
  fQsciLexerAVS_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerAVSdisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qscilexeravs_types.QsciLexerAVS, slot: QsciLexerAVSdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerAVSdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_disconnectNotify(self: ptr cQsciLexerAVS, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerAVS_disconnectNotify ".} =
  var nimfunc = cast[ptr QsciLexerAVSdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qscilexeravs_types.QsciLexerAVS): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerAVS_staticMetaObject())
proc delete*(self: gen_qscilexeravs_types.QsciLexerAVS) =
  fcQsciLexerAVS_delete(self.h)
