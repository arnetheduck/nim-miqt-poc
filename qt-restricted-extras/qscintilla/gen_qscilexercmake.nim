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
{.compile("gen_qscilexercmake.cpp", cflags).}


type QsciLexerCMakeEnumEnum* = distinct cint
template Default*(_: type QsciLexerCMakeEnumEnum): untyped = 0
template Comment*(_: type QsciLexerCMakeEnumEnum): untyped = 1
template String*(_: type QsciLexerCMakeEnumEnum): untyped = 2
template StringLeftQuote*(_: type QsciLexerCMakeEnumEnum): untyped = 3
template StringRightQuote*(_: type QsciLexerCMakeEnumEnum): untyped = 4
template Function*(_: type QsciLexerCMakeEnumEnum): untyped = 5
template Variable*(_: type QsciLexerCMakeEnumEnum): untyped = 6
template Label*(_: type QsciLexerCMakeEnumEnum): untyped = 7
template KeywordSet3*(_: type QsciLexerCMakeEnumEnum): untyped = 8
template BlockWhile*(_: type QsciLexerCMakeEnumEnum): untyped = 9
template BlockForeach*(_: type QsciLexerCMakeEnumEnum): untyped = 10
template BlockIf*(_: type QsciLexerCMakeEnumEnum): untyped = 11
template BlockMacro*(_: type QsciLexerCMakeEnumEnum): untyped = 12
template StringVariable*(_: type QsciLexerCMakeEnumEnum): untyped = 13
template Number*(_: type QsciLexerCMakeEnumEnum): untyped = 14


import gen_qscilexercmake_types
export gen_qscilexercmake_types

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

type cQsciLexerCMake*{.exportc: "QsciLexerCMake", incompleteStruct.} = object

