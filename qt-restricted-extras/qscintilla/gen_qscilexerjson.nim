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


type QsciLexerJSONEnum* = cint
const
  QsciLexerJSONDefault* = 0
  QsciLexerJSONNumber* = 1
  QsciLexerJSONString* = 2
  QsciLexerJSONUnclosedString* = 3
  QsciLexerJSONProperty* = 4
  QsciLexerJSONEscapeSequence* = 5
  QsciLexerJSONCommentLine* = 6
  QsciLexerJSONCommentBlock* = 7
  QsciLexerJSONOperator* = 8
  QsciLexerJSONIRI* = 9
  QsciLexerJSONIRICompact* = 10
  QsciLexerJSONKeyword* = 11
  QsciLexerJSONKeywordLD* = 12
  QsciLexerJSONError* = 13



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


func init*(T: type QsciLexerJSON, h: ptr cQsciLexerJSON): QsciLexerJSON =
  T(h: h)
proc create*(T: type QsciLexerJSON, ): QsciLexerJSON =

  QsciLexerJSON.init(fcQsciLexerJSON_new())
proc create*(T: type QsciLexerJSON, parent: gen_qobject.QObject): QsciLexerJSON =

  QsciLexerJSON.init(fcQsciLexerJSON_new2(parent.h))
proc metaObject*(self: QsciLexerJSON, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQsciLexerJSON_metaObject(self.h))

proc metacast*(self: QsciLexerJSON, param1: cstring): pointer =

  fcQsciLexerJSON_metacast(self.h, param1)

proc metacall*(self: QsciLexerJSON, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQsciLexerJSON_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QsciLexerJSON, s: cstring): string =

  let v_ms = fcQsciLexerJSON_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QsciLexerJSON, s: cstring): string =

  let v_ms = fcQsciLexerJSON_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: QsciLexerJSON, ): cstring =

  (fcQsciLexerJSON_language(self.h))

proc lexer*(self: QsciLexerJSON, ): cstring =

  (fcQsciLexerJSON_lexer(self.h))

proc defaultColor*(self: QsciLexerJSON, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerJSON_defaultColor(self.h, style))

proc defaultEolFill*(self: QsciLexerJSON, style: cint): bool =

  fcQsciLexerJSON_defaultEolFill(self.h, style)

proc defaultFont*(self: QsciLexerJSON, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQsciLexerJSON_defaultFont(self.h, style))

proc defaultPaper*(self: QsciLexerJSON, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerJSON_defaultPaper(self.h, style))

proc keywords*(self: QsciLexerJSON, set: cint): cstring =

  (fcQsciLexerJSON_keywords(self.h, set))

proc description*(self: QsciLexerJSON, style: cint): string =

  let v_ms = fcQsciLexerJSON_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: QsciLexerJSON, ): void =

  fcQsciLexerJSON_refreshProperties(self.h)

proc setHighlightComments*(self: QsciLexerJSON, highlight: bool): void =

  fcQsciLexerJSON_setHighlightComments(self.h, highlight)

proc highlightComments*(self: QsciLexerJSON, ): bool =

  fcQsciLexerJSON_highlightComments(self.h)

proc setHighlightEscapeSequences*(self: QsciLexerJSON, highlight: bool): void =

  fcQsciLexerJSON_setHighlightEscapeSequences(self.h, highlight)

proc highlightEscapeSequences*(self: QsciLexerJSON, ): bool =

  fcQsciLexerJSON_highlightEscapeSequences(self.h)

proc setFoldCompact*(self: QsciLexerJSON, fold: bool): void =

  fcQsciLexerJSON_setFoldCompact(self.h, fold)

proc foldCompact*(self: QsciLexerJSON, ): bool =

  fcQsciLexerJSON_foldCompact(self.h)

