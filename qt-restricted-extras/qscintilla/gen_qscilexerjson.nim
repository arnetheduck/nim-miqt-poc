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
{.compile("gen_qscilexerjson.cpp", cflags).}


type QsciLexerJSONEnumEnum* = distinct cint
template Default*(_: type QsciLexerJSONEnumEnum): untyped = 0
template Number*(_: type QsciLexerJSONEnumEnum): untyped = 1
template String*(_: type QsciLexerJSONEnumEnum): untyped = 2
template UnclosedString*(_: type QsciLexerJSONEnumEnum): untyped = 3
template Property*(_: type QsciLexerJSONEnumEnum): untyped = 4
template EscapeSequence*(_: type QsciLexerJSONEnumEnum): untyped = 5
template CommentLine*(_: type QsciLexerJSONEnumEnum): untyped = 6
template CommentBlock*(_: type QsciLexerJSONEnumEnum): untyped = 7
template Operator*(_: type QsciLexerJSONEnumEnum): untyped = 8
template IRI*(_: type QsciLexerJSONEnumEnum): untyped = 9
template IRICompact*(_: type QsciLexerJSONEnumEnum): untyped = 10
template Keyword*(_: type QsciLexerJSONEnumEnum): untyped = 11
template KeywordLD*(_: type QsciLexerJSONEnumEnum): untyped = 12
template Error*(_: type QsciLexerJSONEnumEnum): untyped = 13


import gen_qscilexerjson_types
export gen_qscilexerjson_types

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

type cQsciLexerJSON*{.exportc: "QsciLexerJSON", incompleteStruct.} = object

