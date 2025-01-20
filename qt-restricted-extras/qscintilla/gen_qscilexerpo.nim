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
{.compile("gen_qscilexerpo.cpp", cflags).}


type QsciLexerPOEnumEnum* = distinct cint
template Default*(_: type QsciLexerPOEnumEnum): untyped = 0
template Comment*(_: type QsciLexerPOEnumEnum): untyped = 1
template MessageId*(_: type QsciLexerPOEnumEnum): untyped = 2
template MessageIdText*(_: type QsciLexerPOEnumEnum): untyped = 3
template MessageString*(_: type QsciLexerPOEnumEnum): untyped = 4
template MessageStringText*(_: type QsciLexerPOEnumEnum): untyped = 5
template MessageContext*(_: type QsciLexerPOEnumEnum): untyped = 6
template MessageContextText*(_: type QsciLexerPOEnumEnum): untyped = 7
template Fuzzy*(_: type QsciLexerPOEnumEnum): untyped = 8
template ProgrammerComment*(_: type QsciLexerPOEnumEnum): untyped = 9
template Reference*(_: type QsciLexerPOEnumEnum): untyped = 10
template Flags*(_: type QsciLexerPOEnumEnum): untyped = 11
template MessageIdTextEOL*(_: type QsciLexerPOEnumEnum): untyped = 12
template MessageStringTextEOL*(_: type QsciLexerPOEnumEnum): untyped = 13
template MessageContextTextEOL*(_: type QsciLexerPOEnumEnum): untyped = 14


import gen_qscilexerpo_types
export gen_qscilexerpo_types

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

type cQsciLexerPO*{.exportc: "QsciLexerPO", incompleteStruct.} = object