proc tr2*(_: type QsciLexerJSON, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerJSON_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QsciLexerJSON, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerJSON_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QsciLexerJSON, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerJSON_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QsciLexerJSON, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerJSON_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QsciLexerJSON, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQsciLexerJSON_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerJSONmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QsciLexerJSON, slot: proc(super: QsciLexerJSONmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJSONmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_metacall(self: ptr cQsciLexerJSON, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerJSON_metacall ".} =
  type Cb = proc(super: QsciLexerJSONmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QsciLexerJSON(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
type QsciLexerJSONlanguageBase* = proc(): cstring
proc onlanguage*(self: QsciLexerJSON, slot: proc(): cstring) =
  # TODO check subclass
  type Cb = proc(): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_language(self: ptr cQsciLexerJSON, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerJSON_language ".} =
  type Cb = proc(): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc callVirtualBase_lexer(self: QsciLexerJSON, ): cstring =


  (fQsciLexerJSON_virtualbase_lexer(self.h))

type QsciLexerJSONlexerBase* = proc(): cstring
proc onlexer*(self: QsciLexerJSON, slot: proc(super: QsciLexerJSONlexerBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJSONlexerBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_lexer(self: ptr cQsciLexerJSON, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerJSON_lexer ".} =
  type Cb = proc(super: QsciLexerJSONlexerBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexer(QsciLexerJSON(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_lexerId(self: QsciLexerJSON, ): cint =


  fQsciLexerJSON_virtualbase_lexerId(self.h)

type QsciLexerJSONlexerIdBase* = proc(): cint
proc onlexerId*(self: QsciLexerJSON, slot: proc(super: QsciLexerJSONlexerIdBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJSONlexerIdBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_lexerId(self: ptr cQsciLexerJSON, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerJSON_lexerId ".} =
  type Cb = proc(super: QsciLexerJSONlexerIdBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexerId(QsciLexerJSON(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionFillups(self: QsciLexerJSON, ): cstring =


  (fQsciLexerJSON_virtualbase_autoCompletionFillups(self.h))

type QsciLexerJSONautoCompletionFillupsBase* = proc(): cstring
proc onautoCompletionFillups*(self: QsciLexerJSON, slot: proc(super: QsciLexerJSONautoCompletionFillupsBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJSONautoCompletionFillupsBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_autoCompletionFillups(self: ptr cQsciLexerJSON, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerJSON_autoCompletionFillups ".} =
  type Cb = proc(super: QsciLexerJSONautoCompletionFillupsBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionFillups(QsciLexerJSON(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionWordSeparators(self: QsciLexerJSON, ): seq[string] =


  var v_ma = fQsciLexerJSON_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerJSONautoCompletionWordSeparatorsBase* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: QsciLexerJSON, slot: proc(super: QsciLexerJSONautoCompletionWordSeparatorsBase): seq[string]) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJSONautoCompletionWordSeparatorsBase): seq[string]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_autoCompletionWordSeparators(self: ptr cQsciLexerJSON, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerJSON_autoCompletionWordSeparators ".} =
  type Cb = proc(super: QsciLexerJSONautoCompletionWordSeparatorsBase): seq[string]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionWordSeparators(QsciLexerJSON(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_blockEnd(self: QsciLexerJSON, style: ptr cint): cstring =


  (fQsciLexerJSON_virtualbase_blockEnd(self.h, style))

type QsciLexerJSONblockEndBase* = proc(style: ptr cint): cstring
proc onblockEnd*(self: QsciLexerJSON, slot: proc(super: QsciLexerJSONblockEndBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJSONblockEndBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_blockEnd(self: ptr cQsciLexerJSON, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerJSON_blockEnd ".} =
  type Cb = proc(super: QsciLexerJSONblockEndBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockEnd(QsciLexerJSON(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockLookback(self: QsciLexerJSON, ): cint =


  fQsciLexerJSON_virtualbase_blockLookback(self.h)

type QsciLexerJSONblockLookbackBase* = proc(): cint
proc onblockLookback*(self: QsciLexerJSON, slot: proc(super: QsciLexerJSONblockLookbackBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJSONblockLookbackBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_blockLookback(self: ptr cQsciLexerJSON, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerJSON_blockLookback ".} =
  type Cb = proc(super: QsciLexerJSONblockLookbackBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_blockLookback(QsciLexerJSON(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_blockStart(self: QsciLexerJSON, style: ptr cint): cstring =


  (fQsciLexerJSON_virtualbase_blockStart(self.h, style))

type QsciLexerJSONblockStartBase* = proc(style: ptr cint): cstring
proc onblockStart*(self: QsciLexerJSON, slot: proc(super: QsciLexerJSONblockStartBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJSONblockStartBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_blockStart(self: ptr cQsciLexerJSON, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerJSON_blockStart ".} =
  type Cb = proc(super: QsciLexerJSONblockStartBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStart(QsciLexerJSON(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockStartKeyword(self: QsciLexerJSON, style: ptr cint): cstring =


  (fQsciLexerJSON_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerJSONblockStartKeywordBase* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: QsciLexerJSON, slot: proc(super: QsciLexerJSONblockStartKeywordBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJSONblockStartKeywordBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_blockStartKeyword(self: ptr cQsciLexerJSON, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerJSON_blockStartKeyword ".} =
  type Cb = proc(super: QsciLexerJSONblockStartKeywordBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStartKeyword(QsciLexerJSON(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_braceStyle(self: QsciLexerJSON, ): cint =


  fQsciLexerJSON_virtualbase_braceStyle(self.h)

type QsciLexerJSONbraceStyleBase* = proc(): cint
proc onbraceStyle*(self: QsciLexerJSON, slot: proc(super: QsciLexerJSONbraceStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJSONbraceStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_braceStyle(self: ptr cQsciLexerJSON, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerJSON_braceStyle ".} =
  type Cb = proc(super: QsciLexerJSONbraceStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_braceStyle(QsciLexerJSON(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_caseSensitive(self: QsciLexerJSON, ): bool =


  fQsciLexerJSON_virtualbase_caseSensitive(self.h)

type QsciLexerJSONcaseSensitiveBase* = proc(): bool
proc oncaseSensitive*(self: QsciLexerJSON, slot: proc(super: QsciLexerJSONcaseSensitiveBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJSONcaseSensitiveBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_caseSensitive(self: ptr cQsciLexerJSON, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerJSON_caseSensitive ".} =
  type Cb = proc(super: QsciLexerJSONcaseSensitiveBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_caseSensitive(QsciLexerJSON(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_color(self: QsciLexerJSON, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerJSON_virtualbase_color(self.h, style))

type QsciLexerJSONcolorBase* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: QsciLexerJSON, slot: proc(super: QsciLexerJSONcolorBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJSONcolorBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_color(self: ptr cQsciLexerJSON, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerJSON_color ".} =
  type Cb = proc(super: QsciLexerJSONcolorBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_color(QsciLexerJSON(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_eolFill(self: QsciLexerJSON, style: cint): bool =


  fQsciLexerJSON_virtualbase_eolFill(self.h, style)

type QsciLexerJSONeolFillBase* = proc(style: cint): bool
proc oneolFill*(self: QsciLexerJSON, slot: proc(super: QsciLexerJSONeolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJSONeolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_eolFill(self: ptr cQsciLexerJSON, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerJSON_eolFill ".} =
  type Cb = proc(super: QsciLexerJSONeolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_eolFill(QsciLexerJSON(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_font(self: QsciLexerJSON, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerJSON_virtualbase_font(self.h, style))

type QsciLexerJSONfontBase* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: QsciLexerJSON, slot: proc(super: QsciLexerJSONfontBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJSONfontBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_font(self: ptr cQsciLexerJSON, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerJSON_font ".} =
  type Cb = proc(super: QsciLexerJSONfontBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_font(QsciLexerJSON(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_indentationGuideView(self: QsciLexerJSON, ): cint =


  fQsciLexerJSON_virtualbase_indentationGuideView(self.h)

type QsciLexerJSONindentationGuideViewBase* = proc(): cint
proc onindentationGuideView*(self: QsciLexerJSON, slot: proc(super: QsciLexerJSONindentationGuideViewBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJSONindentationGuideViewBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_indentationGuideView(self: ptr cQsciLexerJSON, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerJSON_indentationGuideView ".} =
  type Cb = proc(super: QsciLexerJSONindentationGuideViewBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_indentationGuideView(QsciLexerJSON(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_keywords(self: QsciLexerJSON, set: cint): cstring =


  (fQsciLexerJSON_virtualbase_keywords(self.h, set))

type QsciLexerJSONkeywordsBase* = proc(set: cint): cstring
proc onkeywords*(self: QsciLexerJSON, slot: proc(super: QsciLexerJSONkeywordsBase, set: cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJSONkeywordsBase, set: cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_keywords(self: ptr cQsciLexerJSON, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerJSON_keywords ".} =
  type Cb = proc(super: QsciLexerJSONkeywordsBase, set: cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(set: cint): auto =
    callVirtualBase_keywords(QsciLexerJSON(h: self), set)
  let slotval1 = set


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultStyle(self: QsciLexerJSON, ): cint =


  fQsciLexerJSON_virtualbase_defaultStyle(self.h)

type QsciLexerJSONdefaultStyleBase* = proc(): cint
proc ondefaultStyle*(self: QsciLexerJSON, slot: proc(super: QsciLexerJSONdefaultStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJSONdefaultStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_defaultStyle(self: ptr cQsciLexerJSON, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerJSON_defaultStyle ".} =
  type Cb = proc(super: QsciLexerJSONdefaultStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_defaultStyle(QsciLexerJSON(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
type QsciLexerJSONdescriptionBase* = proc(style: cint): string
proc ondescription*(self: QsciLexerJSON, slot: proc(style: cint): string) =
  # TODO check subclass
  type Cb = proc(style: cint): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_description(self: ptr cQsciLexerJSON, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerJSON_description ".} =
  type Cb = proc(style: cint): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc callVirtualBase_paper(self: QsciLexerJSON, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerJSON_virtualbase_paper(self.h, style))

type QsciLexerJSONpaperBase* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: QsciLexerJSON, slot: proc(super: QsciLexerJSONpaperBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJSONpaperBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_paper(self: ptr cQsciLexerJSON, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerJSON_paper ".} =
  type Cb = proc(super: QsciLexerJSONpaperBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_paper(QsciLexerJSON(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultColorWithStyle(self: QsciLexerJSON, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerJSON_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerJSONdefaultColorWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColorWithStyle*(self: QsciLexerJSON, slot: proc(super: QsciLexerJSONdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJSONdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_defaultColorWithStyle(self: ptr cQsciLexerJSON, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerJSON_defaultColorWithStyle ".} =
  type Cb = proc(super: QsciLexerJSONdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultColorWithStyle(QsciLexerJSON(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultEolFill(self: QsciLexerJSON, style: cint): bool =


  fQsciLexerJSON_virtualbase_defaultEolFill(self.h, style)

type QsciLexerJSONdefaultEolFillBase* = proc(style: cint): bool
proc ondefaultEolFill*(self: QsciLexerJSON, slot: proc(super: QsciLexerJSONdefaultEolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJSONdefaultEolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_defaultEolFill(self: ptr cQsciLexerJSON, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerJSON_defaultEolFill ".} =
  type Cb = proc(super: QsciLexerJSONdefaultEolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultEolFill(QsciLexerJSON(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultFontWithStyle(self: QsciLexerJSON, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerJSON_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerJSONdefaultFontWithStyleBase* = proc(style: cint): gen_qfont.QFont
proc ondefaultFontWithStyle*(self: QsciLexerJSON, slot: proc(super: QsciLexerJSONdefaultFontWithStyleBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJSONdefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_defaultFontWithStyle(self: ptr cQsciLexerJSON, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerJSON_defaultFontWithStyle ".} =
  type Cb = proc(super: QsciLexerJSONdefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultFontWithStyle(QsciLexerJSON(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultPaperWithStyle(self: QsciLexerJSON, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerJSON_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerJSONdefaultPaperWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaperWithStyle*(self: QsciLexerJSON, slot: proc(super: QsciLexerJSONdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJSONdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_defaultPaperWithStyle(self: ptr cQsciLexerJSON, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerJSON_defaultPaperWithStyle ".} =
  type Cb = proc(super: QsciLexerJSONdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultPaperWithStyle(QsciLexerJSON(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_setEditor(self: QsciLexerJSON, editor: gen_qsciscintilla.QsciScintilla): void =


  fQsciLexerJSON_virtualbase_setEditor(self.h, editor.h)

type QsciLexerJSONsetEditorBase* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: QsciLexerJSON, slot: proc(super: QsciLexerJSONsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJSONsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_setEditor(self: ptr cQsciLexerJSON, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerJSON_setEditor ".} =
  type Cb = proc(super: QsciLexerJSONsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qsciscintilla.QsciScintilla): auto =
    callVirtualBase_setEditor(QsciLexerJSON(h: self), editor)
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_refreshProperties(self: QsciLexerJSON, ): void =


  fQsciLexerJSON_virtualbase_refreshProperties(self.h)

type QsciLexerJSONrefreshPropertiesBase* = proc(): void
proc onrefreshProperties*(self: QsciLexerJSON, slot: proc(super: QsciLexerJSONrefreshPropertiesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJSONrefreshPropertiesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_refreshProperties(self: ptr cQsciLexerJSON, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerJSON_refreshProperties ".} =
  type Cb = proc(super: QsciLexerJSONrefreshPropertiesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_refreshProperties(QsciLexerJSON(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_styleBitsNeeded(self: QsciLexerJSON, ): cint =


  fQsciLexerJSON_virtualbase_styleBitsNeeded(self.h)

type QsciLexerJSONstyleBitsNeededBase* = proc(): cint
proc onstyleBitsNeeded*(self: QsciLexerJSON, slot: proc(super: QsciLexerJSONstyleBitsNeededBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJSONstyleBitsNeededBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_styleBitsNeeded(self: ptr cQsciLexerJSON, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerJSON_styleBitsNeeded ".} =
  type Cb = proc(super: QsciLexerJSONstyleBitsNeededBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_styleBitsNeeded(QsciLexerJSON(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_wordCharacters(self: QsciLexerJSON, ): cstring =


  (fQsciLexerJSON_virtualbase_wordCharacters(self.h))

type QsciLexerJSONwordCharactersBase* = proc(): cstring
proc onwordCharacters*(self: QsciLexerJSON, slot: proc(super: QsciLexerJSONwordCharactersBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJSONwordCharactersBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_wordCharacters(self: ptr cQsciLexerJSON, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerJSON_wordCharacters ".} =
  type Cb = proc(super: QsciLexerJSONwordCharactersBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_wordCharacters(QsciLexerJSON(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setAutoIndentStyle(self: QsciLexerJSON, autoindentstyle: cint): void =


  fQsciLexerJSON_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerJSONsetAutoIndentStyleBase* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: QsciLexerJSON, slot: proc(super: QsciLexerJSONsetAutoIndentStyleBase, autoindentstyle: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJSONsetAutoIndentStyleBase, autoindentstyle: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_setAutoIndentStyle(self: ptr cQsciLexerJSON, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerJSON_setAutoIndentStyle ".} =
  type Cb = proc(super: QsciLexerJSONsetAutoIndentStyleBase, autoindentstyle: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(autoindentstyle: cint): auto =
    callVirtualBase_setAutoIndentStyle(QsciLexerJSON(h: self), autoindentstyle)
  let slotval1 = autoindentstyle


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setColor(self: QsciLexerJSON, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerJSON_virtualbase_setColor(self.h, c.h, style)

type QsciLexerJSONsetColorBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: QsciLexerJSON, slot: proc(super: QsciLexerJSONsetColorBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJSONsetColorBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_setColor(self: ptr cQsciLexerJSON, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerJSON_setColor ".} =
  type Cb = proc(super: QsciLexerJSONsetColorBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setColor(QsciLexerJSON(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setEolFill(self: QsciLexerJSON, eoffill: bool, style: cint): void =


  fQsciLexerJSON_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerJSONsetEolFillBase* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: QsciLexerJSON, slot: proc(super: QsciLexerJSONsetEolFillBase, eoffill: bool, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJSONsetEolFillBase, eoffill: bool, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_setEolFill(self: ptr cQsciLexerJSON, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerJSON_setEolFill ".} =
  type Cb = proc(super: QsciLexerJSONsetEolFillBase, eoffill: bool, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eoffill: bool, style: cint): auto =
    callVirtualBase_setEolFill(QsciLexerJSON(h: self), eoffill, style)
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setFont(self: QsciLexerJSON, f: gen_qfont.QFont, style: cint): void =


  fQsciLexerJSON_virtualbase_setFont(self.h, f.h, style)

type QsciLexerJSONsetFontBase* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: QsciLexerJSON, slot: proc(super: QsciLexerJSONsetFontBase, f: gen_qfont.QFont, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJSONsetFontBase, f: gen_qfont.QFont, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_setFont(self: ptr cQsciLexerJSON, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerJSON_setFont ".} =
  type Cb = proc(super: QsciLexerJSONsetFontBase, f: gen_qfont.QFont, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(f: gen_qfont.QFont, style: cint): auto =
    callVirtualBase_setFont(QsciLexerJSON(h: self), f, style)
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setPaper(self: QsciLexerJSON, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerJSON_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerJSONsetPaperBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: QsciLexerJSON, slot: proc(super: QsciLexerJSONsetPaperBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJSONsetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_setPaper(self: ptr cQsciLexerJSON, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerJSON_setPaper ".} =
  type Cb = proc(super: QsciLexerJSONsetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setPaper(QsciLexerJSON(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_readProperties(self: QsciLexerJSON, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerJSON_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerJSONreadPropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: QsciLexerJSON, slot: proc(super: QsciLexerJSONreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJSONreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_readProperties(self: ptr cQsciLexerJSON, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerJSON_readProperties ".} =
  type Cb = proc(super: QsciLexerJSONreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_readProperties(QsciLexerJSON(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_writeProperties(self: QsciLexerJSON, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerJSON_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerJSONwritePropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: QsciLexerJSON, slot: proc(super: QsciLexerJSONwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJSONwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_writeProperties(self: ptr cQsciLexerJSON, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerJSON_writeProperties ".} =
  type Cb = proc(super: QsciLexerJSONwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_writeProperties(QsciLexerJSON(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_event(self: QsciLexerJSON, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerJSON_virtualbase_event(self.h, event.h)

type QsciLexerJSONeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QsciLexerJSON, slot: proc(super: QsciLexerJSONeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJSONeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_event(self: ptr cQsciLexerJSON, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerJSON_event ".} =
  type Cb = proc(super: QsciLexerJSONeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QsciLexerJSON(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QsciLexerJSON, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerJSON_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerJSONeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QsciLexerJSON, slot: proc(super: QsciLexerJSONeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJSONeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_eventFilter(self: ptr cQsciLexerJSON, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerJSON_eventFilter ".} =
  type Cb = proc(super: QsciLexerJSONeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QsciLexerJSON(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QsciLexerJSON, event: gen_qcoreevent.QTimerEvent): void =


  fQsciLexerJSON_virtualbase_timerEvent(self.h, event.h)

type QsciLexerJSONtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QsciLexerJSON, slot: proc(super: QsciLexerJSONtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJSONtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_timerEvent(self: ptr cQsciLexerJSON, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerJSON_timerEvent ".} =
  type Cb = proc(super: QsciLexerJSONtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QsciLexerJSON(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QsciLexerJSON, event: gen_qcoreevent.QChildEvent): void =


  fQsciLexerJSON_virtualbase_childEvent(self.h, event.h)

type QsciLexerJSONchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QsciLexerJSON, slot: proc(super: QsciLexerJSONchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJSONchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_childEvent(self: ptr cQsciLexerJSON, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerJSON_childEvent ".} =
  type Cb = proc(super: QsciLexerJSONchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QsciLexerJSON(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QsciLexerJSON, event: gen_qcoreevent.QEvent): void =


  fQsciLexerJSON_virtualbase_customEvent(self.h, event.h)

type QsciLexerJSONcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QsciLexerJSON, slot: proc(super: QsciLexerJSONcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJSONcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_customEvent(self: ptr cQsciLexerJSON, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerJSON_customEvent ".} =
  type Cb = proc(super: QsciLexerJSONcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QsciLexerJSON(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QsciLexerJSON, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerJSON_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerJSONconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QsciLexerJSON, slot: proc(super: QsciLexerJSONconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJSONconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_connectNotify(self: ptr cQsciLexerJSON, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerJSON_connectNotify ".} =
  type Cb = proc(super: QsciLexerJSONconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QsciLexerJSON(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QsciLexerJSON, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerJSON_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerJSONdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QsciLexerJSON, slot: proc(super: QsciLexerJSONdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJSONdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJSON_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJSON_disconnectNotify(self: ptr cQsciLexerJSON, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerJSON_disconnectNotify ".} =
  type Cb = proc(super: QsciLexerJSONdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QsciLexerJSON(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QsciLexerJSON): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerJSON_staticMetaObject())
proc delete*(self: QsciLexerJSON) =
  fcQsciLexerJSON_delete(self.h)