proc fcQsciLexerJSON_new(): ptr cQsciLexerJSON {.importc: "QsciLexerJSON_new".}
proc fcQsciLexerJSON_new2(parent: pointer): ptr cQsciLexerJSON {.importc: "QsciLexerJSON_new2".}
proc fcQsciLexerJSON_metaObject(self: pointer, ): pointer {.importc: "QsciLexerJSON_metaObject".}
proc fcQsciLexerJSON_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerJSON_metacast".}
proc fcQsciLexerJSON_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerJSON_metacall".}
proc fcQsciLexerJSON_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerJSON_tr".}
proc fcQsciLexerJSON_trUtf8(s: cstring): struct_miqt_string {.importc: "QsciLexerJSON_trUtf8".}
proc fcQsciLexerJSON_language(self: pointer, ): cstring {.importc: "QsciLexerJSON_language".}
proc fcQsciLexerJSON_lexer(self: pointer, ): cstring {.importc: "QsciLexerJSON_lexer".}
proc fcQsciLexerJSON_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerJSON_defaultColor".}
proc fcQsciLexerJSON_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerJSON_defaultEolFill".}
proc fcQsciLexerJSON_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerJSON_defaultFont".}
proc fcQsciLexerJSON_defaultPaper(self: pointer, style: cint): pointer {.importc: "QsciLexerJSON_defaultPaper".}
proc fcQsciLexerJSON_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerJSON_keywords".}
proc fcQsciLexerJSON_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerJSON_description".}
proc fcQsciLexerJSON_refreshProperties(self: pointer, ): void {.importc: "QsciLexerJSON_refreshProperties".}
proc fcQsciLexerJSON_setHighlightComments(self: pointer, highlight: bool): void {.importc: "QsciLexerJSON_setHighlightComments".}
proc fcQsciLexerJSON_highlightComments(self: pointer, ): bool {.importc: "QsciLexerJSON_highlightComments".}
proc fcQsciLexerJSON_setHighlightEscapeSequences(self: pointer, highlight: bool): void {.importc: "QsciLexerJSON_setHighlightEscapeSequences".}
proc fcQsciLexerJSON_highlightEscapeSequences(self: pointer, ): bool {.importc: "QsciLexerJSON_highlightEscapeSequences".}
proc fcQsciLexerJSON_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerJSON_setFoldCompact".}
proc fcQsciLexerJSON_foldCompact(self: pointer, ): bool {.importc: "QsciLexerJSON_foldCompact".}
proc fcQsciLexerJSON_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerJSON_tr2".}
proc fcQsciLexerJSON_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerJSON_tr3".}
proc fcQsciLexerJSON_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerJSON_trUtf82".}
proc fcQsciLexerJSON_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerJSON_trUtf83".}
proc fQsciLexerJSON_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QsciLexerJSON_virtualbase_metaObject".}
proc fcQsciLexerJSON_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QsciLexerJSON_override_virtual_metaObject".}
proc fQsciLexerJSON_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QsciLexerJSON_virtualbase_metacast".}
proc fcQsciLexerJSON_override_virtual_metacast(self: pointer, slot: int) {.importc: "QsciLexerJSON_override_virtual_metacast".}
proc fQsciLexerJSON_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciLexerJSON_virtualbase_metacall".}
proc fcQsciLexerJSON_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciLexerJSON_override_virtual_metacall".}
proc fcQsciLexerJSON_override_virtual_language(self: pointer, slot: int) {.importc: "QsciLexerJSON_override_virtual_language".}
proc fQsciLexerJSON_virtualbase_lexer(self: pointer, ): cstring{.importc: "QsciLexerJSON_virtualbase_lexer".}
proc fcQsciLexerJSON_override_virtual_lexer(self: pointer, slot: int) {.importc: "QsciLexerJSON_override_virtual_lexer".}
proc fQsciLexerJSON_virtualbase_lexerId(self: pointer, ): cint{.importc: "QsciLexerJSON_virtualbase_lexerId".}
proc fcQsciLexerJSON_override_virtual_lexerId(self: pointer, slot: int) {.importc: "QsciLexerJSON_override_virtual_lexerId".}
proc fQsciLexerJSON_virtualbase_autoCompletionFillups(self: pointer, ): cstring{.importc: "QsciLexerJSON_virtualbase_autoCompletionFillups".}
proc fcQsciLexerJSON_override_virtual_autoCompletionFillups(self: pointer, slot: int) {.importc: "QsciLexerJSON_override_virtual_autoCompletionFillups".}
proc fQsciLexerJSON_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array{.importc: "QsciLexerJSON_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerJSON_override_virtual_autoCompletionWordSeparators(self: pointer, slot: int) {.importc: "QsciLexerJSON_override_virtual_autoCompletionWordSeparators".}
proc fQsciLexerJSON_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerJSON_virtualbase_blockEnd".}
proc fcQsciLexerJSON_override_virtual_blockEnd(self: pointer, slot: int) {.importc: "QsciLexerJSON_override_virtual_blockEnd".}
proc fQsciLexerJSON_virtualbase_blockLookback(self: pointer, ): cint{.importc: "QsciLexerJSON_virtualbase_blockLookback".}
proc fcQsciLexerJSON_override_virtual_blockLookback(self: pointer, slot: int) {.importc: "QsciLexerJSON_override_virtual_blockLookback".}
proc fQsciLexerJSON_virtualbase_blockStart(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerJSON_virtualbase_blockStart".}
proc fcQsciLexerJSON_override_virtual_blockStart(self: pointer, slot: int) {.importc: "QsciLexerJSON_override_virtual_blockStart".}
proc fQsciLexerJSON_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerJSON_virtualbase_blockStartKeyword".}
proc fcQsciLexerJSON_override_virtual_blockStartKeyword(self: pointer, slot: int) {.importc: "QsciLexerJSON_override_virtual_blockStartKeyword".}
proc fQsciLexerJSON_virtualbase_braceStyle(self: pointer, ): cint{.importc: "QsciLexerJSON_virtualbase_braceStyle".}
proc fcQsciLexerJSON_override_virtual_braceStyle(self: pointer, slot: int) {.importc: "QsciLexerJSON_override_virtual_braceStyle".}
proc fQsciLexerJSON_virtualbase_caseSensitive(self: pointer, ): bool{.importc: "QsciLexerJSON_virtualbase_caseSensitive".}
proc fcQsciLexerJSON_override_virtual_caseSensitive(self: pointer, slot: int) {.importc: "QsciLexerJSON_override_virtual_caseSensitive".}
proc fQsciLexerJSON_virtualbase_color(self: pointer, style: cint): pointer{.importc: "QsciLexerJSON_virtualbase_color".}
proc fcQsciLexerJSON_override_virtual_color(self: pointer, slot: int) {.importc: "QsciLexerJSON_override_virtual_color".}
proc fQsciLexerJSON_virtualbase_eolFill(self: pointer, style: cint): bool{.importc: "QsciLexerJSON_virtualbase_eolFill".}
proc fcQsciLexerJSON_override_virtual_eolFill(self: pointer, slot: int) {.importc: "QsciLexerJSON_override_virtual_eolFill".}
proc fQsciLexerJSON_virtualbase_font(self: pointer, style: cint): pointer{.importc: "QsciLexerJSON_virtualbase_font".}
proc fcQsciLexerJSON_override_virtual_font(self: pointer, slot: int) {.importc: "QsciLexerJSON_override_virtual_font".}
proc fQsciLexerJSON_virtualbase_indentationGuideView(self: pointer, ): cint{.importc: "QsciLexerJSON_virtualbase_indentationGuideView".}
proc fcQsciLexerJSON_override_virtual_indentationGuideView(self: pointer, slot: int) {.importc: "QsciLexerJSON_override_virtual_indentationGuideView".}
proc fQsciLexerJSON_virtualbase_keywords(self: pointer, set: cint): cstring{.importc: "QsciLexerJSON_virtualbase_keywords".}
proc fcQsciLexerJSON_override_virtual_keywords(self: pointer, slot: int) {.importc: "QsciLexerJSON_override_virtual_keywords".}
proc fQsciLexerJSON_virtualbase_defaultStyle(self: pointer, ): cint{.importc: "QsciLexerJSON_virtualbase_defaultStyle".}
proc fcQsciLexerJSON_override_virtual_defaultStyle(self: pointer, slot: int) {.importc: "QsciLexerJSON_override_virtual_defaultStyle".}
proc fcQsciLexerJSON_override_virtual_description(self: pointer, slot: int) {.importc: "QsciLexerJSON_override_virtual_description".}
proc fQsciLexerJSON_virtualbase_paper(self: pointer, style: cint): pointer{.importc: "QsciLexerJSON_virtualbase_paper".}
proc fcQsciLexerJSON_override_virtual_paper(self: pointer, slot: int) {.importc: "QsciLexerJSON_override_virtual_paper".}
proc fQsciLexerJSON_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerJSON_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerJSON_override_virtual_defaultColorWithStyle(self: pointer, slot: int) {.importc: "QsciLexerJSON_override_virtual_defaultColorWithStyle".}
proc fQsciLexerJSON_virtualbase_defaultEolFill(self: pointer, style: cint): bool{.importc: "QsciLexerJSON_virtualbase_defaultEolFill".}
proc fcQsciLexerJSON_override_virtual_defaultEolFill(self: pointer, slot: int) {.importc: "QsciLexerJSON_override_virtual_defaultEolFill".}
proc fQsciLexerJSON_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerJSON_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerJSON_override_virtual_defaultFontWithStyle(self: pointer, slot: int) {.importc: "QsciLexerJSON_override_virtual_defaultFontWithStyle".}
proc fQsciLexerJSON_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerJSON_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerJSON_override_virtual_defaultPaperWithStyle(self: pointer, slot: int) {.importc: "QsciLexerJSON_override_virtual_defaultPaperWithStyle".}
proc fQsciLexerJSON_virtualbase_setEditor(self: pointer, editor: pointer): void{.importc: "QsciLexerJSON_virtualbase_setEditor".}
proc fcQsciLexerJSON_override_virtual_setEditor(self: pointer, slot: int) {.importc: "QsciLexerJSON_override_virtual_setEditor".}
proc fQsciLexerJSON_virtualbase_refreshProperties(self: pointer, ): void{.importc: "QsciLexerJSON_virtualbase_refreshProperties".}
proc fcQsciLexerJSON_override_virtual_refreshProperties(self: pointer, slot: int) {.importc: "QsciLexerJSON_override_virtual_refreshProperties".}
proc fQsciLexerJSON_virtualbase_styleBitsNeeded(self: pointer, ): cint{.importc: "QsciLexerJSON_virtualbase_styleBitsNeeded".}
proc fcQsciLexerJSON_override_virtual_styleBitsNeeded(self: pointer, slot: int) {.importc: "QsciLexerJSON_override_virtual_styleBitsNeeded".}
proc fQsciLexerJSON_virtualbase_wordCharacters(self: pointer, ): cstring{.importc: "QsciLexerJSON_virtualbase_wordCharacters".}
proc fcQsciLexerJSON_override_virtual_wordCharacters(self: pointer, slot: int) {.importc: "QsciLexerJSON_override_virtual_wordCharacters".}
proc fQsciLexerJSON_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void{.importc: "QsciLexerJSON_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerJSON_override_virtual_setAutoIndentStyle(self: pointer, slot: int) {.importc: "QsciLexerJSON_override_virtual_setAutoIndentStyle".}
proc fQsciLexerJSON_virtualbase_setColor(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerJSON_virtualbase_setColor".}
proc fcQsciLexerJSON_override_virtual_setColor(self: pointer, slot: int) {.importc: "QsciLexerJSON_override_virtual_setColor".}
proc fQsciLexerJSON_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void{.importc: "QsciLexerJSON_virtualbase_setEolFill".}
proc fcQsciLexerJSON_override_virtual_setEolFill(self: pointer, slot: int) {.importc: "QsciLexerJSON_override_virtual_setEolFill".}
proc fQsciLexerJSON_virtualbase_setFont(self: pointer, f: pointer, style: cint): void{.importc: "QsciLexerJSON_virtualbase_setFont".}
proc fcQsciLexerJSON_override_virtual_setFont(self: pointer, slot: int) {.importc: "QsciLexerJSON_override_virtual_setFont".}
proc fQsciLexerJSON_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerJSON_virtualbase_setPaper".}
proc fcQsciLexerJSON_override_virtual_setPaper(self: pointer, slot: int) {.importc: "QsciLexerJSON_override_virtual_setPaper".}
proc fQsciLexerJSON_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerJSON_virtualbase_readProperties".}
proc fcQsciLexerJSON_override_virtual_readProperties(self: pointer, slot: int) {.importc: "QsciLexerJSON_override_virtual_readProperties".}
proc fQsciLexerJSON_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerJSON_virtualbase_writeProperties".}
proc fcQsciLexerJSON_override_virtual_writeProperties(self: pointer, slot: int) {.importc: "QsciLexerJSON_override_virtual_writeProperties".}
proc fQsciLexerJSON_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QsciLexerJSON_virtualbase_event".}
proc fcQsciLexerJSON_override_virtual_event(self: pointer, slot: int) {.importc: "QsciLexerJSON_override_virtual_event".}
proc fQsciLexerJSON_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciLexerJSON_virtualbase_eventFilter".}
proc fcQsciLexerJSON_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciLexerJSON_override_virtual_eventFilter".}
proc fQsciLexerJSON_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciLexerJSON_virtualbase_timerEvent".}
proc fcQsciLexerJSON_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciLexerJSON_override_virtual_timerEvent".}
proc fQsciLexerJSON_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciLexerJSON_virtualbase_childEvent".}
proc fcQsciLexerJSON_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciLexerJSON_override_virtual_childEvent".}
proc fQsciLexerJSON_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciLexerJSON_virtualbase_customEvent".}
proc fcQsciLexerJSON_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciLexerJSON_override_virtual_customEvent".}
proc fQsciLexerJSON_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerJSON_virtualbase_connectNotify".}
proc fcQsciLexerJSON_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciLexerJSON_override_virtual_connectNotify".}
proc fQsciLexerJSON_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerJSON_virtualbase_disconnectNotify".}
proc fcQsciLexerJSON_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciLexerJSON_override_virtual_disconnectNotify".}
proc fcQsciLexerJSON_staticMetaObject(): pointer {.importc: "QsciLexerJSON_staticMetaObject".}
proc fcQsciLexerJSON_delete(self: pointer) {.importc: "QsciLexerJSON_delete".}


func init*(T: type gen_qscilexerjson_types.QsciLexerJSON, h: ptr cQsciLexerJSON): gen_qscilexerjson_types.QsciLexerJSON =
  T(h: h)
proc create*(T: type gen_qscilexerjson_types.QsciLexerJSON, ): gen_qscilexerjson_types.QsciLexerJSON =
  gen_qscilexerjson_types.QsciLexerJSON.init(fcQsciLexerJSON_new())

proc create*(T: type gen_qscilexerjson_types.QsciLexerJSON, parent: gen_qobject.QObject): gen_qscilexerjson_types.QsciLexerJSON =
  gen_qscilexerjson_types.QsciLexerJSON.init(fcQsciLexerJSON_new2(parent.h))

proc metaObject*(self: gen_qscilexerjson_types.QsciLexerJSON, ): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerJSON_metaObject(self.h))

proc metacast*(self: gen_qscilexerjson_types.QsciLexerJSON, param1: cstring): pointer =
  fcQsciLexerJSON_metacast(self.h, param1)

proc metacall*(self: gen_qscilexerjson_types.QsciLexerJSON, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerJSON_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexerjson_types.QsciLexerJSON, s: cstring): string =
  let v_ms = fcQsciLexerJSON_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexerjson_types.QsciLexerJSON, s: cstring): string =
  let v_ms = fcQsciLexerJSON_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexerjson_types.QsciLexerJSON, ): cstring =
  (fcQsciLexerJSON_language(self.h))

proc lexer*(self: gen_qscilexerjson_types.QsciLexerJSON, ): cstring =
  (fcQsciLexerJSON_lexer(self.h))

proc defaultColor*(self: gen_qscilexerjson_types.QsciLexerJSON, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fcQsciLexerJSON_defaultColor(self.h, style))

proc defaultEolFill*(self: gen_qscilexerjson_types.QsciLexerJSON, style: cint): bool =
  fcQsciLexerJSON_defaultEolFill(self.h, style)

proc defaultFont*(self: gen_qscilexerjson_types.QsciLexerJSON, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fcQsciLexerJSON_defaultFont(self.h, style))

proc defaultPaper*(self: gen_qscilexerjson_types.QsciLexerJSON, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fcQsciLexerJSON_defaultPaper(self.h, style))

proc keywords*(self: gen_qscilexerjson_types.QsciLexerJSON, set: cint): cstring =
  (fcQsciLexerJSON_keywords(self.h, set))

proc description*(self: gen_qscilexerjson_types.QsciLexerJSON, style: cint): string =
  let v_ms = fcQsciLexerJSON_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: gen_qscilexerjson_types.QsciLexerJSON, ): void =
  fcQsciLexerJSON_refreshProperties(self.h)