proc fcQsciLexerPO_new(): ptr cQsciLexerPO {.importc: "QsciLexerPO_new".}
proc fcQsciLexerPO_new2(parent: pointer): ptr cQsciLexerPO {.importc: "QsciLexerPO_new2".}
proc fcQsciLexerPO_metaObject(self: pointer, ): pointer {.importc: "QsciLexerPO_metaObject".}
proc fcQsciLexerPO_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerPO_metacast".}
proc fcQsciLexerPO_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerPO_metacall".}
proc fcQsciLexerPO_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerPO_tr".}
proc fcQsciLexerPO_trUtf8(s: cstring): struct_miqt_string {.importc: "QsciLexerPO_trUtf8".}
proc fcQsciLexerPO_language(self: pointer, ): cstring {.importc: "QsciLexerPO_language".}
proc fcQsciLexerPO_lexer(self: pointer, ): cstring {.importc: "QsciLexerPO_lexer".}
proc fcQsciLexerPO_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerPO_defaultColor".}
proc fcQsciLexerPO_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerPO_defaultFont".}
proc fcQsciLexerPO_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerPO_description".}
proc fcQsciLexerPO_refreshProperties(self: pointer, ): void {.importc: "QsciLexerPO_refreshProperties".}
proc fcQsciLexerPO_foldComments(self: pointer, ): bool {.importc: "QsciLexerPO_foldComments".}
proc fcQsciLexerPO_foldCompact(self: pointer, ): bool {.importc: "QsciLexerPO_foldCompact".}
proc fcQsciLexerPO_setFoldComments(self: pointer, fold: bool): void {.importc: "QsciLexerPO_setFoldComments".}
proc fcQsciLexerPO_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerPO_setFoldCompact".}
proc fcQsciLexerPO_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerPO_tr2".}
proc fcQsciLexerPO_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerPO_tr3".}
proc fcQsciLexerPO_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerPO_trUtf82".}
proc fcQsciLexerPO_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerPO_trUtf83".}
proc fQsciLexerPO_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QsciLexerPO_virtualbase_metaObject".}
proc fcQsciLexerPO_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_metaObject".}
proc fQsciLexerPO_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QsciLexerPO_virtualbase_metacast".}
proc fcQsciLexerPO_override_virtual_metacast(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_metacast".}
proc fQsciLexerPO_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciLexerPO_virtualbase_metacall".}
proc fcQsciLexerPO_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_metacall".}
proc fQsciLexerPO_virtualbase_setFoldComments(self: pointer, fold: bool): void{.importc: "QsciLexerPO_virtualbase_setFoldComments".}
proc fcQsciLexerPO_override_virtual_setFoldComments(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_setFoldComments".}
proc fQsciLexerPO_virtualbase_setFoldCompact(self: pointer, fold: bool): void{.importc: "QsciLexerPO_virtualbase_setFoldCompact".}
proc fcQsciLexerPO_override_virtual_setFoldCompact(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_setFoldCompact".}
proc fcQsciLexerPO_override_virtual_language(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_language".}
proc fQsciLexerPO_virtualbase_lexer(self: pointer, ): cstring{.importc: "QsciLexerPO_virtualbase_lexer".}
proc fcQsciLexerPO_override_virtual_lexer(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_lexer".}
proc fQsciLexerPO_virtualbase_lexerId(self: pointer, ): cint{.importc: "QsciLexerPO_virtualbase_lexerId".}
proc fcQsciLexerPO_override_virtual_lexerId(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_lexerId".}
proc fQsciLexerPO_virtualbase_autoCompletionFillups(self: pointer, ): cstring{.importc: "QsciLexerPO_virtualbase_autoCompletionFillups".}
proc fcQsciLexerPO_override_virtual_autoCompletionFillups(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_autoCompletionFillups".}
proc fQsciLexerPO_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array{.importc: "QsciLexerPO_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerPO_override_virtual_autoCompletionWordSeparators(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_autoCompletionWordSeparators".}
proc fQsciLexerPO_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerPO_virtualbase_blockEnd".}
proc fcQsciLexerPO_override_virtual_blockEnd(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_blockEnd".}
proc fQsciLexerPO_virtualbase_blockLookback(self: pointer, ): cint{.importc: "QsciLexerPO_virtualbase_blockLookback".}
proc fcQsciLexerPO_override_virtual_blockLookback(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_blockLookback".}
proc fQsciLexerPO_virtualbase_blockStart(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerPO_virtualbase_blockStart".}
proc fcQsciLexerPO_override_virtual_blockStart(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_blockStart".}
proc fQsciLexerPO_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerPO_virtualbase_blockStartKeyword".}
proc fcQsciLexerPO_override_virtual_blockStartKeyword(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_blockStartKeyword".}
proc fQsciLexerPO_virtualbase_braceStyle(self: pointer, ): cint{.importc: "QsciLexerPO_virtualbase_braceStyle".}
proc fcQsciLexerPO_override_virtual_braceStyle(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_braceStyle".}
proc fQsciLexerPO_virtualbase_caseSensitive(self: pointer, ): bool{.importc: "QsciLexerPO_virtualbase_caseSensitive".}
proc fcQsciLexerPO_override_virtual_caseSensitive(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_caseSensitive".}
proc fQsciLexerPO_virtualbase_color(self: pointer, style: cint): pointer{.importc: "QsciLexerPO_virtualbase_color".}
proc fcQsciLexerPO_override_virtual_color(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_color".}
proc fQsciLexerPO_virtualbase_eolFill(self: pointer, style: cint): bool{.importc: "QsciLexerPO_virtualbase_eolFill".}
proc fcQsciLexerPO_override_virtual_eolFill(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_eolFill".}
proc fQsciLexerPO_virtualbase_font(self: pointer, style: cint): pointer{.importc: "QsciLexerPO_virtualbase_font".}
proc fcQsciLexerPO_override_virtual_font(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_font".}
proc fQsciLexerPO_virtualbase_indentationGuideView(self: pointer, ): cint{.importc: "QsciLexerPO_virtualbase_indentationGuideView".}
proc fcQsciLexerPO_override_virtual_indentationGuideView(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_indentationGuideView".}
proc fQsciLexerPO_virtualbase_keywords(self: pointer, set: cint): cstring{.importc: "QsciLexerPO_virtualbase_keywords".}
proc fcQsciLexerPO_override_virtual_keywords(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_keywords".}
proc fQsciLexerPO_virtualbase_defaultStyle(self: pointer, ): cint{.importc: "QsciLexerPO_virtualbase_defaultStyle".}
proc fcQsciLexerPO_override_virtual_defaultStyle(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_defaultStyle".}
proc fcQsciLexerPO_override_virtual_description(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_description".}
proc fQsciLexerPO_virtualbase_paper(self: pointer, style: cint): pointer{.importc: "QsciLexerPO_virtualbase_paper".}
proc fcQsciLexerPO_override_virtual_paper(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_paper".}
proc fQsciLexerPO_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerPO_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerPO_override_virtual_defaultColorWithStyle(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_defaultColorWithStyle".}
proc fQsciLexerPO_virtualbase_defaultEolFill(self: pointer, style: cint): bool{.importc: "QsciLexerPO_virtualbase_defaultEolFill".}
proc fcQsciLexerPO_override_virtual_defaultEolFill(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_defaultEolFill".}
proc fQsciLexerPO_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerPO_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerPO_override_virtual_defaultFontWithStyle(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_defaultFontWithStyle".}
proc fQsciLexerPO_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerPO_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerPO_override_virtual_defaultPaperWithStyle(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_defaultPaperWithStyle".}
proc fQsciLexerPO_virtualbase_setEditor(self: pointer, editor: pointer): void{.importc: "QsciLexerPO_virtualbase_setEditor".}
proc fcQsciLexerPO_override_virtual_setEditor(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_setEditor".}
proc fQsciLexerPO_virtualbase_refreshProperties(self: pointer, ): void{.importc: "QsciLexerPO_virtualbase_refreshProperties".}
proc fcQsciLexerPO_override_virtual_refreshProperties(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_refreshProperties".}
proc fQsciLexerPO_virtualbase_styleBitsNeeded(self: pointer, ): cint{.importc: "QsciLexerPO_virtualbase_styleBitsNeeded".}
proc fcQsciLexerPO_override_virtual_styleBitsNeeded(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_styleBitsNeeded".}
proc fQsciLexerPO_virtualbase_wordCharacters(self: pointer, ): cstring{.importc: "QsciLexerPO_virtualbase_wordCharacters".}
proc fcQsciLexerPO_override_virtual_wordCharacters(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_wordCharacters".}
proc fQsciLexerPO_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void{.importc: "QsciLexerPO_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerPO_override_virtual_setAutoIndentStyle(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_setAutoIndentStyle".}
proc fQsciLexerPO_virtualbase_setColor(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerPO_virtualbase_setColor".}
proc fcQsciLexerPO_override_virtual_setColor(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_setColor".}
proc fQsciLexerPO_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void{.importc: "QsciLexerPO_virtualbase_setEolFill".}
proc fcQsciLexerPO_override_virtual_setEolFill(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_setEolFill".}
proc fQsciLexerPO_virtualbase_setFont(self: pointer, f: pointer, style: cint): void{.importc: "QsciLexerPO_virtualbase_setFont".}
proc fcQsciLexerPO_override_virtual_setFont(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_setFont".}
proc fQsciLexerPO_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerPO_virtualbase_setPaper".}
proc fcQsciLexerPO_override_virtual_setPaper(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_setPaper".}
proc fQsciLexerPO_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerPO_virtualbase_readProperties".}
proc fcQsciLexerPO_override_virtual_readProperties(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_readProperties".}
proc fQsciLexerPO_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerPO_virtualbase_writeProperties".}
proc fcQsciLexerPO_override_virtual_writeProperties(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_writeProperties".}
proc fQsciLexerPO_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QsciLexerPO_virtualbase_event".}
proc fcQsciLexerPO_override_virtual_event(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_event".}
proc fQsciLexerPO_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciLexerPO_virtualbase_eventFilter".}
proc fcQsciLexerPO_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_eventFilter".}
proc fQsciLexerPO_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciLexerPO_virtualbase_timerEvent".}
proc fcQsciLexerPO_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_timerEvent".}
proc fQsciLexerPO_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciLexerPO_virtualbase_childEvent".}
proc fcQsciLexerPO_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_childEvent".}
proc fQsciLexerPO_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciLexerPO_virtualbase_customEvent".}
proc fcQsciLexerPO_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_customEvent".}
proc fQsciLexerPO_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerPO_virtualbase_connectNotify".}
proc fcQsciLexerPO_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_connectNotify".}
proc fQsciLexerPO_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerPO_virtualbase_disconnectNotify".}
proc fcQsciLexerPO_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_disconnectNotify".}
proc fcQsciLexerPO_staticMetaObject(): pointer {.importc: "QsciLexerPO_staticMetaObject".}
proc fcQsciLexerPO_delete(self: pointer) {.importc: "QsciLexerPO_delete".}


func init*(T: type gen_qscilexerpo_types.QsciLexerPO, h: ptr cQsciLexerPO): gen_qscilexerpo_types.QsciLexerPO =
  T(h: h)
proc create*(T: type gen_qscilexerpo_types.QsciLexerPO, ): gen_qscilexerpo_types.QsciLexerPO =
  gen_qscilexerpo_types.QsciLexerPO.init(fcQsciLexerPO_new())

proc create*(T: type gen_qscilexerpo_types.QsciLexerPO, parent: gen_qobject.QObject): gen_qscilexerpo_types.QsciLexerPO =
  gen_qscilexerpo_types.QsciLexerPO.init(fcQsciLexerPO_new2(parent.h))

proc metaObject*(self: gen_qscilexerpo_types.QsciLexerPO, ): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerPO_metaObject(self.h))

proc metacast*(self: gen_qscilexerpo_types.QsciLexerPO, param1: cstring): pointer =
  fcQsciLexerPO_metacast(self.h, param1)

proc metacall*(self: gen_qscilexerpo_types.QsciLexerPO, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerPO_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexerpo_types.QsciLexerPO, s: cstring): string =
  let v_ms = fcQsciLexerPO_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexerpo_types.QsciLexerPO, s: cstring): string =
  let v_ms = fcQsciLexerPO_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexerpo_types.QsciLexerPO, ): cstring =
  (fcQsciLexerPO_language(self.h))

proc lexer*(self: gen_qscilexerpo_types.QsciLexerPO, ): cstring =
  (fcQsciLexerPO_lexer(self.h))

proc defaultColor*(self: gen_qscilexerpo_types.QsciLexerPO, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fcQsciLexerPO_defaultColor(self.h, style))

proc defaultFont*(self: gen_qscilexerpo_types.QsciLexerPO, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fcQsciLexerPO_defaultFont(self.h, style))

proc description*(self: gen_qscilexerpo_types.QsciLexerPO, style: cint): string =
  let v_ms = fcQsciLexerPO_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: gen_qscilexerpo_types.QsciLexerPO, ): void =
  fcQsciLexerPO_refreshProperties(self.h)

proc foldComments*(self: gen_qscilexerpo_types.QsciLexerPO, ): bool =
  fcQsciLexerPO_foldComments(self.h)

proc foldCompact*(self: gen_qscilexerpo_types.QsciLexerPO, ): bool =
  fcQsciLexerPO_foldCompact(self.h)

proc setFoldComments*(self: gen_qscilexerpo_types.QsciLexerPO, fold: bool): void =
  fcQsciLexerPO_setFoldComments(self.h, fold)

proc setFoldCompact*(self: gen_qscilexerpo_types.QsciLexerPO, fold: bool): void =
  fcQsciLexerPO_setFoldCompact(self.h, fold)

proc tr*(_: type gen_qscilexerpo_types.QsciLexerPO, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerPO_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexerpo_types.QsciLexerPO, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerPO_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexerpo_types.QsciLexerPO, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerPO_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexerpo_types.QsciLexerPO, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerPO_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QsciLexerPOmetaObject*(self: gen_qscilexerpo_types.QsciLexerPO, ): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fQsciLexerPO_virtualbase_metaObject(self.h))

type QsciLexerPOmetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qscilexerpo_types.QsciLexerPO, slot: QsciLexerPOmetaObjectProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_metaObject(self: ptr cQsciLexerPO, slot: int): pointer {.exportc: "miqt_exec_callback_QsciLexerPO_metaObject ".} =
  var nimfunc = cast[ptr QsciLexerPOmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QsciLexerPOmetacast*(self: gen_qscilexerpo_types.QsciLexerPO, param1: cstring): pointer =
  fQsciLexerPO_virtualbase_metacast(self.h, param1)

type QsciLexerPOmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qscilexerpo_types.QsciLexerPO, slot: QsciLexerPOmetacastProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_metacast(self: ptr cQsciLexerPO, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciLexerPO_metacast ".} =
  var nimfunc = cast[ptr QsciLexerPOmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerPOmetacall*(self: gen_qscilexerpo_types.QsciLexerPO, param1: cint, param2: cint, param3: pointer): cint =
  fQsciLexerPO_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerPOmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qscilexerpo_types.QsciLexerPO, slot: QsciLexerPOmetacallProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_metacall(self: ptr cQsciLexerPO, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerPO_metacall ".} =
  var nimfunc = cast[ptr QsciLexerPOmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QsciLexerPOsetFoldComments*(self: gen_qscilexerpo_types.QsciLexerPO, fold: bool): void =
  fQsciLexerPO_virtualbase_setFoldComments(self.h, fold)

type QsciLexerPOsetFoldCommentsProc* = proc(fold: bool): void
proc onsetFoldComments*(self: gen_qscilexerpo_types.QsciLexerPO, slot: QsciLexerPOsetFoldCommentsProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOsetFoldCommentsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_setFoldComments(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_setFoldComments(self: ptr cQsciLexerPO, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerPO_setFoldComments ".} =
  var nimfunc = cast[ptr QsciLexerPOsetFoldCommentsProc](cast[pointer](slot))
  let slotval1 = fold


  nimfunc[](slotval1)
proc QsciLexerPOsetFoldCompact*(self: gen_qscilexerpo_types.QsciLexerPO, fold: bool): void =
  fQsciLexerPO_virtualbase_setFoldCompact(self.h, fold)

type QsciLexerPOsetFoldCompactProc* = proc(fold: bool): void
proc onsetFoldCompact*(self: gen_qscilexerpo_types.QsciLexerPO, slot: QsciLexerPOsetFoldCompactProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOsetFoldCompactProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_setFoldCompact(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_setFoldCompact(self: ptr cQsciLexerPO, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerPO_setFoldCompact ".} =
  var nimfunc = cast[ptr QsciLexerPOsetFoldCompactProc](cast[pointer](slot))
  let slotval1 = fold


  nimfunc[](slotval1)
type QsciLexerPOlanguageProc* = proc(): cstring
proc onlanguage*(self: gen_qscilexerpo_types.QsciLexerPO, slot: QsciLexerPOlanguageProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOlanguageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_language(self: ptr cQsciLexerPO, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerPO_language ".} =
  var nimfunc = cast[ptr QsciLexerPOlanguageProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPOlexer*(self: gen_qscilexerpo_types.QsciLexerPO, ): cstring =
  (fQsciLexerPO_virtualbase_lexer(self.h))

type QsciLexerPOlexerProc* = proc(): cstring
proc onlexer*(self: gen_qscilexerpo_types.QsciLexerPO, slot: QsciLexerPOlexerProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOlexerProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_lexer(self: ptr cQsciLexerPO, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerPO_lexer ".} =
  var nimfunc = cast[ptr QsciLexerPOlexerProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPOlexerId*(self: gen_qscilexerpo_types.QsciLexerPO, ): cint =
  fQsciLexerPO_virtualbase_lexerId(self.h)

type QsciLexerPOlexerIdProc* = proc(): cint
proc onlexerId*(self: gen_qscilexerpo_types.QsciLexerPO, slot: QsciLexerPOlexerIdProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOlexerIdProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_lexerId(self: ptr cQsciLexerPO, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPO_lexerId ".} =
  var nimfunc = cast[ptr QsciLexerPOlexerIdProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPOautoCompletionFillups*(self: gen_qscilexerpo_types.QsciLexerPO, ): cstring =
  (fQsciLexerPO_virtualbase_autoCompletionFillups(self.h))

type QsciLexerPOautoCompletionFillupsProc* = proc(): cstring
proc onautoCompletionFillups*(self: gen_qscilexerpo_types.QsciLexerPO, slot: QsciLexerPOautoCompletionFillupsProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOautoCompletionFillupsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_autoCompletionFillups(self: ptr cQsciLexerPO, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerPO_autoCompletionFillups ".} =
  var nimfunc = cast[ptr QsciLexerPOautoCompletionFillupsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPOautoCompletionWordSeparators*(self: gen_qscilexerpo_types.QsciLexerPO, ): seq[string] =
  var v_ma = fQsciLexerPO_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerPOautoCompletionWordSeparatorsProc* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: gen_qscilexerpo_types.QsciLexerPO, slot: QsciLexerPOautoCompletionWordSeparatorsProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOautoCompletionWordSeparatorsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_autoCompletionWordSeparators(self: ptr cQsciLexerPO, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerPO_autoCompletionWordSeparators ".} =
  var nimfunc = cast[ptr QsciLexerPOautoCompletionWordSeparatorsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QsciLexerPOblockEnd*(self: gen_qscilexerpo_types.QsciLexerPO, style: ptr cint): cstring =
  (fQsciLexerPO_virtualbase_blockEnd(self.h, style))

type QsciLexerPOblockEndProc* = proc(style: ptr cint): cstring
proc onblockEnd*(self: gen_qscilexerpo_types.QsciLexerPO, slot: QsciLexerPOblockEndProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOblockEndProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_blockEnd(self: ptr cQsciLexerPO, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerPO_blockEnd ".} =
  var nimfunc = cast[ptr QsciLexerPOblockEndProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerPOblockLookback*(self: gen_qscilexerpo_types.QsciLexerPO, ): cint =
  fQsciLexerPO_virtualbase_blockLookback(self.h)

type QsciLexerPOblockLookbackProc* = proc(): cint
proc onblockLookback*(self: gen_qscilexerpo_types.QsciLexerPO, slot: QsciLexerPOblockLookbackProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOblockLookbackProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_blockLookback(self: ptr cQsciLexerPO, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPO_blockLookback ".} =
  var nimfunc = cast[ptr QsciLexerPOblockLookbackProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPOblockStart*(self: gen_qscilexerpo_types.QsciLexerPO, style: ptr cint): cstring =
  (fQsciLexerPO_virtualbase_blockStart(self.h, style))

type QsciLexerPOblockStartProc* = proc(style: ptr cint): cstring
proc onblockStart*(self: gen_qscilexerpo_types.QsciLexerPO, slot: QsciLexerPOblockStartProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOblockStartProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_blockStart(self: ptr cQsciLexerPO, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerPO_blockStart ".} =
  var nimfunc = cast[ptr QsciLexerPOblockStartProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerPOblockStartKeyword*(self: gen_qscilexerpo_types.QsciLexerPO, style: ptr cint): cstring =
  (fQsciLexerPO_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerPOblockStartKeywordProc* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: gen_qscilexerpo_types.QsciLexerPO, slot: QsciLexerPOblockStartKeywordProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOblockStartKeywordProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_blockStartKeyword(self: ptr cQsciLexerPO, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerPO_blockStartKeyword ".} =
  var nimfunc = cast[ptr QsciLexerPOblockStartKeywordProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerPObraceStyle*(self: gen_qscilexerpo_types.QsciLexerPO, ): cint =
  fQsciLexerPO_virtualbase_braceStyle(self.h)

type QsciLexerPObraceStyleProc* = proc(): cint
proc onbraceStyle*(self: gen_qscilexerpo_types.QsciLexerPO, slot: QsciLexerPObraceStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerPObraceStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_braceStyle(self: ptr cQsciLexerPO, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPO_braceStyle ".} =
  var nimfunc = cast[ptr QsciLexerPObraceStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPOcaseSensitive*(self: gen_qscilexerpo_types.QsciLexerPO, ): bool =
  fQsciLexerPO_virtualbase_caseSensitive(self.h)

type QsciLexerPOcaseSensitiveProc* = proc(): bool
proc oncaseSensitive*(self: gen_qscilexerpo_types.QsciLexerPO, slot: QsciLexerPOcaseSensitiveProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOcaseSensitiveProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_caseSensitive(self: ptr cQsciLexerPO, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerPO_caseSensitive ".} =
  var nimfunc = cast[ptr QsciLexerPOcaseSensitiveProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPOcolor*(self: gen_qscilexerpo_types.QsciLexerPO, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerPO_virtualbase_color(self.h, style))

type QsciLexerPOcolorProc* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: gen_qscilexerpo_types.QsciLexerPO, slot: QsciLexerPOcolorProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOcolorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_color(self: ptr cQsciLexerPO, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPO_color ".} =
  var nimfunc = cast[ptr QsciLexerPOcolorProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerPOeolFill*(self: gen_qscilexerpo_types.QsciLexerPO, style: cint): bool =
  fQsciLexerPO_virtualbase_eolFill(self.h, style)

type QsciLexerPOeolFillProc* = proc(style: cint): bool
proc oneolFill*(self: gen_qscilexerpo_types.QsciLexerPO, slot: QsciLexerPOeolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOeolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_eolFill(self: ptr cQsciLexerPO, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerPO_eolFill ".} =
  var nimfunc = cast[ptr QsciLexerPOeolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerPOfont*(self: gen_qscilexerpo_types.QsciLexerPO, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fQsciLexerPO_virtualbase_font(self.h, style))

type QsciLexerPOfontProc* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: gen_qscilexerpo_types.QsciLexerPO, slot: QsciLexerPOfontProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOfontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_font(self: ptr cQsciLexerPO, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPO_font ".} =
  var nimfunc = cast[ptr QsciLexerPOfontProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerPOindentationGuideView*(self: gen_qscilexerpo_types.QsciLexerPO, ): cint =
  fQsciLexerPO_virtualbase_indentationGuideView(self.h)

type QsciLexerPOindentationGuideViewProc* = proc(): cint
proc onindentationGuideView*(self: gen_qscilexerpo_types.QsciLexerPO, slot: QsciLexerPOindentationGuideViewProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOindentationGuideViewProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_indentationGuideView(self: ptr cQsciLexerPO, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPO_indentationGuideView ".} =
  var nimfunc = cast[ptr QsciLexerPOindentationGuideViewProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPOkeywords*(self: gen_qscilexerpo_types.QsciLexerPO, set: cint): cstring =
  (fQsciLexerPO_virtualbase_keywords(self.h, set))

type QsciLexerPOkeywordsProc* = proc(set: cint): cstring
proc onkeywords*(self: gen_qscilexerpo_types.QsciLexerPO, slot: QsciLexerPOkeywordsProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOkeywordsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_keywords(self: ptr cQsciLexerPO, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerPO_keywords ".} =
  var nimfunc = cast[ptr QsciLexerPOkeywordsProc](cast[pointer](slot))
  let slotval1 = set


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerPOdefaultStyle*(self: gen_qscilexerpo_types.QsciLexerPO, ): cint =
  fQsciLexerPO_virtualbase_defaultStyle(self.h)

type QsciLexerPOdefaultStyleProc* = proc(): cint
proc ondefaultStyle*(self: gen_qscilexerpo_types.QsciLexerPO, slot: QsciLexerPOdefaultStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOdefaultStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_defaultStyle(self: ptr cQsciLexerPO, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPO_defaultStyle ".} =
  var nimfunc = cast[ptr QsciLexerPOdefaultStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QsciLexerPOdescriptionProc* = proc(style: cint): string
proc ondescription*(self: gen_qscilexerpo_types.QsciLexerPO, slot: QsciLexerPOdescriptionProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOdescriptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_description(self: ptr cQsciLexerPO, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerPO_description ".} =
  var nimfunc = cast[ptr QsciLexerPOdescriptionProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc QsciLexerPOpaper*(self: gen_qscilexerpo_types.QsciLexerPO, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerPO_virtualbase_paper(self.h, style))

type QsciLexerPOpaperProc* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: gen_qscilexerpo_types.QsciLexerPO, slot: QsciLexerPOpaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOpaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_paper(self: ptr cQsciLexerPO, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPO_paper ".} =
  var nimfunc = cast[ptr QsciLexerPOpaperProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerPOdefaultColor*(self: gen_qscilexerpo_types.QsciLexerPO, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerPO_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerPOdefaultColorWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColor*(self: gen_qscilexerpo_types.QsciLexerPO, slot: QsciLexerPOdefaultColorWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOdefaultColorWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_defaultColorWithStyle(self: ptr cQsciLexerPO, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPO_defaultColorWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerPOdefaultColorWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerPOdefaultEolFill*(self: gen_qscilexerpo_types.QsciLexerPO, style: cint): bool =
  fQsciLexerPO_virtualbase_defaultEolFill(self.h, style)

type QsciLexerPOdefaultEolFillProc* = proc(style: cint): bool
proc ondefaultEolFill*(self: gen_qscilexerpo_types.QsciLexerPO, slot: QsciLexerPOdefaultEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOdefaultEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_defaultEolFill(self: ptr cQsciLexerPO, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerPO_defaultEolFill ".} =
  var nimfunc = cast[ptr QsciLexerPOdefaultEolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerPOdefaultFont*(self: gen_qscilexerpo_types.QsciLexerPO, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fQsciLexerPO_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerPOdefaultFontWithStyleProc* = proc(style: cint): gen_qfont.QFont
proc ondefaultFont*(self: gen_qscilexerpo_types.QsciLexerPO, slot: QsciLexerPOdefaultFontWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOdefaultFontWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_defaultFontWithStyle(self: ptr cQsciLexerPO, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPO_defaultFontWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerPOdefaultFontWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerPOdefaultPaper*(self: gen_qscilexerpo_types.QsciLexerPO, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerPO_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerPOdefaultPaperWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaper*(self: gen_qscilexerpo_types.QsciLexerPO, slot: QsciLexerPOdefaultPaperWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOdefaultPaperWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_defaultPaperWithStyle(self: ptr cQsciLexerPO, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPO_defaultPaperWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerPOdefaultPaperWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerPOsetEditor*(self: gen_qscilexerpo_types.QsciLexerPO, editor: gen_qsciscintilla.QsciScintilla): void =
  fQsciLexerPO_virtualbase_setEditor(self.h, editor.h)

type QsciLexerPOsetEditorProc* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: gen_qscilexerpo_types.QsciLexerPO, slot: QsciLexerPOsetEditorProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOsetEditorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_setEditor(self: ptr cQsciLexerPO, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPO_setEditor ".} =
  var nimfunc = cast[ptr QsciLexerPOsetEditorProc](cast[pointer](slot))
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](slotval1)
proc QsciLexerPOrefreshProperties*(self: gen_qscilexerpo_types.QsciLexerPO, ): void =
  fQsciLexerPO_virtualbase_refreshProperties(self.h)

type QsciLexerPOrefreshPropertiesProc* = proc(): void
proc onrefreshProperties*(self: gen_qscilexerpo_types.QsciLexerPO, slot: QsciLexerPOrefreshPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOrefreshPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_refreshProperties(self: ptr cQsciLexerPO, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerPO_refreshProperties ".} =
  var nimfunc = cast[ptr QsciLexerPOrefreshPropertiesProc](cast[pointer](slot))

  nimfunc[]()
proc QsciLexerPOstyleBitsNeeded*(self: gen_qscilexerpo_types.QsciLexerPO, ): cint =
  fQsciLexerPO_virtualbase_styleBitsNeeded(self.h)

type QsciLexerPOstyleBitsNeededProc* = proc(): cint
proc onstyleBitsNeeded*(self: gen_qscilexerpo_types.QsciLexerPO, slot: QsciLexerPOstyleBitsNeededProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOstyleBitsNeededProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_styleBitsNeeded(self: ptr cQsciLexerPO, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPO_styleBitsNeeded ".} =
  var nimfunc = cast[ptr QsciLexerPOstyleBitsNeededProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPOwordCharacters*(self: gen_qscilexerpo_types.QsciLexerPO, ): cstring =
  (fQsciLexerPO_virtualbase_wordCharacters(self.h))

type QsciLexerPOwordCharactersProc* = proc(): cstring
proc onwordCharacters*(self: gen_qscilexerpo_types.QsciLexerPO, slot: QsciLexerPOwordCharactersProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOwordCharactersProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_wordCharacters(self: ptr cQsciLexerPO, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerPO_wordCharacters ".} =
  var nimfunc = cast[ptr QsciLexerPOwordCharactersProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPOsetAutoIndentStyle*(self: gen_qscilexerpo_types.QsciLexerPO, autoindentstyle: cint): void =
  fQsciLexerPO_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerPOsetAutoIndentStyleProc* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: gen_qscilexerpo_types.QsciLexerPO, slot: QsciLexerPOsetAutoIndentStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOsetAutoIndentStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_setAutoIndentStyle(self: ptr cQsciLexerPO, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerPO_setAutoIndentStyle ".} =
  var nimfunc = cast[ptr QsciLexerPOsetAutoIndentStyleProc](cast[pointer](slot))
  let slotval1 = autoindentstyle


  nimfunc[](slotval1)
proc QsciLexerPOsetColor*(self: gen_qscilexerpo_types.QsciLexerPO, c: gen_qcolor.QColor, style: cint): void =
  fQsciLexerPO_virtualbase_setColor(self.h, c.h, style)

type QsciLexerPOsetColorProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: gen_qscilexerpo_types.QsciLexerPO, slot: QsciLexerPOsetColorProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOsetColorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_setColor(self: ptr cQsciLexerPO, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerPO_setColor ".} =
  var nimfunc = cast[ptr QsciLexerPOsetColorProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerPOsetEolFill*(self: gen_qscilexerpo_types.QsciLexerPO, eoffill: bool, style: cint): void =
  fQsciLexerPO_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerPOsetEolFillProc* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: gen_qscilexerpo_types.QsciLexerPO, slot: QsciLexerPOsetEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOsetEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_setEolFill(self: ptr cQsciLexerPO, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerPO_setEolFill ".} =
  var nimfunc = cast[ptr QsciLexerPOsetEolFillProc](cast[pointer](slot))
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerPOsetFont*(self: gen_qscilexerpo_types.QsciLexerPO, f: gen_qfont.QFont, style: cint): void =
  fQsciLexerPO_virtualbase_setFont(self.h, f.h, style)

type QsciLexerPOsetFontProc* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: gen_qscilexerpo_types.QsciLexerPO, slot: QsciLexerPOsetFontProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOsetFontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_setFont(self: ptr cQsciLexerPO, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerPO_setFont ".} =
  var nimfunc = cast[ptr QsciLexerPOsetFontProc](cast[pointer](slot))
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerPOsetPaper*(self: gen_qscilexerpo_types.QsciLexerPO, c: gen_qcolor.QColor, style: cint): void =
  fQsciLexerPO_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerPOsetPaperProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: gen_qscilexerpo_types.QsciLexerPO, slot: QsciLexerPOsetPaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOsetPaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_setPaper(self: ptr cQsciLexerPO, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerPO_setPaper ".} =
  var nimfunc = cast[ptr QsciLexerPOsetPaperProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerPOreadProperties*(self: gen_qscilexerpo_types.QsciLexerPO, qs: gen_qsettings.QSettings, prefix: string): bool =
  fQsciLexerPO_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerPOreadPropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: gen_qscilexerpo_types.QsciLexerPO, slot: QsciLexerPOreadPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOreadPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_readProperties(self: ptr cQsciLexerPO, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerPO_readProperties ".} =
  var nimfunc = cast[ptr QsciLexerPOreadPropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerPOwriteProperties*(self: gen_qscilexerpo_types.QsciLexerPO, qs: gen_qsettings.QSettings, prefix: string): bool =
  fQsciLexerPO_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerPOwritePropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: gen_qscilexerpo_types.QsciLexerPO, slot: QsciLexerPOwritePropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOwritePropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_writeProperties(self: ptr cQsciLexerPO, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerPO_writeProperties ".} =
  var nimfunc = cast[ptr QsciLexerPOwritePropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerPOevent*(self: gen_qscilexerpo_types.QsciLexerPO, event: gen_qcoreevent.QEvent): bool =
  fQsciLexerPO_virtualbase_event(self.h, event.h)

type QsciLexerPOeventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qscilexerpo_types.QsciLexerPO, slot: QsciLexerPOeventProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_event(self: ptr cQsciLexerPO, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerPO_event ".} =
  var nimfunc = cast[ptr QsciLexerPOeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerPOeventFilter*(self: gen_qscilexerpo_types.QsciLexerPO, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =
  fQsciLexerPO_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerPOeventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qscilexerpo_types.QsciLexerPO, slot: QsciLexerPOeventFilterProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_eventFilter(self: ptr cQsciLexerPO, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerPO_eventFilter ".} =
  var nimfunc = cast[ptr QsciLexerPOeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerPOtimerEvent*(self: gen_qscilexerpo_types.QsciLexerPO, event: gen_qcoreevent.QTimerEvent): void =
  fQsciLexerPO_virtualbase_timerEvent(self.h, event.h)

type QsciLexerPOtimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qscilexerpo_types.QsciLexerPO, slot: QsciLexerPOtimerEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_timerEvent(self: ptr cQsciLexerPO, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPO_timerEvent ".} =
  var nimfunc = cast[ptr QsciLexerPOtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerPOchildEvent*(self: gen_qscilexerpo_types.QsciLexerPO, event: gen_qcoreevent.QChildEvent): void =
  fQsciLexerPO_virtualbase_childEvent(self.h, event.h)

type QsciLexerPOchildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qscilexerpo_types.QsciLexerPO, slot: QsciLexerPOchildEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_childEvent(self: ptr cQsciLexerPO, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPO_childEvent ".} =
  var nimfunc = cast[ptr QsciLexerPOchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerPOcustomEvent*(self: gen_qscilexerpo_types.QsciLexerPO, event: gen_qcoreevent.QEvent): void =
  fQsciLexerPO_virtualbase_customEvent(self.h, event.h)

type QsciLexerPOcustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qscilexerpo_types.QsciLexerPO, slot: QsciLexerPOcustomEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_customEvent(self: ptr cQsciLexerPO, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPO_customEvent ".} =
  var nimfunc = cast[ptr QsciLexerPOcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerPOconnectNotify*(self: gen_qscilexerpo_types.QsciLexerPO, signal: gen_qmetaobject.QMetaMethod): void =
  fQsciLexerPO_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerPOconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qscilexerpo_types.QsciLexerPO, slot: QsciLexerPOconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_connectNotify(self: ptr cQsciLexerPO, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPO_connectNotify ".} =
  var nimfunc = cast[ptr QsciLexerPOconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QsciLexerPOdisconnectNotify*(self: gen_qscilexerpo_types.QsciLexerPO, signal: gen_qmetaobject.QMetaMethod): void =
  fQsciLexerPO_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerPOdisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qscilexerpo_types.QsciLexerPO, slot: QsciLexerPOdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerPOdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_disconnectNotify(self: ptr cQsciLexerPO, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPO_disconnectNotify ".} =
  var nimfunc = cast[ptr QsciLexerPOdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qscilexerpo_types.QsciLexerPO): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerPO_staticMetaObject())
proc delete*(self: gen_qscilexerpo_types.QsciLexerPO) =
  fcQsciLexerPO_delete(self.h)
