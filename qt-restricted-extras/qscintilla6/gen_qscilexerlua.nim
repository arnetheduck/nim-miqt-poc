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
{.compile("gen_qscilexerlua.cpp", cflags).}


type QsciLexerLuaEnumEnum* = distinct cint
template Default*(_: type QsciLexerLuaEnumEnum): untyped = 0
template Comment*(_: type QsciLexerLuaEnumEnum): untyped = 1
template LineComment*(_: type QsciLexerLuaEnumEnum): untyped = 2
template Number*(_: type QsciLexerLuaEnumEnum): untyped = 4
template Keyword*(_: type QsciLexerLuaEnumEnum): untyped = 5
template String*(_: type QsciLexerLuaEnumEnum): untyped = 6
template Character*(_: type QsciLexerLuaEnumEnum): untyped = 7
template LiteralString*(_: type QsciLexerLuaEnumEnum): untyped = 8
template Preprocessor*(_: type QsciLexerLuaEnumEnum): untyped = 9
template Operator*(_: type QsciLexerLuaEnumEnum): untyped = 10
template Identifier*(_: type QsciLexerLuaEnumEnum): untyped = 11
template UnclosedString*(_: type QsciLexerLuaEnumEnum): untyped = 12
template BasicFunctions*(_: type QsciLexerLuaEnumEnum): untyped = 13
template StringTableMathsFunctions*(_: type QsciLexerLuaEnumEnum): untyped = 14
template CoroutinesIOSystemFacilities*(_: type QsciLexerLuaEnumEnum): untyped = 15
template KeywordSet5*(_: type QsciLexerLuaEnumEnum): untyped = 16
template KeywordSet6*(_: type QsciLexerLuaEnumEnum): untyped = 17
template KeywordSet7*(_: type QsciLexerLuaEnumEnum): untyped = 18
template KeywordSet8*(_: type QsciLexerLuaEnumEnum): untyped = 19
template Label*(_: type QsciLexerLuaEnumEnum): untyped = 20


import gen_qscilexerlua_types
export gen_qscilexerlua_types

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

type cQsciLexerLua*{.exportc: "QsciLexerLua", incompleteStruct.} = object