proc fcQsciLexerCMake_new(): ptr cQsciLexerCMake {.importc: "QsciLexerCMake_new".}
proc fcQsciLexerCMake_new2(parent: pointer): ptr cQsciLexerCMake {.importc: "QsciLexerCMake_new2".}
proc fcQsciLexerCMake_metaObject(self: pointer, ): pointer {.importc: "QsciLexerCMake_metaObject".}
proc fcQsciLexerCMake_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerCMake_metacast".}
proc fcQsciLexerCMake_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerCMake_metacall".}
proc fcQsciLexerCMake_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerCMake_tr".}
proc fcQsciLexerCMake_trUtf8(s: cstring): struct_miqt_string {.importc: "QsciLexerCMake_trUtf8".}
proc fcQsciLexerCMake_language(self: pointer, ): cstring {.importc: "QsciLexerCMake_language".}
proc fcQsciLexerCMake_lexer(self: pointer, ): cstring {.importc: "QsciLexerCMake_lexer".}
proc fcQsciLexerCMake_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerCMake_defaultColor".}
proc fcQsciLexerCMake_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerCMake_defaultFont".}
proc fcQsciLexerCMake_defaultPaper(self: pointer, style: cint): pointer {.importc: "QsciLexerCMake_defaultPaper".}
proc fcQsciLexerCMake_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerCMake_keywords".}
proc fcQsciLexerCMake_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerCMake_description".}
proc fcQsciLexerCMake_refreshProperties(self: pointer, ): void {.importc: "QsciLexerCMake_refreshProperties".}
proc fcQsciLexerCMake_foldAtElse(self: pointer, ): bool {.importc: "QsciLexerCMake_foldAtElse".}
proc fcQsciLexerCMake_setFoldAtElse(self: pointer, fold: bool): void {.importc: "QsciLexerCMake_setFoldAtElse".}
proc fcQsciLexerCMake_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerCMake_tr2".}
proc fcQsciLexerCMake_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerCMake_tr3".}
proc fcQsciLexerCMake_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerCMake_trUtf82".}
proc fcQsciLexerCMake_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerCMake_trUtf83".}
proc fQsciLexerCMake_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QsciLexerCMake_virtualbase_metaObject".}
proc fcQsciLexerCMake_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_metaObject".}
proc fQsciLexerCMake_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QsciLexerCMake_virtualbase_metacast".}
proc fcQsciLexerCMake_override_virtual_metacast(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_metacast".}
proc fQsciLexerCMake_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciLexerCMake_virtualbase_metacall".}
proc fcQsciLexerCMake_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_metacall".}
proc fQsciLexerCMake_virtualbase_setFoldAtElse(self: pointer, fold: bool): void{.importc: "QsciLexerCMake_virtualbase_setFoldAtElse".}
proc fcQsciLexerCMake_override_virtual_setFoldAtElse(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_setFoldAtElse".}
proc fcQsciLexerCMake_override_virtual_language(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_language".}
proc fQsciLexerCMake_virtualbase_lexer(self: pointer, ): cstring{.importc: "QsciLexerCMake_virtualbase_lexer".}
proc fcQsciLexerCMake_override_virtual_lexer(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_lexer".}
proc fQsciLexerCMake_virtualbase_lexerId(self: pointer, ): cint{.importc: "QsciLexerCMake_virtualbase_lexerId".}
proc fcQsciLexerCMake_override_virtual_lexerId(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_lexerId".}
proc fQsciLexerCMake_virtualbase_autoCompletionFillups(self: pointer, ): cstring{.importc: "QsciLexerCMake_virtualbase_autoCompletionFillups".}
proc fcQsciLexerCMake_override_virtual_autoCompletionFillups(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_autoCompletionFillups".}
proc fQsciLexerCMake_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array{.importc: "QsciLexerCMake_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerCMake_override_virtual_autoCompletionWordSeparators(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_autoCompletionWordSeparators".}
proc fQsciLexerCMake_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerCMake_virtualbase_blockEnd".}
proc fcQsciLexerCMake_override_virtual_blockEnd(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_blockEnd".}
proc fQsciLexerCMake_virtualbase_blockLookback(self: pointer, ): cint{.importc: "QsciLexerCMake_virtualbase_blockLookback".}
proc fcQsciLexerCMake_override_virtual_blockLookback(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_blockLookback".}
proc fQsciLexerCMake_virtualbase_blockStart(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerCMake_virtualbase_blockStart".}
proc fcQsciLexerCMake_override_virtual_blockStart(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_blockStart".}
proc fQsciLexerCMake_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerCMake_virtualbase_blockStartKeyword".}
proc fcQsciLexerCMake_override_virtual_blockStartKeyword(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_blockStartKeyword".}
proc fQsciLexerCMake_virtualbase_braceStyle(self: pointer, ): cint{.importc: "QsciLexerCMake_virtualbase_braceStyle".}
proc fcQsciLexerCMake_override_virtual_braceStyle(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_braceStyle".}
proc fQsciLexerCMake_virtualbase_caseSensitive(self: pointer, ): bool{.importc: "QsciLexerCMake_virtualbase_caseSensitive".}
proc fcQsciLexerCMake_override_virtual_caseSensitive(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_caseSensitive".}
proc fQsciLexerCMake_virtualbase_color(self: pointer, style: cint): pointer{.importc: "QsciLexerCMake_virtualbase_color".}
proc fcQsciLexerCMake_override_virtual_color(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_color".}
proc fQsciLexerCMake_virtualbase_eolFill(self: pointer, style: cint): bool{.importc: "QsciLexerCMake_virtualbase_eolFill".}
proc fcQsciLexerCMake_override_virtual_eolFill(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_eolFill".}
proc fQsciLexerCMake_virtualbase_font(self: pointer, style: cint): pointer{.importc: "QsciLexerCMake_virtualbase_font".}
proc fcQsciLexerCMake_override_virtual_font(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_font".}
proc fQsciLexerCMake_virtualbase_indentationGuideView(self: pointer, ): cint{.importc: "QsciLexerCMake_virtualbase_indentationGuideView".}
proc fcQsciLexerCMake_override_virtual_indentationGuideView(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_indentationGuideView".}
proc fQsciLexerCMake_virtualbase_keywords(self: pointer, set: cint): cstring{.importc: "QsciLexerCMake_virtualbase_keywords".}
proc fcQsciLexerCMake_override_virtual_keywords(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_keywords".}
proc fQsciLexerCMake_virtualbase_defaultStyle(self: pointer, ): cint{.importc: "QsciLexerCMake_virtualbase_defaultStyle".}
proc fcQsciLexerCMake_override_virtual_defaultStyle(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_defaultStyle".}
proc fcQsciLexerCMake_override_virtual_description(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_description".}
proc fQsciLexerCMake_virtualbase_paper(self: pointer, style: cint): pointer{.importc: "QsciLexerCMake_virtualbase_paper".}
proc fcQsciLexerCMake_override_virtual_paper(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_paper".}
proc fQsciLexerCMake_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerCMake_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerCMake_override_virtual_defaultColorWithStyle(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_defaultColorWithStyle".}
proc fQsciLexerCMake_virtualbase_defaultEolFill(self: pointer, style: cint): bool{.importc: "QsciLexerCMake_virtualbase_defaultEolFill".}
proc fcQsciLexerCMake_override_virtual_defaultEolFill(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_defaultEolFill".}
proc fQsciLexerCMake_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerCMake_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerCMake_override_virtual_defaultFontWithStyle(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_defaultFontWithStyle".}
proc fQsciLexerCMake_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerCMake_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerCMake_override_virtual_defaultPaperWithStyle(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_defaultPaperWithStyle".}
proc fQsciLexerCMake_virtualbase_setEditor(self: pointer, editor: pointer): void{.importc: "QsciLexerCMake_virtualbase_setEditor".}
proc fcQsciLexerCMake_override_virtual_setEditor(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_setEditor".}
proc fQsciLexerCMake_virtualbase_refreshProperties(self: pointer, ): void{.importc: "QsciLexerCMake_virtualbase_refreshProperties".}
proc fcQsciLexerCMake_override_virtual_refreshProperties(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_refreshProperties".}
proc fQsciLexerCMake_virtualbase_styleBitsNeeded(self: pointer, ): cint{.importc: "QsciLexerCMake_virtualbase_styleBitsNeeded".}
proc fcQsciLexerCMake_override_virtual_styleBitsNeeded(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_styleBitsNeeded".}
proc fQsciLexerCMake_virtualbase_wordCharacters(self: pointer, ): cstring{.importc: "QsciLexerCMake_virtualbase_wordCharacters".}
proc fcQsciLexerCMake_override_virtual_wordCharacters(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_wordCharacters".}
proc fQsciLexerCMake_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void{.importc: "QsciLexerCMake_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerCMake_override_virtual_setAutoIndentStyle(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_setAutoIndentStyle".}
proc fQsciLexerCMake_virtualbase_setColor(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerCMake_virtualbase_setColor".}
proc fcQsciLexerCMake_override_virtual_setColor(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_setColor".}
proc fQsciLexerCMake_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void{.importc: "QsciLexerCMake_virtualbase_setEolFill".}
proc fcQsciLexerCMake_override_virtual_setEolFill(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_setEolFill".}
proc fQsciLexerCMake_virtualbase_setFont(self: pointer, f: pointer, style: cint): void{.importc: "QsciLexerCMake_virtualbase_setFont".}
proc fcQsciLexerCMake_override_virtual_setFont(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_setFont".}
proc fQsciLexerCMake_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerCMake_virtualbase_setPaper".}
proc fcQsciLexerCMake_override_virtual_setPaper(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_setPaper".}
proc fQsciLexerCMake_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerCMake_virtualbase_readProperties".}
proc fcQsciLexerCMake_override_virtual_readProperties(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_readProperties".}
proc fQsciLexerCMake_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerCMake_virtualbase_writeProperties".}
proc fcQsciLexerCMake_override_virtual_writeProperties(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_writeProperties".}
proc fQsciLexerCMake_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QsciLexerCMake_virtualbase_event".}
proc fcQsciLexerCMake_override_virtual_event(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_event".}
proc fQsciLexerCMake_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciLexerCMake_virtualbase_eventFilter".}
proc fcQsciLexerCMake_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_eventFilter".}
proc fQsciLexerCMake_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciLexerCMake_virtualbase_timerEvent".}
proc fcQsciLexerCMake_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_timerEvent".}
proc fQsciLexerCMake_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciLexerCMake_virtualbase_childEvent".}
proc fcQsciLexerCMake_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_childEvent".}
proc fQsciLexerCMake_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciLexerCMake_virtualbase_customEvent".}
proc fcQsciLexerCMake_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_customEvent".}
proc fQsciLexerCMake_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerCMake_virtualbase_connectNotify".}
proc fcQsciLexerCMake_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_connectNotify".}
proc fQsciLexerCMake_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerCMake_virtualbase_disconnectNotify".}
proc fcQsciLexerCMake_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_disconnectNotify".}
proc fcQsciLexerCMake_staticMetaObject(): pointer {.importc: "QsciLexerCMake_staticMetaObject".}
proc fcQsciLexerCMake_delete(self: pointer) {.importc: "QsciLexerCMake_delete".}


func init*(T: type gen_qscilexercmake_types.QsciLexerCMake, h: ptr cQsciLexerCMake): gen_qscilexercmake_types.QsciLexerCMake =
  T(h: h)
proc create*(T: type gen_qscilexercmake_types.QsciLexerCMake, ): gen_qscilexercmake_types.QsciLexerCMake =
  gen_qscilexercmake_types.QsciLexerCMake.init(fcQsciLexerCMake_new())

proc create*(T: type gen_qscilexercmake_types.QsciLexerCMake, parent: gen_qobject.QObject): gen_qscilexercmake_types.QsciLexerCMake =
  gen_qscilexercmake_types.QsciLexerCMake.init(fcQsciLexerCMake_new2(parent.h))

proc metaObject*(self: gen_qscilexercmake_types.QsciLexerCMake, ): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerCMake_metaObject(self.h))

proc metacast*(self: gen_qscilexercmake_types.QsciLexerCMake, param1: cstring): pointer =
  fcQsciLexerCMake_metacast(self.h, param1)

proc metacall*(self: gen_qscilexercmake_types.QsciLexerCMake, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerCMake_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexercmake_types.QsciLexerCMake, s: cstring): string =
  let v_ms = fcQsciLexerCMake_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexercmake_types.QsciLexerCMake, s: cstring): string =
  let v_ms = fcQsciLexerCMake_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexercmake_types.QsciLexerCMake, ): cstring =
  (fcQsciLexerCMake_language(self.h))

proc lexer*(self: gen_qscilexercmake_types.QsciLexerCMake, ): cstring =
  (fcQsciLexerCMake_lexer(self.h))

proc defaultColor*(self: gen_qscilexercmake_types.QsciLexerCMake, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fcQsciLexerCMake_defaultColor(self.h, style))

proc defaultFont*(self: gen_qscilexercmake_types.QsciLexerCMake, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fcQsciLexerCMake_defaultFont(self.h, style))

proc defaultPaper*(self: gen_qscilexercmake_types.QsciLexerCMake, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fcQsciLexerCMake_defaultPaper(self.h, style))

proc keywords*(self: gen_qscilexercmake_types.QsciLexerCMake, set: cint): cstring =
  (fcQsciLexerCMake_keywords(self.h, set))

proc description*(self: gen_qscilexercmake_types.QsciLexerCMake, style: cint): string =
  let v_ms = fcQsciLexerCMake_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: gen_qscilexercmake_types.QsciLexerCMake, ): void =
  fcQsciLexerCMake_refreshProperties(self.h)

proc foldAtElse*(self: gen_qscilexercmake_types.QsciLexerCMake, ): bool =
  fcQsciLexerCMake_foldAtElse(self.h)

proc setFoldAtElse*(self: gen_qscilexercmake_types.QsciLexerCMake, fold: bool): void =
  fcQsciLexerCMake_setFoldAtElse(self.h, fold)

proc tr*(_: type gen_qscilexercmake_types.QsciLexerCMake, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerCMake_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexercmake_types.QsciLexerCMake, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerCMake_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexercmake_types.QsciLexerCMake, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerCMake_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexercmake_types.QsciLexerCMake, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerCMake_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QsciLexerCMakemetaObject*(self: gen_qscilexercmake_types.QsciLexerCMake, ): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fQsciLexerCMake_virtualbase_metaObject(self.h))

type QsciLexerCMakemetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qscilexercmake_types.QsciLexerCMake, slot: QsciLexerCMakemetaObjectProc) =
  # TODO check subclass
  var tmp = new QsciLexerCMakemetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_metaObject(self: ptr cQsciLexerCMake, slot: int): pointer {.exportc: "miqt_exec_callback_QsciLexerCMake_metaObject ".} =
  var nimfunc = cast[ptr QsciLexerCMakemetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QsciLexerCMakemetacast*(self: gen_qscilexercmake_types.QsciLexerCMake, param1: cstring): pointer =
  fQsciLexerCMake_virtualbase_metacast(self.h, param1)

type QsciLexerCMakemetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qscilexercmake_types.QsciLexerCMake, slot: QsciLexerCMakemetacastProc) =
  # TODO check subclass
  var tmp = new QsciLexerCMakemetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_metacast(self: ptr cQsciLexerCMake, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciLexerCMake_metacast ".} =
  var nimfunc = cast[ptr QsciLexerCMakemetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerCMakemetacall*(self: gen_qscilexercmake_types.QsciLexerCMake, param1: cint, param2: cint, param3: pointer): cint =
  fQsciLexerCMake_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerCMakemetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qscilexercmake_types.QsciLexerCMake, slot: QsciLexerCMakemetacallProc) =
  # TODO check subclass
  var tmp = new QsciLexerCMakemetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_metacall(self: ptr cQsciLexerCMake, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerCMake_metacall ".} =
  var nimfunc = cast[ptr QsciLexerCMakemetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QsciLexerCMakesetFoldAtElse*(self: gen_qscilexercmake_types.QsciLexerCMake, fold: bool): void =
  fQsciLexerCMake_virtualbase_setFoldAtElse(self.h, fold)

type QsciLexerCMakesetFoldAtElseProc* = proc(fold: bool): void
proc onsetFoldAtElse*(self: gen_qscilexercmake_types.QsciLexerCMake, slot: QsciLexerCMakesetFoldAtElseProc) =
  # TODO check subclass
  var tmp = new QsciLexerCMakesetFoldAtElseProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_setFoldAtElse(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_setFoldAtElse(self: ptr cQsciLexerCMake, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerCMake_setFoldAtElse ".} =
  var nimfunc = cast[ptr QsciLexerCMakesetFoldAtElseProc](cast[pointer](slot))
  let slotval1 = fold


  nimfunc[](slotval1)
type QsciLexerCMakelanguageProc* = proc(): cstring
proc onlanguage*(self: gen_qscilexercmake_types.QsciLexerCMake, slot: QsciLexerCMakelanguageProc) =
  # TODO check subclass
  var tmp = new QsciLexerCMakelanguageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_language(self: ptr cQsciLexerCMake, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerCMake_language ".} =
  var nimfunc = cast[ptr QsciLexerCMakelanguageProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerCMakelexer*(self: gen_qscilexercmake_types.QsciLexerCMake, ): cstring =
  (fQsciLexerCMake_virtualbase_lexer(self.h))

type QsciLexerCMakelexerProc* = proc(): cstring
proc onlexer*(self: gen_qscilexercmake_types.QsciLexerCMake, slot: QsciLexerCMakelexerProc) =
  # TODO check subclass
  var tmp = new QsciLexerCMakelexerProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_lexer(self: ptr cQsciLexerCMake, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerCMake_lexer ".} =
  var nimfunc = cast[ptr QsciLexerCMakelexerProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerCMakelexerId*(self: gen_qscilexercmake_types.QsciLexerCMake, ): cint =
  fQsciLexerCMake_virtualbase_lexerId(self.h)

type QsciLexerCMakelexerIdProc* = proc(): cint
proc onlexerId*(self: gen_qscilexercmake_types.QsciLexerCMake, slot: QsciLexerCMakelexerIdProc) =
  # TODO check subclass
  var tmp = new QsciLexerCMakelexerIdProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_lexerId(self: ptr cQsciLexerCMake, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCMake_lexerId ".} =
  var nimfunc = cast[ptr QsciLexerCMakelexerIdProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerCMakeautoCompletionFillups*(self: gen_qscilexercmake_types.QsciLexerCMake, ): cstring =
  (fQsciLexerCMake_virtualbase_autoCompletionFillups(self.h))

type QsciLexerCMakeautoCompletionFillupsProc* = proc(): cstring
proc onautoCompletionFillups*(self: gen_qscilexercmake_types.QsciLexerCMake, slot: QsciLexerCMakeautoCompletionFillupsProc) =
  # TODO check subclass
  var tmp = new QsciLexerCMakeautoCompletionFillupsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_autoCompletionFillups(self: ptr cQsciLexerCMake, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerCMake_autoCompletionFillups ".} =
  var nimfunc = cast[ptr QsciLexerCMakeautoCompletionFillupsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerCMakeautoCompletionWordSeparators*(self: gen_qscilexercmake_types.QsciLexerCMake, ): seq[string] =
  var v_ma = fQsciLexerCMake_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerCMakeautoCompletionWordSeparatorsProc* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: gen_qscilexercmake_types.QsciLexerCMake, slot: QsciLexerCMakeautoCompletionWordSeparatorsProc) =
  # TODO check subclass
  var tmp = new QsciLexerCMakeautoCompletionWordSeparatorsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_autoCompletionWordSeparators(self: ptr cQsciLexerCMake, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerCMake_autoCompletionWordSeparators ".} =
  var nimfunc = cast[ptr QsciLexerCMakeautoCompletionWordSeparatorsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QsciLexerCMakeblockEnd*(self: gen_qscilexercmake_types.QsciLexerCMake, style: ptr cint): cstring =
  (fQsciLexerCMake_virtualbase_blockEnd(self.h, style))

type QsciLexerCMakeblockEndProc* = proc(style: ptr cint): cstring
proc onblockEnd*(self: gen_qscilexercmake_types.QsciLexerCMake, slot: QsciLexerCMakeblockEndProc) =
  # TODO check subclass
  var tmp = new QsciLexerCMakeblockEndProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_blockEnd(self: ptr cQsciLexerCMake, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerCMake_blockEnd ".} =
  var nimfunc = cast[ptr QsciLexerCMakeblockEndProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerCMakeblockLookback*(self: gen_qscilexercmake_types.QsciLexerCMake, ): cint =
  fQsciLexerCMake_virtualbase_blockLookback(self.h)

type QsciLexerCMakeblockLookbackProc* = proc(): cint
proc onblockLookback*(self: gen_qscilexercmake_types.QsciLexerCMake, slot: QsciLexerCMakeblockLookbackProc) =
  # TODO check subclass
  var tmp = new QsciLexerCMakeblockLookbackProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_blockLookback(self: ptr cQsciLexerCMake, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCMake_blockLookback ".} =
  var nimfunc = cast[ptr QsciLexerCMakeblockLookbackProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerCMakeblockStart*(self: gen_qscilexercmake_types.QsciLexerCMake, style: ptr cint): cstring =
  (fQsciLexerCMake_virtualbase_blockStart(self.h, style))

type QsciLexerCMakeblockStartProc* = proc(style: ptr cint): cstring
proc onblockStart*(self: gen_qscilexercmake_types.QsciLexerCMake, slot: QsciLexerCMakeblockStartProc) =
  # TODO check subclass
  var tmp = new QsciLexerCMakeblockStartProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_blockStart(self: ptr cQsciLexerCMake, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerCMake_blockStart ".} =
  var nimfunc = cast[ptr QsciLexerCMakeblockStartProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerCMakeblockStartKeyword*(self: gen_qscilexercmake_types.QsciLexerCMake, style: ptr cint): cstring =
  (fQsciLexerCMake_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerCMakeblockStartKeywordProc* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: gen_qscilexercmake_types.QsciLexerCMake, slot: QsciLexerCMakeblockStartKeywordProc) =
  # TODO check subclass
  var tmp = new QsciLexerCMakeblockStartKeywordProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_blockStartKeyword(self: ptr cQsciLexerCMake, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerCMake_blockStartKeyword ".} =
  var nimfunc = cast[ptr QsciLexerCMakeblockStartKeywordProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerCMakebraceStyle*(self: gen_qscilexercmake_types.QsciLexerCMake, ): cint =
  fQsciLexerCMake_virtualbase_braceStyle(self.h)

type QsciLexerCMakebraceStyleProc* = proc(): cint
proc onbraceStyle*(self: gen_qscilexercmake_types.QsciLexerCMake, slot: QsciLexerCMakebraceStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerCMakebraceStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_braceStyle(self: ptr cQsciLexerCMake, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCMake_braceStyle ".} =
  var nimfunc = cast[ptr QsciLexerCMakebraceStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerCMakecaseSensitive*(self: gen_qscilexercmake_types.QsciLexerCMake, ): bool =
  fQsciLexerCMake_virtualbase_caseSensitive(self.h)

type QsciLexerCMakecaseSensitiveProc* = proc(): bool
proc oncaseSensitive*(self: gen_qscilexercmake_types.QsciLexerCMake, slot: QsciLexerCMakecaseSensitiveProc) =
  # TODO check subclass
  var tmp = new QsciLexerCMakecaseSensitiveProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_caseSensitive(self: ptr cQsciLexerCMake, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerCMake_caseSensitive ".} =
  var nimfunc = cast[ptr QsciLexerCMakecaseSensitiveProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerCMakecolor*(self: gen_qscilexercmake_types.QsciLexerCMake, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerCMake_virtualbase_color(self.h, style))

type QsciLexerCMakecolorProc* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: gen_qscilexercmake_types.QsciLexerCMake, slot: QsciLexerCMakecolorProc) =
  # TODO check subclass
  var tmp = new QsciLexerCMakecolorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_color(self: ptr cQsciLexerCMake, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCMake_color ".} =
  var nimfunc = cast[ptr QsciLexerCMakecolorProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerCMakeeolFill*(self: gen_qscilexercmake_types.QsciLexerCMake, style: cint): bool =
  fQsciLexerCMake_virtualbase_eolFill(self.h, style)

type QsciLexerCMakeeolFillProc* = proc(style: cint): bool
proc oneolFill*(self: gen_qscilexercmake_types.QsciLexerCMake, slot: QsciLexerCMakeeolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerCMakeeolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_eolFill(self: ptr cQsciLexerCMake, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerCMake_eolFill ".} =
  var nimfunc = cast[ptr QsciLexerCMakeeolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerCMakefont*(self: gen_qscilexercmake_types.QsciLexerCMake, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fQsciLexerCMake_virtualbase_font(self.h, style))

type QsciLexerCMakefontProc* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: gen_qscilexercmake_types.QsciLexerCMake, slot: QsciLexerCMakefontProc) =
  # TODO check subclass
  var tmp = new QsciLexerCMakefontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_font(self: ptr cQsciLexerCMake, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCMake_font ".} =
  var nimfunc = cast[ptr QsciLexerCMakefontProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerCMakeindentationGuideView*(self: gen_qscilexercmake_types.QsciLexerCMake, ): cint =
  fQsciLexerCMake_virtualbase_indentationGuideView(self.h)

type QsciLexerCMakeindentationGuideViewProc* = proc(): cint
proc onindentationGuideView*(self: gen_qscilexercmake_types.QsciLexerCMake, slot: QsciLexerCMakeindentationGuideViewProc) =
  # TODO check subclass
  var tmp = new QsciLexerCMakeindentationGuideViewProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_indentationGuideView(self: ptr cQsciLexerCMake, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCMake_indentationGuideView ".} =
  var nimfunc = cast[ptr QsciLexerCMakeindentationGuideViewProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerCMakekeywords*(self: gen_qscilexercmake_types.QsciLexerCMake, set: cint): cstring =
  (fQsciLexerCMake_virtualbase_keywords(self.h, set))

type QsciLexerCMakekeywordsProc* = proc(set: cint): cstring
proc onkeywords*(self: gen_qscilexercmake_types.QsciLexerCMake, slot: QsciLexerCMakekeywordsProc) =
  # TODO check subclass
  var tmp = new QsciLexerCMakekeywordsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_keywords(self: ptr cQsciLexerCMake, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerCMake_keywords ".} =
  var nimfunc = cast[ptr QsciLexerCMakekeywordsProc](cast[pointer](slot))
  let slotval1 = set


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerCMakedefaultStyle*(self: gen_qscilexercmake_types.QsciLexerCMake, ): cint =
  fQsciLexerCMake_virtualbase_defaultStyle(self.h)

type QsciLexerCMakedefaultStyleProc* = proc(): cint
proc ondefaultStyle*(self: gen_qscilexercmake_types.QsciLexerCMake, slot: QsciLexerCMakedefaultStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerCMakedefaultStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_defaultStyle(self: ptr cQsciLexerCMake, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCMake_defaultStyle ".} =
  var nimfunc = cast[ptr QsciLexerCMakedefaultStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QsciLexerCMakedescriptionProc* = proc(style: cint): string
proc ondescription*(self: gen_qscilexercmake_types.QsciLexerCMake, slot: QsciLexerCMakedescriptionProc) =
  # TODO check subclass
  var tmp = new QsciLexerCMakedescriptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_description(self: ptr cQsciLexerCMake, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerCMake_description ".} =
  var nimfunc = cast[ptr QsciLexerCMakedescriptionProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc QsciLexerCMakepaper*(self: gen_qscilexercmake_types.QsciLexerCMake, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerCMake_virtualbase_paper(self.h, style))

type QsciLexerCMakepaperProc* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: gen_qscilexercmake_types.QsciLexerCMake, slot: QsciLexerCMakepaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerCMakepaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_paper(self: ptr cQsciLexerCMake, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCMake_paper ".} =
  var nimfunc = cast[ptr QsciLexerCMakepaperProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerCMakedefaultColor*(self: gen_qscilexercmake_types.QsciLexerCMake, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerCMake_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerCMakedefaultColorWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColor*(self: gen_qscilexercmake_types.QsciLexerCMake, slot: QsciLexerCMakedefaultColorWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerCMakedefaultColorWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_defaultColorWithStyle(self: ptr cQsciLexerCMake, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCMake_defaultColorWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerCMakedefaultColorWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerCMakedefaultEolFill*(self: gen_qscilexercmake_types.QsciLexerCMake, style: cint): bool =
  fQsciLexerCMake_virtualbase_defaultEolFill(self.h, style)

type QsciLexerCMakedefaultEolFillProc* = proc(style: cint): bool
proc ondefaultEolFill*(self: gen_qscilexercmake_types.QsciLexerCMake, slot: QsciLexerCMakedefaultEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerCMakedefaultEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_defaultEolFill(self: ptr cQsciLexerCMake, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerCMake_defaultEolFill ".} =
  var nimfunc = cast[ptr QsciLexerCMakedefaultEolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerCMakedefaultFont*(self: gen_qscilexercmake_types.QsciLexerCMake, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fQsciLexerCMake_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerCMakedefaultFontWithStyleProc* = proc(style: cint): gen_qfont.QFont
proc ondefaultFont*(self: gen_qscilexercmake_types.QsciLexerCMake, slot: QsciLexerCMakedefaultFontWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerCMakedefaultFontWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_defaultFontWithStyle(self: ptr cQsciLexerCMake, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCMake_defaultFontWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerCMakedefaultFontWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerCMakedefaultPaper*(self: gen_qscilexercmake_types.QsciLexerCMake, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerCMake_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerCMakedefaultPaperWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaper*(self: gen_qscilexercmake_types.QsciLexerCMake, slot: QsciLexerCMakedefaultPaperWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerCMakedefaultPaperWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_defaultPaperWithStyle(self: ptr cQsciLexerCMake, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCMake_defaultPaperWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerCMakedefaultPaperWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerCMakesetEditor*(self: gen_qscilexercmake_types.QsciLexerCMake, editor: gen_qsciscintilla.QsciScintilla): void =
  fQsciLexerCMake_virtualbase_setEditor(self.h, editor.h)

type QsciLexerCMakesetEditorProc* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: gen_qscilexercmake_types.QsciLexerCMake, slot: QsciLexerCMakesetEditorProc) =
  # TODO check subclass
  var tmp = new QsciLexerCMakesetEditorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_setEditor(self: ptr cQsciLexerCMake, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCMake_setEditor ".} =
  var nimfunc = cast[ptr QsciLexerCMakesetEditorProc](cast[pointer](slot))
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](slotval1)
proc QsciLexerCMakerefreshProperties*(self: gen_qscilexercmake_types.QsciLexerCMake, ): void =
  fQsciLexerCMake_virtualbase_refreshProperties(self.h)

type QsciLexerCMakerefreshPropertiesProc* = proc(): void
proc onrefreshProperties*(self: gen_qscilexercmake_types.QsciLexerCMake, slot: QsciLexerCMakerefreshPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerCMakerefreshPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_refreshProperties(self: ptr cQsciLexerCMake, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerCMake_refreshProperties ".} =
  var nimfunc = cast[ptr QsciLexerCMakerefreshPropertiesProc](cast[pointer](slot))

  nimfunc[]()
proc QsciLexerCMakestyleBitsNeeded*(self: gen_qscilexercmake_types.QsciLexerCMake, ): cint =
  fQsciLexerCMake_virtualbase_styleBitsNeeded(self.h)

type QsciLexerCMakestyleBitsNeededProc* = proc(): cint
proc onstyleBitsNeeded*(self: gen_qscilexercmake_types.QsciLexerCMake, slot: QsciLexerCMakestyleBitsNeededProc) =
  # TODO check subclass
  var tmp = new QsciLexerCMakestyleBitsNeededProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_styleBitsNeeded(self: ptr cQsciLexerCMake, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCMake_styleBitsNeeded ".} =
  var nimfunc = cast[ptr QsciLexerCMakestyleBitsNeededProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerCMakewordCharacters*(self: gen_qscilexercmake_types.QsciLexerCMake, ): cstring =
  (fQsciLexerCMake_virtualbase_wordCharacters(self.h))

type QsciLexerCMakewordCharactersProc* = proc(): cstring
proc onwordCharacters*(self: gen_qscilexercmake_types.QsciLexerCMake, slot: QsciLexerCMakewordCharactersProc) =
  # TODO check subclass
  var tmp = new QsciLexerCMakewordCharactersProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_wordCharacters(self: ptr cQsciLexerCMake, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerCMake_wordCharacters ".} =
  var nimfunc = cast[ptr QsciLexerCMakewordCharactersProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerCMakesetAutoIndentStyle*(self: gen_qscilexercmake_types.QsciLexerCMake, autoindentstyle: cint): void =
  fQsciLexerCMake_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerCMakesetAutoIndentStyleProc* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: gen_qscilexercmake_types.QsciLexerCMake, slot: QsciLexerCMakesetAutoIndentStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerCMakesetAutoIndentStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_setAutoIndentStyle(self: ptr cQsciLexerCMake, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerCMake_setAutoIndentStyle ".} =
  var nimfunc = cast[ptr QsciLexerCMakesetAutoIndentStyleProc](cast[pointer](slot))
  let slotval1 = autoindentstyle


  nimfunc[](slotval1)
proc QsciLexerCMakesetColor*(self: gen_qscilexercmake_types.QsciLexerCMake, c: gen_qcolor.QColor, style: cint): void =
  fQsciLexerCMake_virtualbase_setColor(self.h, c.h, style)

type QsciLexerCMakesetColorProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: gen_qscilexercmake_types.QsciLexerCMake, slot: QsciLexerCMakesetColorProc) =
  # TODO check subclass
  var tmp = new QsciLexerCMakesetColorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_setColor(self: ptr cQsciLexerCMake, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerCMake_setColor ".} =
  var nimfunc = cast[ptr QsciLexerCMakesetColorProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerCMakesetEolFill*(self: gen_qscilexercmake_types.QsciLexerCMake, eoffill: bool, style: cint): void =
  fQsciLexerCMake_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerCMakesetEolFillProc* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: gen_qscilexercmake_types.QsciLexerCMake, slot: QsciLexerCMakesetEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerCMakesetEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_setEolFill(self: ptr cQsciLexerCMake, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerCMake_setEolFill ".} =
  var nimfunc = cast[ptr QsciLexerCMakesetEolFillProc](cast[pointer](slot))
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerCMakesetFont*(self: gen_qscilexercmake_types.QsciLexerCMake, f: gen_qfont.QFont, style: cint): void =
  fQsciLexerCMake_virtualbase_setFont(self.h, f.h, style)

type QsciLexerCMakesetFontProc* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: gen_qscilexercmake_types.QsciLexerCMake, slot: QsciLexerCMakesetFontProc) =
  # TODO check subclass
  var tmp = new QsciLexerCMakesetFontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_setFont(self: ptr cQsciLexerCMake, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerCMake_setFont ".} =
  var nimfunc = cast[ptr QsciLexerCMakesetFontProc](cast[pointer](slot))
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerCMakesetPaper*(self: gen_qscilexercmake_types.QsciLexerCMake, c: gen_qcolor.QColor, style: cint): void =
  fQsciLexerCMake_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerCMakesetPaperProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: gen_qscilexercmake_types.QsciLexerCMake, slot: QsciLexerCMakesetPaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerCMakesetPaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_setPaper(self: ptr cQsciLexerCMake, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerCMake_setPaper ".} =
  var nimfunc = cast[ptr QsciLexerCMakesetPaperProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerCMakereadProperties*(self: gen_qscilexercmake_types.QsciLexerCMake, qs: gen_qsettings.QSettings, prefix: string): bool =
  fQsciLexerCMake_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerCMakereadPropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: gen_qscilexercmake_types.QsciLexerCMake, slot: QsciLexerCMakereadPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerCMakereadPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_readProperties(self: ptr cQsciLexerCMake, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerCMake_readProperties ".} =
  var nimfunc = cast[ptr QsciLexerCMakereadPropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerCMakewriteProperties*(self: gen_qscilexercmake_types.QsciLexerCMake, qs: gen_qsettings.QSettings, prefix: string): bool =
  fQsciLexerCMake_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerCMakewritePropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: gen_qscilexercmake_types.QsciLexerCMake, slot: QsciLexerCMakewritePropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerCMakewritePropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_writeProperties(self: ptr cQsciLexerCMake, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerCMake_writeProperties ".} =
  var nimfunc = cast[ptr QsciLexerCMakewritePropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerCMakeevent*(self: gen_qscilexercmake_types.QsciLexerCMake, event: gen_qcoreevent.QEvent): bool =
  fQsciLexerCMake_virtualbase_event(self.h, event.h)

type QsciLexerCMakeeventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qscilexercmake_types.QsciLexerCMake, slot: QsciLexerCMakeeventProc) =
  # TODO check subclass
  var tmp = new QsciLexerCMakeeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_event(self: ptr cQsciLexerCMake, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerCMake_event ".} =
  var nimfunc = cast[ptr QsciLexerCMakeeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerCMakeeventFilter*(self: gen_qscilexercmake_types.QsciLexerCMake, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =
  fQsciLexerCMake_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerCMakeeventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qscilexercmake_types.QsciLexerCMake, slot: QsciLexerCMakeeventFilterProc) =
  # TODO check subclass
  var tmp = new QsciLexerCMakeeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_eventFilter(self: ptr cQsciLexerCMake, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerCMake_eventFilter ".} =
  var nimfunc = cast[ptr QsciLexerCMakeeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerCMaketimerEvent*(self: gen_qscilexercmake_types.QsciLexerCMake, event: gen_qcoreevent.QTimerEvent): void =
  fQsciLexerCMake_virtualbase_timerEvent(self.h, event.h)

type QsciLexerCMaketimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qscilexercmake_types.QsciLexerCMake, slot: QsciLexerCMaketimerEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerCMaketimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_timerEvent(self: ptr cQsciLexerCMake, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCMake_timerEvent ".} =
  var nimfunc = cast[ptr QsciLexerCMaketimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerCMakechildEvent*(self: gen_qscilexercmake_types.QsciLexerCMake, event: gen_qcoreevent.QChildEvent): void =
  fQsciLexerCMake_virtualbase_childEvent(self.h, event.h)

type QsciLexerCMakechildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qscilexercmake_types.QsciLexerCMake, slot: QsciLexerCMakechildEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerCMakechildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_childEvent(self: ptr cQsciLexerCMake, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCMake_childEvent ".} =
  var nimfunc = cast[ptr QsciLexerCMakechildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerCMakecustomEvent*(self: gen_qscilexercmake_types.QsciLexerCMake, event: gen_qcoreevent.QEvent): void =
  fQsciLexerCMake_virtualbase_customEvent(self.h, event.h)

type QsciLexerCMakecustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qscilexercmake_types.QsciLexerCMake, slot: QsciLexerCMakecustomEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerCMakecustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_customEvent(self: ptr cQsciLexerCMake, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCMake_customEvent ".} =
  var nimfunc = cast[ptr QsciLexerCMakecustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerCMakeconnectNotify*(self: gen_qscilexercmake_types.QsciLexerCMake, signal: gen_qmetaobject.QMetaMethod): void =
  fQsciLexerCMake_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerCMakeconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qscilexercmake_types.QsciLexerCMake, slot: QsciLexerCMakeconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerCMakeconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_connectNotify(self: ptr cQsciLexerCMake, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCMake_connectNotify ".} =
  var nimfunc = cast[ptr QsciLexerCMakeconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QsciLexerCMakedisconnectNotify*(self: gen_qscilexercmake_types.QsciLexerCMake, signal: gen_qmetaobject.QMetaMethod): void =
  fQsciLexerCMake_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerCMakedisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qscilexercmake_types.QsciLexerCMake, slot: QsciLexerCMakedisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerCMakedisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_disconnectNotify(self: ptr cQsciLexerCMake, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCMake_disconnectNotify ".} =
  var nimfunc = cast[ptr QsciLexerCMakedisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qscilexercmake_types.QsciLexerCMake): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerCMake_staticMetaObject())
proc delete*(self: gen_qscilexercmake_types.QsciLexerCMake) =
  fcQsciLexerCMake_delete(self.h)