proc setHighlightComments*(self: gen_qscilexerjson_types.QsciLexerJSON, highlight: bool): void =
  fcQsciLexerJSON_setHighlightComments(self.h, highlight)

proc highlightComments*(self: gen_qscilexerjson_types.QsciLexerJSON, ): bool =
  fcQsciLexerJSON_highlightComments(self.h)

proc setHighlightEscapeSequences*(self: gen_qscilexerjson_types.QsciLexerJSON, highlight: bool): void =
  fcQsciLexerJSON_setHighlightEscapeSequences(self.h, highlight)

proc highlightEscapeSequences*(self: gen_qscilexerjson_types.QsciLexerJSON, ): bool =
  fcQsciLexerJSON_highlightEscapeSequences(self.h)

proc setFoldCompact*(self: gen_qscilexerjson_types.QsciLexerJSON, fold: bool): void =
  fcQsciLexerJSON_setFoldCompact(self.h, fold)

proc foldCompact*(self: gen_qscilexerjson_types.QsciLexerJSON, ): bool =
  fcQsciLexerJSON_foldCompact(self.h)

proc tr*(_: type gen_qscilexerjson_types.QsciLexerJSON, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerJSON_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexerjson_types.QsciLexerJSON, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerJSON_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexerjson_types.QsciLexerJSON, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerJSON_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexerjson_types.QsciLexerJSON, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerJSON_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QsciLexerJSONmetaObject*(self: gen_qscilexerjson_types.QsciLexerJSON, ): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fQsciLexerJSON_virtualbase_metaObject(self.h))

type QsciLexerJSONmetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qscilexerjson_types.QsciLexerJSON, slot: QsciLexerJSONmetaObjectProc) =
  # TODO check subclass
  var tmp = new QsciLexerJSONmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_metaObject(self: ptr cQsciLexerJSON, slot: int): pointer {.exportc: "miqt_exec_callback_QsciLexerJSON_metaObject ".} =
  var nimfunc = cast[ptr QsciLexerJSONmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QsciLexerJSONmetacast*(self: gen_qscilexerjson_types.QsciLexerJSON, param1: cstring): pointer =
  fQsciLexerJSON_virtualbase_metacast(self.h, param1)

type QsciLexerJSONmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qscilexerjson_types.QsciLexerJSON, slot: QsciLexerJSONmetacastProc) =
  # TODO check subclass
  var tmp = new QsciLexerJSONmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_metacast(self: ptr cQsciLexerJSON, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciLexerJSON_metacast ".} =
  var nimfunc = cast[ptr QsciLexerJSONmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerJSONmetacall*(self: gen_qscilexerjson_types.QsciLexerJSON, param1: cint, param2: cint, param3: pointer): cint =
  fQsciLexerJSON_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerJSONmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qscilexerjson_types.QsciLexerJSON, slot: QsciLexerJSONmetacallProc) =
  # TODO check subclass
  var tmp = new QsciLexerJSONmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_metacall(self: ptr cQsciLexerJSON, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerJSON_metacall ".} =
  var nimfunc = cast[ptr QsciLexerJSONmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
type QsciLexerJSONlanguageProc* = proc(): cstring
proc onlanguage*(self: gen_qscilexerjson_types.QsciLexerJSON, slot: QsciLexerJSONlanguageProc) =
  # TODO check subclass
  var tmp = new QsciLexerJSONlanguageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_language(self: ptr cQsciLexerJSON, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerJSON_language ".} =
  var nimfunc = cast[ptr QsciLexerJSONlanguageProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerJSONlexer*(self: gen_qscilexerjson_types.QsciLexerJSON, ): cstring =
  (fQsciLexerJSON_virtualbase_lexer(self.h))

type QsciLexerJSONlexerProc* = proc(): cstring
proc onlexer*(self: gen_qscilexerjson_types.QsciLexerJSON, slot: QsciLexerJSONlexerProc) =
  # TODO check subclass
  var tmp = new QsciLexerJSONlexerProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_lexer(self: ptr cQsciLexerJSON, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerJSON_lexer ".} =
  var nimfunc = cast[ptr QsciLexerJSONlexerProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerJSONlexerId*(self: gen_qscilexerjson_types.QsciLexerJSON, ): cint =
  fQsciLexerJSON_virtualbase_lexerId(self.h)

type QsciLexerJSONlexerIdProc* = proc(): cint
proc onlexerId*(self: gen_qscilexerjson_types.QsciLexerJSON, slot: QsciLexerJSONlexerIdProc) =
  # TODO check subclass
  var tmp = new QsciLexerJSONlexerIdProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_lexerId(self: ptr cQsciLexerJSON, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerJSON_lexerId ".} =
  var nimfunc = cast[ptr QsciLexerJSONlexerIdProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerJSONautoCompletionFillups*(self: gen_qscilexerjson_types.QsciLexerJSON, ): cstring =
  (fQsciLexerJSON_virtualbase_autoCompletionFillups(self.h))

type QsciLexerJSONautoCompletionFillupsProc* = proc(): cstring
proc onautoCompletionFillups*(self: gen_qscilexerjson_types.QsciLexerJSON, slot: QsciLexerJSONautoCompletionFillupsProc) =
  # TODO check subclass
  var tmp = new QsciLexerJSONautoCompletionFillupsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_autoCompletionFillups(self: ptr cQsciLexerJSON, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerJSON_autoCompletionFillups ".} =
  var nimfunc = cast[ptr QsciLexerJSONautoCompletionFillupsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerJSONautoCompletionWordSeparators*(self: gen_qscilexerjson_types.QsciLexerJSON, ): seq[string] =
  var v_ma = fQsciLexerJSON_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerJSONautoCompletionWordSeparatorsProc* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: gen_qscilexerjson_types.QsciLexerJSON, slot: QsciLexerJSONautoCompletionWordSeparatorsProc) =
  # TODO check subclass
  var tmp = new QsciLexerJSONautoCompletionWordSeparatorsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_autoCompletionWordSeparators(self: ptr cQsciLexerJSON, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerJSON_autoCompletionWordSeparators ".} =
  var nimfunc = cast[ptr QsciLexerJSONautoCompletionWordSeparatorsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QsciLexerJSONblockEnd*(self: gen_qscilexerjson_types.QsciLexerJSON, style: ptr cint): cstring =
  (fQsciLexerJSON_virtualbase_blockEnd(self.h, style))

type QsciLexerJSONblockEndProc* = proc(style: ptr cint): cstring
proc onblockEnd*(self: gen_qscilexerjson_types.QsciLexerJSON, slot: QsciLexerJSONblockEndProc) =
  # TODO check subclass
  var tmp = new QsciLexerJSONblockEndProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_blockEnd(self: ptr cQsciLexerJSON, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerJSON_blockEnd ".} =
  var nimfunc = cast[ptr QsciLexerJSONblockEndProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerJSONblockLookback*(self: gen_qscilexerjson_types.QsciLexerJSON, ): cint =
  fQsciLexerJSON_virtualbase_blockLookback(self.h)

type QsciLexerJSONblockLookbackProc* = proc(): cint
proc onblockLookback*(self: gen_qscilexerjson_types.QsciLexerJSON, slot: QsciLexerJSONblockLookbackProc) =
  # TODO check subclass
  var tmp = new QsciLexerJSONblockLookbackProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_blockLookback(self: ptr cQsciLexerJSON, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerJSON_blockLookback ".} =
  var nimfunc = cast[ptr QsciLexerJSONblockLookbackProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerJSONblockStart*(self: gen_qscilexerjson_types.QsciLexerJSON, style: ptr cint): cstring =
  (fQsciLexerJSON_virtualbase_blockStart(self.h, style))

type QsciLexerJSONblockStartProc* = proc(style: ptr cint): cstring
proc onblockStart*(self: gen_qscilexerjson_types.QsciLexerJSON, slot: QsciLexerJSONblockStartProc) =
  # TODO check subclass
  var tmp = new QsciLexerJSONblockStartProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_blockStart(self: ptr cQsciLexerJSON, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerJSON_blockStart ".} =
  var nimfunc = cast[ptr QsciLexerJSONblockStartProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerJSONblockStartKeyword*(self: gen_qscilexerjson_types.QsciLexerJSON, style: ptr cint): cstring =
  (fQsciLexerJSON_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerJSONblockStartKeywordProc* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: gen_qscilexerjson_types.QsciLexerJSON, slot: QsciLexerJSONblockStartKeywordProc) =
  # TODO check subclass
  var tmp = new QsciLexerJSONblockStartKeywordProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_blockStartKeyword(self: ptr cQsciLexerJSON, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerJSON_blockStartKeyword ".} =
  var nimfunc = cast[ptr QsciLexerJSONblockStartKeywordProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerJSONbraceStyle*(self: gen_qscilexerjson_types.QsciLexerJSON, ): cint =
  fQsciLexerJSON_virtualbase_braceStyle(self.h)

type QsciLexerJSONbraceStyleProc* = proc(): cint
proc onbraceStyle*(self: gen_qscilexerjson_types.QsciLexerJSON, slot: QsciLexerJSONbraceStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerJSONbraceStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_braceStyle(self: ptr cQsciLexerJSON, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerJSON_braceStyle ".} =
  var nimfunc = cast[ptr QsciLexerJSONbraceStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerJSONcaseSensitive*(self: gen_qscilexerjson_types.QsciLexerJSON, ): bool =
  fQsciLexerJSON_virtualbase_caseSensitive(self.h)

type QsciLexerJSONcaseSensitiveProc* = proc(): bool
proc oncaseSensitive*(self: gen_qscilexerjson_types.QsciLexerJSON, slot: QsciLexerJSONcaseSensitiveProc) =
  # TODO check subclass
  var tmp = new QsciLexerJSONcaseSensitiveProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_caseSensitive(self: ptr cQsciLexerJSON, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerJSON_caseSensitive ".} =
  var nimfunc = cast[ptr QsciLexerJSONcaseSensitiveProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerJSONcolor*(self: gen_qscilexerjson_types.QsciLexerJSON, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerJSON_virtualbase_color(self.h, style))

type QsciLexerJSONcolorProc* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: gen_qscilexerjson_types.QsciLexerJSON, slot: QsciLexerJSONcolorProc) =
  # TODO check subclass
  var tmp = new QsciLexerJSONcolorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_color(self: ptr cQsciLexerJSON, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerJSON_color ".} =
  var nimfunc = cast[ptr QsciLexerJSONcolorProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerJSONeolFill*(self: gen_qscilexerjson_types.QsciLexerJSON, style: cint): bool =
  fQsciLexerJSON_virtualbase_eolFill(self.h, style)

type QsciLexerJSONeolFillProc* = proc(style: cint): bool
proc oneolFill*(self: gen_qscilexerjson_types.QsciLexerJSON, slot: QsciLexerJSONeolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerJSONeolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_eolFill(self: ptr cQsciLexerJSON, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerJSON_eolFill ".} =
  var nimfunc = cast[ptr QsciLexerJSONeolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerJSONfont*(self: gen_qscilexerjson_types.QsciLexerJSON, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fQsciLexerJSON_virtualbase_font(self.h, style))

type QsciLexerJSONfontProc* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: gen_qscilexerjson_types.QsciLexerJSON, slot: QsciLexerJSONfontProc) =
  # TODO check subclass
  var tmp = new QsciLexerJSONfontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_font(self: ptr cQsciLexerJSON, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerJSON_font ".} =
  var nimfunc = cast[ptr QsciLexerJSONfontProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerJSONindentationGuideView*(self: gen_qscilexerjson_types.QsciLexerJSON, ): cint =
  fQsciLexerJSON_virtualbase_indentationGuideView(self.h)

type QsciLexerJSONindentationGuideViewProc* = proc(): cint
proc onindentationGuideView*(self: gen_qscilexerjson_types.QsciLexerJSON, slot: QsciLexerJSONindentationGuideViewProc) =
  # TODO check subclass
  var tmp = new QsciLexerJSONindentationGuideViewProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_indentationGuideView(self: ptr cQsciLexerJSON, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerJSON_indentationGuideView ".} =
  var nimfunc = cast[ptr QsciLexerJSONindentationGuideViewProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerJSONkeywords*(self: gen_qscilexerjson_types.QsciLexerJSON, set: cint): cstring =
  (fQsciLexerJSON_virtualbase_keywords(self.h, set))

type QsciLexerJSONkeywordsProc* = proc(set: cint): cstring
proc onkeywords*(self: gen_qscilexerjson_types.QsciLexerJSON, slot: QsciLexerJSONkeywordsProc) =
  # TODO check subclass
  var tmp = new QsciLexerJSONkeywordsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_keywords(self: ptr cQsciLexerJSON, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerJSON_keywords ".} =
  var nimfunc = cast[ptr QsciLexerJSONkeywordsProc](cast[pointer](slot))
  let slotval1 = set


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerJSONdefaultStyle*(self: gen_qscilexerjson_types.QsciLexerJSON, ): cint =
  fQsciLexerJSON_virtualbase_defaultStyle(self.h)

type QsciLexerJSONdefaultStyleProc* = proc(): cint
proc ondefaultStyle*(self: gen_qscilexerjson_types.QsciLexerJSON, slot: QsciLexerJSONdefaultStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerJSONdefaultStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_defaultStyle(self: ptr cQsciLexerJSON, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerJSON_defaultStyle ".} =
  var nimfunc = cast[ptr QsciLexerJSONdefaultStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QsciLexerJSONdescriptionProc* = proc(style: cint): string
proc ondescription*(self: gen_qscilexerjson_types.QsciLexerJSON, slot: QsciLexerJSONdescriptionProc) =
  # TODO check subclass
  var tmp = new QsciLexerJSONdescriptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_description(self: ptr cQsciLexerJSON, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerJSON_description ".} =
  var nimfunc = cast[ptr QsciLexerJSONdescriptionProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc QsciLexerJSONpaper*(self: gen_qscilexerjson_types.QsciLexerJSON, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerJSON_virtualbase_paper(self.h, style))

type QsciLexerJSONpaperProc* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: gen_qscilexerjson_types.QsciLexerJSON, slot: QsciLexerJSONpaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerJSONpaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_paper(self: ptr cQsciLexerJSON, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerJSON_paper ".} =
  var nimfunc = cast[ptr QsciLexerJSONpaperProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerJSONdefaultColor*(self: gen_qscilexerjson_types.QsciLexerJSON, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerJSON_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerJSONdefaultColorWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColor*(self: gen_qscilexerjson_types.QsciLexerJSON, slot: QsciLexerJSONdefaultColorWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerJSONdefaultColorWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_defaultColorWithStyle(self: ptr cQsciLexerJSON, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerJSON_defaultColorWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerJSONdefaultColorWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerJSONdefaultEolFill*(self: gen_qscilexerjson_types.QsciLexerJSON, style: cint): bool =
  fQsciLexerJSON_virtualbase_defaultEolFill(self.h, style)

type QsciLexerJSONdefaultEolFillProc* = proc(style: cint): bool
proc ondefaultEolFill*(self: gen_qscilexerjson_types.QsciLexerJSON, slot: QsciLexerJSONdefaultEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerJSONdefaultEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_defaultEolFill(self: ptr cQsciLexerJSON, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerJSON_defaultEolFill ".} =
  var nimfunc = cast[ptr QsciLexerJSONdefaultEolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerJSONdefaultFont*(self: gen_qscilexerjson_types.QsciLexerJSON, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fQsciLexerJSON_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerJSONdefaultFontWithStyleProc* = proc(style: cint): gen_qfont.QFont
proc ondefaultFont*(self: gen_qscilexerjson_types.QsciLexerJSON, slot: QsciLexerJSONdefaultFontWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerJSONdefaultFontWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_defaultFontWithStyle(self: ptr cQsciLexerJSON, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerJSON_defaultFontWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerJSONdefaultFontWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerJSONdefaultPaper*(self: gen_qscilexerjson_types.QsciLexerJSON, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerJSON_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerJSONdefaultPaperWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaper*(self: gen_qscilexerjson_types.QsciLexerJSON, slot: QsciLexerJSONdefaultPaperWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerJSONdefaultPaperWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_defaultPaperWithStyle(self: ptr cQsciLexerJSON, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerJSON_defaultPaperWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerJSONdefaultPaperWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerJSONsetEditor*(self: gen_qscilexerjson_types.QsciLexerJSON, editor: gen_qsciscintilla.QsciScintilla): void =
  fQsciLexerJSON_virtualbase_setEditor(self.h, editor.h)

type QsciLexerJSONsetEditorProc* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: gen_qscilexerjson_types.QsciLexerJSON, slot: QsciLexerJSONsetEditorProc) =
  # TODO check subclass
  var tmp = new QsciLexerJSONsetEditorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_setEditor(self: ptr cQsciLexerJSON, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerJSON_setEditor ".} =
  var nimfunc = cast[ptr QsciLexerJSONsetEditorProc](cast[pointer](slot))
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](slotval1)
proc QsciLexerJSONrefreshProperties*(self: gen_qscilexerjson_types.QsciLexerJSON, ): void =
  fQsciLexerJSON_virtualbase_refreshProperties(self.h)

type QsciLexerJSONrefreshPropertiesProc* = proc(): void
proc onrefreshProperties*(self: gen_qscilexerjson_types.QsciLexerJSON, slot: QsciLexerJSONrefreshPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerJSONrefreshPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_refreshProperties(self: ptr cQsciLexerJSON, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerJSON_refreshProperties ".} =
  var nimfunc = cast[ptr QsciLexerJSONrefreshPropertiesProc](cast[pointer](slot))

  nimfunc[]()
proc QsciLexerJSONstyleBitsNeeded*(self: gen_qscilexerjson_types.QsciLexerJSON, ): cint =
  fQsciLexerJSON_virtualbase_styleBitsNeeded(self.h)

type QsciLexerJSONstyleBitsNeededProc* = proc(): cint
proc onstyleBitsNeeded*(self: gen_qscilexerjson_types.QsciLexerJSON, slot: QsciLexerJSONstyleBitsNeededProc) =
  # TODO check subclass
  var tmp = new QsciLexerJSONstyleBitsNeededProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_styleBitsNeeded(self: ptr cQsciLexerJSON, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerJSON_styleBitsNeeded ".} =
  var nimfunc = cast[ptr QsciLexerJSONstyleBitsNeededProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerJSONwordCharacters*(self: gen_qscilexerjson_types.QsciLexerJSON, ): cstring =
  (fQsciLexerJSON_virtualbase_wordCharacters(self.h))

type QsciLexerJSONwordCharactersProc* = proc(): cstring
proc onwordCharacters*(self: gen_qscilexerjson_types.QsciLexerJSON, slot: QsciLexerJSONwordCharactersProc) =
  # TODO check subclass
  var tmp = new QsciLexerJSONwordCharactersProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_wordCharacters(self: ptr cQsciLexerJSON, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerJSON_wordCharacters ".} =
  var nimfunc = cast[ptr QsciLexerJSONwordCharactersProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerJSONsetAutoIndentStyle*(self: gen_qscilexerjson_types.QsciLexerJSON, autoindentstyle: cint): void =
  fQsciLexerJSON_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerJSONsetAutoIndentStyleProc* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: gen_qscilexerjson_types.QsciLexerJSON, slot: QsciLexerJSONsetAutoIndentStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerJSONsetAutoIndentStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_setAutoIndentStyle(self: ptr cQsciLexerJSON, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerJSON_setAutoIndentStyle ".} =
  var nimfunc = cast[ptr QsciLexerJSONsetAutoIndentStyleProc](cast[pointer](slot))
  let slotval1 = autoindentstyle


  nimfunc[](slotval1)
proc QsciLexerJSONsetColor*(self: gen_qscilexerjson_types.QsciLexerJSON, c: gen_qcolor.QColor, style: cint): void =
  fQsciLexerJSON_virtualbase_setColor(self.h, c.h, style)

type QsciLexerJSONsetColorProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: gen_qscilexerjson_types.QsciLexerJSON, slot: QsciLexerJSONsetColorProc) =
  # TODO check subclass
  var tmp = new QsciLexerJSONsetColorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_setColor(self: ptr cQsciLexerJSON, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerJSON_setColor ".} =
  var nimfunc = cast[ptr QsciLexerJSONsetColorProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerJSONsetEolFill*(self: gen_qscilexerjson_types.QsciLexerJSON, eoffill: bool, style: cint): void =
  fQsciLexerJSON_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerJSONsetEolFillProc* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: gen_qscilexerjson_types.QsciLexerJSON, slot: QsciLexerJSONsetEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerJSONsetEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_setEolFill(self: ptr cQsciLexerJSON, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerJSON_setEolFill ".} =
  var nimfunc = cast[ptr QsciLexerJSONsetEolFillProc](cast[pointer](slot))
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerJSONsetFont*(self: gen_qscilexerjson_types.QsciLexerJSON, f: gen_qfont.QFont, style: cint): void =
  fQsciLexerJSON_virtualbase_setFont(self.h, f.h, style)

type QsciLexerJSONsetFontProc* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: gen_qscilexerjson_types.QsciLexerJSON, slot: QsciLexerJSONsetFontProc) =
  # TODO check subclass
  var tmp = new QsciLexerJSONsetFontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_setFont(self: ptr cQsciLexerJSON, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerJSON_setFont ".} =
  var nimfunc = cast[ptr QsciLexerJSONsetFontProc](cast[pointer](slot))
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerJSONsetPaper*(self: gen_qscilexerjson_types.QsciLexerJSON, c: gen_qcolor.QColor, style: cint): void =
  fQsciLexerJSON_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerJSONsetPaperProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: gen_qscilexerjson_types.QsciLexerJSON, slot: QsciLexerJSONsetPaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerJSONsetPaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_setPaper(self: ptr cQsciLexerJSON, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerJSON_setPaper ".} =
  var nimfunc = cast[ptr QsciLexerJSONsetPaperProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerJSONreadProperties*(self: gen_qscilexerjson_types.QsciLexerJSON, qs: gen_qsettings.QSettings, prefix: string): bool =
  fQsciLexerJSON_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerJSONreadPropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: gen_qscilexerjson_types.QsciLexerJSON, slot: QsciLexerJSONreadPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerJSONreadPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_readProperties(self: ptr cQsciLexerJSON, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerJSON_readProperties ".} =
  var nimfunc = cast[ptr QsciLexerJSONreadPropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerJSONwriteProperties*(self: gen_qscilexerjson_types.QsciLexerJSON, qs: gen_qsettings.QSettings, prefix: string): bool =
  fQsciLexerJSON_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerJSONwritePropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: gen_qscilexerjson_types.QsciLexerJSON, slot: QsciLexerJSONwritePropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerJSONwritePropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_writeProperties(self: ptr cQsciLexerJSON, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerJSON_writeProperties ".} =
  var nimfunc = cast[ptr QsciLexerJSONwritePropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerJSONevent*(self: gen_qscilexerjson_types.QsciLexerJSON, event: gen_qcoreevent.QEvent): bool =
  fQsciLexerJSON_virtualbase_event(self.h, event.h)

type QsciLexerJSONeventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qscilexerjson_types.QsciLexerJSON, slot: QsciLexerJSONeventProc) =
  # TODO check subclass
  var tmp = new QsciLexerJSONeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_event(self: ptr cQsciLexerJSON, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerJSON_event ".} =
  var nimfunc = cast[ptr QsciLexerJSONeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerJSONeventFilter*(self: gen_qscilexerjson_types.QsciLexerJSON, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =
  fQsciLexerJSON_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerJSONeventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qscilexerjson_types.QsciLexerJSON, slot: QsciLexerJSONeventFilterProc) =
  # TODO check subclass
  var tmp = new QsciLexerJSONeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_eventFilter(self: ptr cQsciLexerJSON, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerJSON_eventFilter ".} =
  var nimfunc = cast[ptr QsciLexerJSONeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerJSONtimerEvent*(self: gen_qscilexerjson_types.QsciLexerJSON, event: gen_qcoreevent.QTimerEvent): void =
  fQsciLexerJSON_virtualbase_timerEvent(self.h, event.h)

type QsciLexerJSONtimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qscilexerjson_types.QsciLexerJSON, slot: QsciLexerJSONtimerEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerJSONtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_timerEvent(self: ptr cQsciLexerJSON, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerJSON_timerEvent ".} =
  var nimfunc = cast[ptr QsciLexerJSONtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerJSONchildEvent*(self: gen_qscilexerjson_types.QsciLexerJSON, event: gen_qcoreevent.QChildEvent): void =
  fQsciLexerJSON_virtualbase_childEvent(self.h, event.h)

type QsciLexerJSONchildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qscilexerjson_types.QsciLexerJSON, slot: QsciLexerJSONchildEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerJSONchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_childEvent(self: ptr cQsciLexerJSON, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerJSON_childEvent ".} =
  var nimfunc = cast[ptr QsciLexerJSONchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerJSONcustomEvent*(self: gen_qscilexerjson_types.QsciLexerJSON, event: gen_qcoreevent.QEvent): void =
  fQsciLexerJSON_virtualbase_customEvent(self.h, event.h)

type QsciLexerJSONcustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qscilexerjson_types.QsciLexerJSON, slot: QsciLexerJSONcustomEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerJSONcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_customEvent(self: ptr cQsciLexerJSON, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerJSON_customEvent ".} =
  var nimfunc = cast[ptr QsciLexerJSONcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerJSONconnectNotify*(self: gen_qscilexerjson_types.QsciLexerJSON, signal: gen_qmetaobject.QMetaMethod): void =
  fQsciLexerJSON_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerJSONconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qscilexerjson_types.QsciLexerJSON, slot: QsciLexerJSONconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerJSONconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_connectNotify(self: ptr cQsciLexerJSON, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerJSON_connectNotify ".} =
  var nimfunc = cast[ptr QsciLexerJSONconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QsciLexerJSONdisconnectNotify*(self: gen_qscilexerjson_types.QsciLexerJSON, signal: gen_qmetaobject.QMetaMethod): void =
  fQsciLexerJSON_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerJSONdisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qscilexerjson_types.QsciLexerJSON, slot: QsciLexerJSONdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerJSONdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_disconnectNotify(self: ptr cQsciLexerJSON, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerJSON_disconnectNotify ".} =
  var nimfunc = cast[ptr QsciLexerJSONdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qscilexerjson_types.QsciLexerJSON): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerJSON_staticMetaObject())
proc delete*(self: gen_qscilexerjson_types.QsciLexerJSON) =
  fcQsciLexerJSON_delete(self.h)