proc fcQsciLexerLua_new(): ptr cQsciLexerLua {.importc: "QsciLexerLua_new".}
proc fcQsciLexerLua_new2(parent: pointer): ptr cQsciLexerLua {.importc: "QsciLexerLua_new2".}
proc fcQsciLexerLua_metaObject(self: pointer, ): pointer {.importc: "QsciLexerLua_metaObject".}
proc fcQsciLexerLua_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerLua_metacast".}
proc fcQsciLexerLua_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerLua_metacall".}
proc fcQsciLexerLua_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerLua_tr".}
proc fcQsciLexerLua_language(self: pointer, ): cstring {.importc: "QsciLexerLua_language".}
proc fcQsciLexerLua_lexer(self: pointer, ): cstring {.importc: "QsciLexerLua_lexer".}
proc fcQsciLexerLua_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array {.importc: "QsciLexerLua_autoCompletionWordSeparators".}
proc fcQsciLexerLua_blockStart(self: pointer, ): cstring {.importc: "QsciLexerLua_blockStart".}
proc fcQsciLexerLua_braceStyle(self: pointer, ): cint {.importc: "QsciLexerLua_braceStyle".}
proc fcQsciLexerLua_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerLua_defaultColor".}
proc fcQsciLexerLua_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerLua_defaultEolFill".}
proc fcQsciLexerLua_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerLua_defaultFont".}
proc fcQsciLexerLua_defaultPaper(self: pointer, style: cint): pointer {.importc: "QsciLexerLua_defaultPaper".}
proc fcQsciLexerLua_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerLua_keywords".}
proc fcQsciLexerLua_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerLua_description".}
proc fcQsciLexerLua_refreshProperties(self: pointer, ): void {.importc: "QsciLexerLua_refreshProperties".}
proc fcQsciLexerLua_foldCompact(self: pointer, ): bool {.importc: "QsciLexerLua_foldCompact".}
proc fcQsciLexerLua_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerLua_setFoldCompact".}
proc fcQsciLexerLua_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerLua_tr2".}
proc fcQsciLexerLua_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerLua_tr3".}
proc fcQsciLexerLua_blockStart1(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerLua_blockStart1".}
proc fQsciLexerLua_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QsciLexerLua_virtualbase_metaObject".}
proc fcQsciLexerLua_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QsciLexerLua_override_virtual_metaObject".}
proc fQsciLexerLua_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QsciLexerLua_virtualbase_metacast".}
proc fcQsciLexerLua_override_virtual_metacast(self: pointer, slot: int) {.importc: "QsciLexerLua_override_virtual_metacast".}
proc fQsciLexerLua_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciLexerLua_virtualbase_metacall".}
proc fcQsciLexerLua_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciLexerLua_override_virtual_metacall".}
proc fQsciLexerLua_virtualbase_setFoldCompact(self: pointer, fold: bool): void{.importc: "QsciLexerLua_virtualbase_setFoldCompact".}
proc fcQsciLexerLua_override_virtual_setFoldCompact(self: pointer, slot: int) {.importc: "QsciLexerLua_override_virtual_setFoldCompact".}
proc fcQsciLexerLua_override_virtual_language(self: pointer, slot: int) {.importc: "QsciLexerLua_override_virtual_language".}
proc fQsciLexerLua_virtualbase_lexer(self: pointer, ): cstring{.importc: "QsciLexerLua_virtualbase_lexer".}
proc fcQsciLexerLua_override_virtual_lexer(self: pointer, slot: int) {.importc: "QsciLexerLua_override_virtual_lexer".}
proc fQsciLexerLua_virtualbase_lexerId(self: pointer, ): cint{.importc: "QsciLexerLua_virtualbase_lexerId".}
proc fcQsciLexerLua_override_virtual_lexerId(self: pointer, slot: int) {.importc: "QsciLexerLua_override_virtual_lexerId".}
proc fQsciLexerLua_virtualbase_autoCompletionFillups(self: pointer, ): cstring{.importc: "QsciLexerLua_virtualbase_autoCompletionFillups".}
proc fcQsciLexerLua_override_virtual_autoCompletionFillups(self: pointer, slot: int) {.importc: "QsciLexerLua_override_virtual_autoCompletionFillups".}
proc fQsciLexerLua_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array{.importc: "QsciLexerLua_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerLua_override_virtual_autoCompletionWordSeparators(self: pointer, slot: int) {.importc: "QsciLexerLua_override_virtual_autoCompletionWordSeparators".}
proc fQsciLexerLua_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerLua_virtualbase_blockEnd".}
proc fcQsciLexerLua_override_virtual_blockEnd(self: pointer, slot: int) {.importc: "QsciLexerLua_override_virtual_blockEnd".}
proc fQsciLexerLua_virtualbase_blockLookback(self: pointer, ): cint{.importc: "QsciLexerLua_virtualbase_blockLookback".}
proc fcQsciLexerLua_override_virtual_blockLookback(self: pointer, slot: int) {.importc: "QsciLexerLua_override_virtual_blockLookback".}
proc fQsciLexerLua_virtualbase_blockStart(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerLua_virtualbase_blockStart".}
proc fcQsciLexerLua_override_virtual_blockStart(self: pointer, slot: int) {.importc: "QsciLexerLua_override_virtual_blockStart".}
proc fQsciLexerLua_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerLua_virtualbase_blockStartKeyword".}
proc fcQsciLexerLua_override_virtual_blockStartKeyword(self: pointer, slot: int) {.importc: "QsciLexerLua_override_virtual_blockStartKeyword".}
proc fQsciLexerLua_virtualbase_braceStyle(self: pointer, ): cint{.importc: "QsciLexerLua_virtualbase_braceStyle".}
proc fcQsciLexerLua_override_virtual_braceStyle(self: pointer, slot: int) {.importc: "QsciLexerLua_override_virtual_braceStyle".}
proc fQsciLexerLua_virtualbase_caseSensitive(self: pointer, ): bool{.importc: "QsciLexerLua_virtualbase_caseSensitive".}
proc fcQsciLexerLua_override_virtual_caseSensitive(self: pointer, slot: int) {.importc: "QsciLexerLua_override_virtual_caseSensitive".}
proc fQsciLexerLua_virtualbase_color(self: pointer, style: cint): pointer{.importc: "QsciLexerLua_virtualbase_color".}
proc fcQsciLexerLua_override_virtual_color(self: pointer, slot: int) {.importc: "QsciLexerLua_override_virtual_color".}
proc fQsciLexerLua_virtualbase_eolFill(self: pointer, style: cint): bool{.importc: "QsciLexerLua_virtualbase_eolFill".}
proc fcQsciLexerLua_override_virtual_eolFill(self: pointer, slot: int) {.importc: "QsciLexerLua_override_virtual_eolFill".}
proc fQsciLexerLua_virtualbase_font(self: pointer, style: cint): pointer{.importc: "QsciLexerLua_virtualbase_font".}
proc fcQsciLexerLua_override_virtual_font(self: pointer, slot: int) {.importc: "QsciLexerLua_override_virtual_font".}
proc fQsciLexerLua_virtualbase_indentationGuideView(self: pointer, ): cint{.importc: "QsciLexerLua_virtualbase_indentationGuideView".}
proc fcQsciLexerLua_override_virtual_indentationGuideView(self: pointer, slot: int) {.importc: "QsciLexerLua_override_virtual_indentationGuideView".}
proc fQsciLexerLua_virtualbase_keywords(self: pointer, set: cint): cstring{.importc: "QsciLexerLua_virtualbase_keywords".}
proc fcQsciLexerLua_override_virtual_keywords(self: pointer, slot: int) {.importc: "QsciLexerLua_override_virtual_keywords".}
proc fQsciLexerLua_virtualbase_defaultStyle(self: pointer, ): cint{.importc: "QsciLexerLua_virtualbase_defaultStyle".}
proc fcQsciLexerLua_override_virtual_defaultStyle(self: pointer, slot: int) {.importc: "QsciLexerLua_override_virtual_defaultStyle".}
proc fcQsciLexerLua_override_virtual_description(self: pointer, slot: int) {.importc: "QsciLexerLua_override_virtual_description".}
proc fQsciLexerLua_virtualbase_paper(self: pointer, style: cint): pointer{.importc: "QsciLexerLua_virtualbase_paper".}
proc fcQsciLexerLua_override_virtual_paper(self: pointer, slot: int) {.importc: "QsciLexerLua_override_virtual_paper".}
proc fQsciLexerLua_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerLua_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerLua_override_virtual_defaultColorWithStyle(self: pointer, slot: int) {.importc: "QsciLexerLua_override_virtual_defaultColorWithStyle".}
proc fQsciLexerLua_virtualbase_defaultEolFill(self: pointer, style: cint): bool{.importc: "QsciLexerLua_virtualbase_defaultEolFill".}
proc fcQsciLexerLua_override_virtual_defaultEolFill(self: pointer, slot: int) {.importc: "QsciLexerLua_override_virtual_defaultEolFill".}
proc fQsciLexerLua_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerLua_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerLua_override_virtual_defaultFontWithStyle(self: pointer, slot: int) {.importc: "QsciLexerLua_override_virtual_defaultFontWithStyle".}
proc fQsciLexerLua_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerLua_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerLua_override_virtual_defaultPaperWithStyle(self: pointer, slot: int) {.importc: "QsciLexerLua_override_virtual_defaultPaperWithStyle".}
proc fQsciLexerLua_virtualbase_setEditor(self: pointer, editor: pointer): void{.importc: "QsciLexerLua_virtualbase_setEditor".}
proc fcQsciLexerLua_override_virtual_setEditor(self: pointer, slot: int) {.importc: "QsciLexerLua_override_virtual_setEditor".}
proc fQsciLexerLua_virtualbase_refreshProperties(self: pointer, ): void{.importc: "QsciLexerLua_virtualbase_refreshProperties".}
proc fcQsciLexerLua_override_virtual_refreshProperties(self: pointer, slot: int) {.importc: "QsciLexerLua_override_virtual_refreshProperties".}
proc fQsciLexerLua_virtualbase_styleBitsNeeded(self: pointer, ): cint{.importc: "QsciLexerLua_virtualbase_styleBitsNeeded".}
proc fcQsciLexerLua_override_virtual_styleBitsNeeded(self: pointer, slot: int) {.importc: "QsciLexerLua_override_virtual_styleBitsNeeded".}
proc fQsciLexerLua_virtualbase_wordCharacters(self: pointer, ): cstring{.importc: "QsciLexerLua_virtualbase_wordCharacters".}
proc fcQsciLexerLua_override_virtual_wordCharacters(self: pointer, slot: int) {.importc: "QsciLexerLua_override_virtual_wordCharacters".}
proc fQsciLexerLua_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void{.importc: "QsciLexerLua_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerLua_override_virtual_setAutoIndentStyle(self: pointer, slot: int) {.importc: "QsciLexerLua_override_virtual_setAutoIndentStyle".}
proc fQsciLexerLua_virtualbase_setColor(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerLua_virtualbase_setColor".}
proc fcQsciLexerLua_override_virtual_setColor(self: pointer, slot: int) {.importc: "QsciLexerLua_override_virtual_setColor".}
proc fQsciLexerLua_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void{.importc: "QsciLexerLua_virtualbase_setEolFill".}
proc fcQsciLexerLua_override_virtual_setEolFill(self: pointer, slot: int) {.importc: "QsciLexerLua_override_virtual_setEolFill".}
proc fQsciLexerLua_virtualbase_setFont(self: pointer, f: pointer, style: cint): void{.importc: "QsciLexerLua_virtualbase_setFont".}
proc fcQsciLexerLua_override_virtual_setFont(self: pointer, slot: int) {.importc: "QsciLexerLua_override_virtual_setFont".}
proc fQsciLexerLua_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerLua_virtualbase_setPaper".}
proc fcQsciLexerLua_override_virtual_setPaper(self: pointer, slot: int) {.importc: "QsciLexerLua_override_virtual_setPaper".}
proc fQsciLexerLua_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerLua_virtualbase_readProperties".}
proc fcQsciLexerLua_override_virtual_readProperties(self: pointer, slot: int) {.importc: "QsciLexerLua_override_virtual_readProperties".}
proc fQsciLexerLua_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerLua_virtualbase_writeProperties".}
proc fcQsciLexerLua_override_virtual_writeProperties(self: pointer, slot: int) {.importc: "QsciLexerLua_override_virtual_writeProperties".}
proc fQsciLexerLua_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QsciLexerLua_virtualbase_event".}
proc fcQsciLexerLua_override_virtual_event(self: pointer, slot: int) {.importc: "QsciLexerLua_override_virtual_event".}
proc fQsciLexerLua_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciLexerLua_virtualbase_eventFilter".}
proc fcQsciLexerLua_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciLexerLua_override_virtual_eventFilter".}
proc fQsciLexerLua_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciLexerLua_virtualbase_timerEvent".}
proc fcQsciLexerLua_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciLexerLua_override_virtual_timerEvent".}
proc fQsciLexerLua_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciLexerLua_virtualbase_childEvent".}
proc fcQsciLexerLua_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciLexerLua_override_virtual_childEvent".}
proc fQsciLexerLua_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciLexerLua_virtualbase_customEvent".}
proc fcQsciLexerLua_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciLexerLua_override_virtual_customEvent".}
proc fQsciLexerLua_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerLua_virtualbase_connectNotify".}
proc fcQsciLexerLua_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciLexerLua_override_virtual_connectNotify".}
proc fQsciLexerLua_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerLua_virtualbase_disconnectNotify".}
proc fcQsciLexerLua_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciLexerLua_override_virtual_disconnectNotify".}
proc fcQsciLexerLua_staticMetaObject(): pointer {.importc: "QsciLexerLua_staticMetaObject".}
proc fcQsciLexerLua_delete(self: pointer) {.importc: "QsciLexerLua_delete".}


func init*(T: type gen_qscilexerlua_types.QsciLexerLua, h: ptr cQsciLexerLua): gen_qscilexerlua_types.QsciLexerLua =
  T(h: h)
proc create*(T: type gen_qscilexerlua_types.QsciLexerLua, ): gen_qscilexerlua_types.QsciLexerLua =
  gen_qscilexerlua_types.QsciLexerLua.init(fcQsciLexerLua_new())

proc create*(T: type gen_qscilexerlua_types.QsciLexerLua, parent: gen_qobject.QObject): gen_qscilexerlua_types.QsciLexerLua =
  gen_qscilexerlua_types.QsciLexerLua.init(fcQsciLexerLua_new2(parent.h))

proc metaObject*(self: gen_qscilexerlua_types.QsciLexerLua, ): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerLua_metaObject(self.h))

proc metacast*(self: gen_qscilexerlua_types.QsciLexerLua, param1: cstring): pointer =
  fcQsciLexerLua_metacast(self.h, param1)

proc metacall*(self: gen_qscilexerlua_types.QsciLexerLua, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerLua_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexerlua_types.QsciLexerLua, s: cstring): string =
  let v_ms = fcQsciLexerLua_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexerlua_types.QsciLexerLua, ): cstring =
  (fcQsciLexerLua_language(self.h))

proc lexer*(self: gen_qscilexerlua_types.QsciLexerLua, ): cstring =
  (fcQsciLexerLua_lexer(self.h))

proc autoCompletionWordSeparators*(self: gen_qscilexerlua_types.QsciLexerLua, ): seq[string] =
  var v_ma = fcQsciLexerLua_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc blockStart*(self: gen_qscilexerlua_types.QsciLexerLua, ): cstring =
  (fcQsciLexerLua_blockStart(self.h))

proc braceStyle*(self: gen_qscilexerlua_types.QsciLexerLua, ): cint =
  fcQsciLexerLua_braceStyle(self.h)

proc defaultColor*(self: gen_qscilexerlua_types.QsciLexerLua, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fcQsciLexerLua_defaultColor(self.h, style))

proc defaultEolFill*(self: gen_qscilexerlua_types.QsciLexerLua, style: cint): bool =
  fcQsciLexerLua_defaultEolFill(self.h, style)

proc defaultFont*(self: gen_qscilexerlua_types.QsciLexerLua, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fcQsciLexerLua_defaultFont(self.h, style))

proc defaultPaper*(self: gen_qscilexerlua_types.QsciLexerLua, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fcQsciLexerLua_defaultPaper(self.h, style))

proc keywords*(self: gen_qscilexerlua_types.QsciLexerLua, set: cint): cstring =
  (fcQsciLexerLua_keywords(self.h, set))

proc description*(self: gen_qscilexerlua_types.QsciLexerLua, style: cint): string =
  let v_ms = fcQsciLexerLua_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: gen_qscilexerlua_types.QsciLexerLua, ): void =
  fcQsciLexerLua_refreshProperties(self.h)

proc foldCompact*(self: gen_qscilexerlua_types.QsciLexerLua, ): bool =
  fcQsciLexerLua_foldCompact(self.h)

proc setFoldCompact*(self: gen_qscilexerlua_types.QsciLexerLua, fold: bool): void =
  fcQsciLexerLua_setFoldCompact(self.h, fold)

proc tr*(_: type gen_qscilexerlua_types.QsciLexerLua, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerLua_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexerlua_types.QsciLexerLua, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerLua_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc blockStart*(self: gen_qscilexerlua_types.QsciLexerLua, style: ptr cint): cstring =
  (fcQsciLexerLua_blockStart1(self.h, style))

proc QsciLexerLuametaObject*(self: gen_qscilexerlua_types.QsciLexerLua, ): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fQsciLexerLua_virtualbase_metaObject(self.h))

type QsciLexerLuametaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qscilexerlua_types.QsciLexerLua, slot: QsciLexerLuametaObjectProc) =
  # TODO check subclass
  var tmp = new QsciLexerLuametaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_metaObject(self: ptr cQsciLexerLua, slot: int): pointer {.exportc: "miqt_exec_callback_QsciLexerLua_metaObject ".} =
  var nimfunc = cast[ptr QsciLexerLuametaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QsciLexerLuametacast*(self: gen_qscilexerlua_types.QsciLexerLua, param1: cstring): pointer =
  fQsciLexerLua_virtualbase_metacast(self.h, param1)

type QsciLexerLuametacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qscilexerlua_types.QsciLexerLua, slot: QsciLexerLuametacastProc) =
  # TODO check subclass
  var tmp = new QsciLexerLuametacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_metacast(self: ptr cQsciLexerLua, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciLexerLua_metacast ".} =
  var nimfunc = cast[ptr QsciLexerLuametacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerLuametacall*(self: gen_qscilexerlua_types.QsciLexerLua, param1: cint, param2: cint, param3: pointer): cint =
  fQsciLexerLua_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerLuametacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qscilexerlua_types.QsciLexerLua, slot: QsciLexerLuametacallProc) =
  # TODO check subclass
  var tmp = new QsciLexerLuametacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_metacall(self: ptr cQsciLexerLua, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerLua_metacall ".} =
  var nimfunc = cast[ptr QsciLexerLuametacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QsciLexerLuasetFoldCompact*(self: gen_qscilexerlua_types.QsciLexerLua, fold: bool): void =
  fQsciLexerLua_virtualbase_setFoldCompact(self.h, fold)

type QsciLexerLuasetFoldCompactProc* = proc(fold: bool): void
proc onsetFoldCompact*(self: gen_qscilexerlua_types.QsciLexerLua, slot: QsciLexerLuasetFoldCompactProc) =
  # TODO check subclass
  var tmp = new QsciLexerLuasetFoldCompactProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_setFoldCompact(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_setFoldCompact(self: ptr cQsciLexerLua, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerLua_setFoldCompact ".} =
  var nimfunc = cast[ptr QsciLexerLuasetFoldCompactProc](cast[pointer](slot))
  let slotval1 = fold


  nimfunc[](slotval1)
type QsciLexerLualanguageProc* = proc(): cstring
proc onlanguage*(self: gen_qscilexerlua_types.QsciLexerLua, slot: QsciLexerLualanguageProc) =
  # TODO check subclass
  var tmp = new QsciLexerLualanguageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_language(self: ptr cQsciLexerLua, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerLua_language ".} =
  var nimfunc = cast[ptr QsciLexerLualanguageProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerLualexer*(self: gen_qscilexerlua_types.QsciLexerLua, ): cstring =
  (fQsciLexerLua_virtualbase_lexer(self.h))

type QsciLexerLualexerProc* = proc(): cstring
proc onlexer*(self: gen_qscilexerlua_types.QsciLexerLua, slot: QsciLexerLualexerProc) =
  # TODO check subclass
  var tmp = new QsciLexerLualexerProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_lexer(self: ptr cQsciLexerLua, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerLua_lexer ".} =
  var nimfunc = cast[ptr QsciLexerLualexerProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerLualexerId*(self: gen_qscilexerlua_types.QsciLexerLua, ): cint =
  fQsciLexerLua_virtualbase_lexerId(self.h)

type QsciLexerLualexerIdProc* = proc(): cint
proc onlexerId*(self: gen_qscilexerlua_types.QsciLexerLua, slot: QsciLexerLualexerIdProc) =
  # TODO check subclass
  var tmp = new QsciLexerLualexerIdProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_lexerId(self: ptr cQsciLexerLua, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerLua_lexerId ".} =
  var nimfunc = cast[ptr QsciLexerLualexerIdProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerLuaautoCompletionFillups*(self: gen_qscilexerlua_types.QsciLexerLua, ): cstring =
  (fQsciLexerLua_virtualbase_autoCompletionFillups(self.h))

type QsciLexerLuaautoCompletionFillupsProc* = proc(): cstring
proc onautoCompletionFillups*(self: gen_qscilexerlua_types.QsciLexerLua, slot: QsciLexerLuaautoCompletionFillupsProc) =
  # TODO check subclass
  var tmp = new QsciLexerLuaautoCompletionFillupsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_autoCompletionFillups(self: ptr cQsciLexerLua, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerLua_autoCompletionFillups ".} =
  var nimfunc = cast[ptr QsciLexerLuaautoCompletionFillupsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerLuaautoCompletionWordSeparators*(self: gen_qscilexerlua_types.QsciLexerLua, ): seq[string] =
  var v_ma = fQsciLexerLua_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerLuaautoCompletionWordSeparatorsProc* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: gen_qscilexerlua_types.QsciLexerLua, slot: QsciLexerLuaautoCompletionWordSeparatorsProc) =
  # TODO check subclass
  var tmp = new QsciLexerLuaautoCompletionWordSeparatorsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_autoCompletionWordSeparators(self: ptr cQsciLexerLua, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerLua_autoCompletionWordSeparators ".} =
  var nimfunc = cast[ptr QsciLexerLuaautoCompletionWordSeparatorsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QsciLexerLuablockEnd*(self: gen_qscilexerlua_types.QsciLexerLua, style: ptr cint): cstring =
  (fQsciLexerLua_virtualbase_blockEnd(self.h, style))

type QsciLexerLuablockEndProc* = proc(style: ptr cint): cstring
proc onblockEnd*(self: gen_qscilexerlua_types.QsciLexerLua, slot: QsciLexerLuablockEndProc) =
  # TODO check subclass
  var tmp = new QsciLexerLuablockEndProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_blockEnd(self: ptr cQsciLexerLua, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerLua_blockEnd ".} =
  var nimfunc = cast[ptr QsciLexerLuablockEndProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerLuablockLookback*(self: gen_qscilexerlua_types.QsciLexerLua, ): cint =
  fQsciLexerLua_virtualbase_blockLookback(self.h)

type QsciLexerLuablockLookbackProc* = proc(): cint
proc onblockLookback*(self: gen_qscilexerlua_types.QsciLexerLua, slot: QsciLexerLuablockLookbackProc) =
  # TODO check subclass
  var tmp = new QsciLexerLuablockLookbackProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_blockLookback(self: ptr cQsciLexerLua, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerLua_blockLookback ".} =
  var nimfunc = cast[ptr QsciLexerLuablockLookbackProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerLuablockStart*(self: gen_qscilexerlua_types.QsciLexerLua, style: ptr cint): cstring =
  (fQsciLexerLua_virtualbase_blockStart(self.h, style))

type QsciLexerLuablockStartProc* = proc(style: ptr cint): cstring
proc onblockStart*(self: gen_qscilexerlua_types.QsciLexerLua, slot: QsciLexerLuablockStartProc) =
  # TODO check subclass
  var tmp = new QsciLexerLuablockStartProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_blockStart(self: ptr cQsciLexerLua, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerLua_blockStart ".} =
  var nimfunc = cast[ptr QsciLexerLuablockStartProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerLuablockStartKeyword*(self: gen_qscilexerlua_types.QsciLexerLua, style: ptr cint): cstring =
  (fQsciLexerLua_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerLuablockStartKeywordProc* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: gen_qscilexerlua_types.QsciLexerLua, slot: QsciLexerLuablockStartKeywordProc) =
  # TODO check subclass
  var tmp = new QsciLexerLuablockStartKeywordProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_blockStartKeyword(self: ptr cQsciLexerLua, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerLua_blockStartKeyword ".} =
  var nimfunc = cast[ptr QsciLexerLuablockStartKeywordProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerLuabraceStyle*(self: gen_qscilexerlua_types.QsciLexerLua, ): cint =
  fQsciLexerLua_virtualbase_braceStyle(self.h)

type QsciLexerLuabraceStyleProc* = proc(): cint
proc onbraceStyle*(self: gen_qscilexerlua_types.QsciLexerLua, slot: QsciLexerLuabraceStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerLuabraceStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_braceStyle(self: ptr cQsciLexerLua, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerLua_braceStyle ".} =
  var nimfunc = cast[ptr QsciLexerLuabraceStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerLuacaseSensitive*(self: gen_qscilexerlua_types.QsciLexerLua, ): bool =
  fQsciLexerLua_virtualbase_caseSensitive(self.h)

type QsciLexerLuacaseSensitiveProc* = proc(): bool
proc oncaseSensitive*(self: gen_qscilexerlua_types.QsciLexerLua, slot: QsciLexerLuacaseSensitiveProc) =
  # TODO check subclass
  var tmp = new QsciLexerLuacaseSensitiveProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_caseSensitive(self: ptr cQsciLexerLua, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerLua_caseSensitive ".} =
  var nimfunc = cast[ptr QsciLexerLuacaseSensitiveProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerLuacolor*(self: gen_qscilexerlua_types.QsciLexerLua, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerLua_virtualbase_color(self.h, style))

type QsciLexerLuacolorProc* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: gen_qscilexerlua_types.QsciLexerLua, slot: QsciLexerLuacolorProc) =
  # TODO check subclass
  var tmp = new QsciLexerLuacolorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_color(self: ptr cQsciLexerLua, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerLua_color ".} =
  var nimfunc = cast[ptr QsciLexerLuacolorProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerLuaeolFill*(self: gen_qscilexerlua_types.QsciLexerLua, style: cint): bool =
  fQsciLexerLua_virtualbase_eolFill(self.h, style)

type QsciLexerLuaeolFillProc* = proc(style: cint): bool
proc oneolFill*(self: gen_qscilexerlua_types.QsciLexerLua, slot: QsciLexerLuaeolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerLuaeolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_eolFill(self: ptr cQsciLexerLua, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerLua_eolFill ".} =
  var nimfunc = cast[ptr QsciLexerLuaeolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerLuafont*(self: gen_qscilexerlua_types.QsciLexerLua, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fQsciLexerLua_virtualbase_font(self.h, style))

type QsciLexerLuafontProc* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: gen_qscilexerlua_types.QsciLexerLua, slot: QsciLexerLuafontProc) =
  # TODO check subclass
  var tmp = new QsciLexerLuafontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_font(self: ptr cQsciLexerLua, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerLua_font ".} =
  var nimfunc = cast[ptr QsciLexerLuafontProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerLuaindentationGuideView*(self: gen_qscilexerlua_types.QsciLexerLua, ): cint =
  fQsciLexerLua_virtualbase_indentationGuideView(self.h)

type QsciLexerLuaindentationGuideViewProc* = proc(): cint
proc onindentationGuideView*(self: gen_qscilexerlua_types.QsciLexerLua, slot: QsciLexerLuaindentationGuideViewProc) =
  # TODO check subclass
  var tmp = new QsciLexerLuaindentationGuideViewProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_indentationGuideView(self: ptr cQsciLexerLua, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerLua_indentationGuideView ".} =
  var nimfunc = cast[ptr QsciLexerLuaindentationGuideViewProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerLuakeywords*(self: gen_qscilexerlua_types.QsciLexerLua, set: cint): cstring =
  (fQsciLexerLua_virtualbase_keywords(self.h, set))

type QsciLexerLuakeywordsProc* = proc(set: cint): cstring
proc onkeywords*(self: gen_qscilexerlua_types.QsciLexerLua, slot: QsciLexerLuakeywordsProc) =
  # TODO check subclass
  var tmp = new QsciLexerLuakeywordsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_keywords(self: ptr cQsciLexerLua, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerLua_keywords ".} =
  var nimfunc = cast[ptr QsciLexerLuakeywordsProc](cast[pointer](slot))
  let slotval1 = set


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerLuadefaultStyle*(self: gen_qscilexerlua_types.QsciLexerLua, ): cint =
  fQsciLexerLua_virtualbase_defaultStyle(self.h)

type QsciLexerLuadefaultStyleProc* = proc(): cint
proc ondefaultStyle*(self: gen_qscilexerlua_types.QsciLexerLua, slot: QsciLexerLuadefaultStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerLuadefaultStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_defaultStyle(self: ptr cQsciLexerLua, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerLua_defaultStyle ".} =
  var nimfunc = cast[ptr QsciLexerLuadefaultStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QsciLexerLuadescriptionProc* = proc(style: cint): string
proc ondescription*(self: gen_qscilexerlua_types.QsciLexerLua, slot: QsciLexerLuadescriptionProc) =
  # TODO check subclass
  var tmp = new QsciLexerLuadescriptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_description(self: ptr cQsciLexerLua, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerLua_description ".} =
  var nimfunc = cast[ptr QsciLexerLuadescriptionProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc QsciLexerLuapaper*(self: gen_qscilexerlua_types.QsciLexerLua, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerLua_virtualbase_paper(self.h, style))

type QsciLexerLuapaperProc* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: gen_qscilexerlua_types.QsciLexerLua, slot: QsciLexerLuapaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerLuapaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_paper(self: ptr cQsciLexerLua, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerLua_paper ".} =
  var nimfunc = cast[ptr QsciLexerLuapaperProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerLuadefaultColor*(self: gen_qscilexerlua_types.QsciLexerLua, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerLua_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerLuadefaultColorWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColor*(self: gen_qscilexerlua_types.QsciLexerLua, slot: QsciLexerLuadefaultColorWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerLuadefaultColorWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_defaultColorWithStyle(self: ptr cQsciLexerLua, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerLua_defaultColorWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerLuadefaultColorWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerLuadefaultEolFill*(self: gen_qscilexerlua_types.QsciLexerLua, style: cint): bool =
  fQsciLexerLua_virtualbase_defaultEolFill(self.h, style)

type QsciLexerLuadefaultEolFillProc* = proc(style: cint): bool
proc ondefaultEolFill*(self: gen_qscilexerlua_types.QsciLexerLua, slot: QsciLexerLuadefaultEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerLuadefaultEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_defaultEolFill(self: ptr cQsciLexerLua, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerLua_defaultEolFill ".} =
  var nimfunc = cast[ptr QsciLexerLuadefaultEolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerLuadefaultFont*(self: gen_qscilexerlua_types.QsciLexerLua, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fQsciLexerLua_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerLuadefaultFontWithStyleProc* = proc(style: cint): gen_qfont.QFont
proc ondefaultFont*(self: gen_qscilexerlua_types.QsciLexerLua, slot: QsciLexerLuadefaultFontWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerLuadefaultFontWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_defaultFontWithStyle(self: ptr cQsciLexerLua, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerLua_defaultFontWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerLuadefaultFontWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerLuadefaultPaper*(self: gen_qscilexerlua_types.QsciLexerLua, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerLua_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerLuadefaultPaperWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaper*(self: gen_qscilexerlua_types.QsciLexerLua, slot: QsciLexerLuadefaultPaperWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerLuadefaultPaperWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_defaultPaperWithStyle(self: ptr cQsciLexerLua, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerLua_defaultPaperWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerLuadefaultPaperWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerLuasetEditor*(self: gen_qscilexerlua_types.QsciLexerLua, editor: gen_qsciscintilla.QsciScintilla): void =
  fQsciLexerLua_virtualbase_setEditor(self.h, editor.h)

type QsciLexerLuasetEditorProc* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: gen_qscilexerlua_types.QsciLexerLua, slot: QsciLexerLuasetEditorProc) =
  # TODO check subclass
  var tmp = new QsciLexerLuasetEditorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_setEditor(self: ptr cQsciLexerLua, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerLua_setEditor ".} =
  var nimfunc = cast[ptr QsciLexerLuasetEditorProc](cast[pointer](slot))
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](slotval1)
proc QsciLexerLuarefreshProperties*(self: gen_qscilexerlua_types.QsciLexerLua, ): void =
  fQsciLexerLua_virtualbase_refreshProperties(self.h)

type QsciLexerLuarefreshPropertiesProc* = proc(): void
proc onrefreshProperties*(self: gen_qscilexerlua_types.QsciLexerLua, slot: QsciLexerLuarefreshPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerLuarefreshPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_refreshProperties(self: ptr cQsciLexerLua, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerLua_refreshProperties ".} =
  var nimfunc = cast[ptr QsciLexerLuarefreshPropertiesProc](cast[pointer](slot))

  nimfunc[]()
proc QsciLexerLuastyleBitsNeeded*(self: gen_qscilexerlua_types.QsciLexerLua, ): cint =
  fQsciLexerLua_virtualbase_styleBitsNeeded(self.h)

type QsciLexerLuastyleBitsNeededProc* = proc(): cint
proc onstyleBitsNeeded*(self: gen_qscilexerlua_types.QsciLexerLua, slot: QsciLexerLuastyleBitsNeededProc) =
  # TODO check subclass
  var tmp = new QsciLexerLuastyleBitsNeededProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_styleBitsNeeded(self: ptr cQsciLexerLua, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerLua_styleBitsNeeded ".} =
  var nimfunc = cast[ptr QsciLexerLuastyleBitsNeededProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerLuawordCharacters*(self: gen_qscilexerlua_types.QsciLexerLua, ): cstring =
  (fQsciLexerLua_virtualbase_wordCharacters(self.h))

type QsciLexerLuawordCharactersProc* = proc(): cstring
proc onwordCharacters*(self: gen_qscilexerlua_types.QsciLexerLua, slot: QsciLexerLuawordCharactersProc) =
  # TODO check subclass
  var tmp = new QsciLexerLuawordCharactersProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_wordCharacters(self: ptr cQsciLexerLua, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerLua_wordCharacters ".} =
  var nimfunc = cast[ptr QsciLexerLuawordCharactersProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerLuasetAutoIndentStyle*(self: gen_qscilexerlua_types.QsciLexerLua, autoindentstyle: cint): void =
  fQsciLexerLua_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerLuasetAutoIndentStyleProc* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: gen_qscilexerlua_types.QsciLexerLua, slot: QsciLexerLuasetAutoIndentStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerLuasetAutoIndentStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_setAutoIndentStyle(self: ptr cQsciLexerLua, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerLua_setAutoIndentStyle ".} =
  var nimfunc = cast[ptr QsciLexerLuasetAutoIndentStyleProc](cast[pointer](slot))
  let slotval1 = autoindentstyle


  nimfunc[](slotval1)
proc QsciLexerLuasetColor*(self: gen_qscilexerlua_types.QsciLexerLua, c: gen_qcolor.QColor, style: cint): void =
  fQsciLexerLua_virtualbase_setColor(self.h, c.h, style)

type QsciLexerLuasetColorProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: gen_qscilexerlua_types.QsciLexerLua, slot: QsciLexerLuasetColorProc) =
  # TODO check subclass
  var tmp = new QsciLexerLuasetColorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_setColor(self: ptr cQsciLexerLua, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerLua_setColor ".} =
  var nimfunc = cast[ptr QsciLexerLuasetColorProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerLuasetEolFill*(self: gen_qscilexerlua_types.QsciLexerLua, eoffill: bool, style: cint): void =
  fQsciLexerLua_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerLuasetEolFillProc* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: gen_qscilexerlua_types.QsciLexerLua, slot: QsciLexerLuasetEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerLuasetEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_setEolFill(self: ptr cQsciLexerLua, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerLua_setEolFill ".} =
  var nimfunc = cast[ptr QsciLexerLuasetEolFillProc](cast[pointer](slot))
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerLuasetFont*(self: gen_qscilexerlua_types.QsciLexerLua, f: gen_qfont.QFont, style: cint): void =
  fQsciLexerLua_virtualbase_setFont(self.h, f.h, style)

type QsciLexerLuasetFontProc* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: gen_qscilexerlua_types.QsciLexerLua, slot: QsciLexerLuasetFontProc) =
  # TODO check subclass
  var tmp = new QsciLexerLuasetFontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_setFont(self: ptr cQsciLexerLua, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerLua_setFont ".} =
  var nimfunc = cast[ptr QsciLexerLuasetFontProc](cast[pointer](slot))
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerLuasetPaper*(self: gen_qscilexerlua_types.QsciLexerLua, c: gen_qcolor.QColor, style: cint): void =
  fQsciLexerLua_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerLuasetPaperProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: gen_qscilexerlua_types.QsciLexerLua, slot: QsciLexerLuasetPaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerLuasetPaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_setPaper(self: ptr cQsciLexerLua, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerLua_setPaper ".} =
  var nimfunc = cast[ptr QsciLexerLuasetPaperProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerLuareadProperties*(self: gen_qscilexerlua_types.QsciLexerLua, qs: gen_qsettings.QSettings, prefix: string): bool =
  fQsciLexerLua_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerLuareadPropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: gen_qscilexerlua_types.QsciLexerLua, slot: QsciLexerLuareadPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerLuareadPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_readProperties(self: ptr cQsciLexerLua, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerLua_readProperties ".} =
  var nimfunc = cast[ptr QsciLexerLuareadPropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerLuawriteProperties*(self: gen_qscilexerlua_types.QsciLexerLua, qs: gen_qsettings.QSettings, prefix: string): bool =
  fQsciLexerLua_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerLuawritePropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: gen_qscilexerlua_types.QsciLexerLua, slot: QsciLexerLuawritePropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerLuawritePropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_writeProperties(self: ptr cQsciLexerLua, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerLua_writeProperties ".} =
  var nimfunc = cast[ptr QsciLexerLuawritePropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerLuaevent*(self: gen_qscilexerlua_types.QsciLexerLua, event: gen_qcoreevent.QEvent): bool =
  fQsciLexerLua_virtualbase_event(self.h, event.h)

type QsciLexerLuaeventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qscilexerlua_types.QsciLexerLua, slot: QsciLexerLuaeventProc) =
  # TODO check subclass
  var tmp = new QsciLexerLuaeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_event(self: ptr cQsciLexerLua, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerLua_event ".} =
  var nimfunc = cast[ptr QsciLexerLuaeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerLuaeventFilter*(self: gen_qscilexerlua_types.QsciLexerLua, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =
  fQsciLexerLua_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerLuaeventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qscilexerlua_types.QsciLexerLua, slot: QsciLexerLuaeventFilterProc) =
  # TODO check subclass
  var tmp = new QsciLexerLuaeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_eventFilter(self: ptr cQsciLexerLua, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerLua_eventFilter ".} =
  var nimfunc = cast[ptr QsciLexerLuaeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerLuatimerEvent*(self: gen_qscilexerlua_types.QsciLexerLua, event: gen_qcoreevent.QTimerEvent): void =
  fQsciLexerLua_virtualbase_timerEvent(self.h, event.h)

type QsciLexerLuatimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qscilexerlua_types.QsciLexerLua, slot: QsciLexerLuatimerEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerLuatimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_timerEvent(self: ptr cQsciLexerLua, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerLua_timerEvent ".} =
  var nimfunc = cast[ptr QsciLexerLuatimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerLuachildEvent*(self: gen_qscilexerlua_types.QsciLexerLua, event: gen_qcoreevent.QChildEvent): void =
  fQsciLexerLua_virtualbase_childEvent(self.h, event.h)

type QsciLexerLuachildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qscilexerlua_types.QsciLexerLua, slot: QsciLexerLuachildEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerLuachildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_childEvent(self: ptr cQsciLexerLua, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerLua_childEvent ".} =
  var nimfunc = cast[ptr QsciLexerLuachildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerLuacustomEvent*(self: gen_qscilexerlua_types.QsciLexerLua, event: gen_qcoreevent.QEvent): void =
  fQsciLexerLua_virtualbase_customEvent(self.h, event.h)

type QsciLexerLuacustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qscilexerlua_types.QsciLexerLua, slot: QsciLexerLuacustomEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerLuacustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_customEvent(self: ptr cQsciLexerLua, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerLua_customEvent ".} =
  var nimfunc = cast[ptr QsciLexerLuacustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerLuaconnectNotify*(self: gen_qscilexerlua_types.QsciLexerLua, signal: gen_qmetaobject.QMetaMethod): void =
  fQsciLexerLua_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerLuaconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qscilexerlua_types.QsciLexerLua, slot: QsciLexerLuaconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerLuaconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_connectNotify(self: ptr cQsciLexerLua, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerLua_connectNotify ".} =
  var nimfunc = cast[ptr QsciLexerLuaconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QsciLexerLuadisconnectNotify*(self: gen_qscilexerlua_types.QsciLexerLua, signal: gen_qmetaobject.QMetaMethod): void =
  fQsciLexerLua_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerLuadisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qscilexerlua_types.QsciLexerLua, slot: QsciLexerLuadisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerLuadisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_disconnectNotify(self: ptr cQsciLexerLua, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerLua_disconnectNotify ".} =
  var nimfunc = cast[ptr QsciLexerLuadisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qscilexerlua_types.QsciLexerLua): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerLua_staticMetaObject())
proc delete*(self: gen_qscilexerlua_types.QsciLexerLua) =
  fcQsciLexerLua_delete(self.h)
