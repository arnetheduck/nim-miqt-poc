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
{.compile("gen_qscilexerlua.cpp", cflags).}


type QsciLexerLuaEnum* = cint
const
  QsciLexerLuaDefault* = 0
  QsciLexerLuaComment* = 1
  QsciLexerLuaLineComment* = 2
  QsciLexerLuaNumber* = 4
  QsciLexerLuaKeyword* = 5
  QsciLexerLuaString* = 6
  QsciLexerLuaCharacter* = 7
  QsciLexerLuaLiteralString* = 8
  QsciLexerLuaPreprocessor* = 9
  QsciLexerLuaOperator* = 10
  QsciLexerLuaIdentifier* = 11
  QsciLexerLuaUnclosedString* = 12
  QsciLexerLuaBasicFunctions* = 13
  QsciLexerLuaStringTableMathsFunctions* = 14
  QsciLexerLuaCoroutinesIOSystemFacilities* = 15
  QsciLexerLuaKeywordSet5* = 16
  QsciLexerLuaKeywordSet6* = 17
  QsciLexerLuaKeywordSet7* = 18
  QsciLexerLuaKeywordSet8* = 19
  QsciLexerLuaLabel* = 20



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
proc fcQsciLexerLua_trUtf8(s: cstring): struct_miqt_string {.importc: "QsciLexerLua_trUtf8".}
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
proc fcQsciLexerLua_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerLua_trUtf82".}
proc fcQsciLexerLua_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerLua_trUtf83".}
proc fcQsciLexerLua_blockStart1(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerLua_blockStart1".}
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


func init*(T: type QsciLexerLua, h: ptr cQsciLexerLua): QsciLexerLua =
  T(h: h)
proc create*(T: type QsciLexerLua, ): QsciLexerLua =

  QsciLexerLua.init(fcQsciLexerLua_new())
proc create*(T: type QsciLexerLua, parent: gen_qobject.QObject): QsciLexerLua =

  QsciLexerLua.init(fcQsciLexerLua_new2(parent.h))
proc metaObject*(self: QsciLexerLua, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQsciLexerLua_metaObject(self.h))

proc metacast*(self: QsciLexerLua, param1: cstring): pointer =

  fcQsciLexerLua_metacast(self.h, param1)

proc metacall*(self: QsciLexerLua, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQsciLexerLua_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QsciLexerLua, s: cstring): string =

  let v_ms = fcQsciLexerLua_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QsciLexerLua, s: cstring): string =

  let v_ms = fcQsciLexerLua_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: QsciLexerLua, ): cstring =

  (fcQsciLexerLua_language(self.h))

proc lexer*(self: QsciLexerLua, ): cstring =

  (fcQsciLexerLua_lexer(self.h))

proc autoCompletionWordSeparators*(self: QsciLexerLua, ): seq[string] =

  var v_ma = fcQsciLexerLua_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc blockStart*(self: QsciLexerLua, ): cstring =

  (fcQsciLexerLua_blockStart(self.h))

proc braceStyle*(self: QsciLexerLua, ): cint =

  fcQsciLexerLua_braceStyle(self.h)

proc defaultColor*(self: QsciLexerLua, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerLua_defaultColor(self.h, style))

proc defaultEolFill*(self: QsciLexerLua, style: cint): bool =

  fcQsciLexerLua_defaultEolFill(self.h, style)

proc defaultFont*(self: QsciLexerLua, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQsciLexerLua_defaultFont(self.h, style))

proc defaultPaper*(self: QsciLexerLua, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerLua_defaultPaper(self.h, style))

proc keywords*(self: QsciLexerLua, set: cint): cstring =

  (fcQsciLexerLua_keywords(self.h, set))

proc description*(self: QsciLexerLua, style: cint): string =

  let v_ms = fcQsciLexerLua_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: QsciLexerLua, ): void =

  fcQsciLexerLua_refreshProperties(self.h)

proc foldCompact*(self: QsciLexerLua, ): bool =

  fcQsciLexerLua_foldCompact(self.h)

proc setFoldCompact*(self: QsciLexerLua, fold: bool): void =

  fcQsciLexerLua_setFoldCompact(self.h, fold)

proc tr2*(_: type QsciLexerLua, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerLua_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QsciLexerLua, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerLua_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QsciLexerLua, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerLua_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QsciLexerLua, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerLua_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc blockStart1*(self: QsciLexerLua, style: ptr cint): cstring =

  (fcQsciLexerLua_blockStart1(self.h, style))

proc callVirtualBase_metacall(self: QsciLexerLua, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQsciLexerLua_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerLuametacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QsciLexerLua, slot: proc(super: QsciLexerLuametacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerLuametacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_metacall(self: ptr cQsciLexerLua, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerLua_metacall ".} =
  type Cb = proc(super: QsciLexerLuametacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QsciLexerLua(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_setFoldCompact(self: QsciLexerLua, fold: bool): void =


  fQsciLexerLua_virtualbase_setFoldCompact(self.h, fold)

type QsciLexerLuasetFoldCompactBase* = proc(fold: bool): void
proc onsetFoldCompact*(self: QsciLexerLua, slot: proc(super: QsciLexerLuasetFoldCompactBase, fold: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerLuasetFoldCompactBase, fold: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_setFoldCompact(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_setFoldCompact(self: ptr cQsciLexerLua, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerLua_setFoldCompact ".} =
  type Cb = proc(super: QsciLexerLuasetFoldCompactBase, fold: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: bool): auto =
    callVirtualBase_setFoldCompact(QsciLexerLua(h: self), fold)
  let slotval1 = fold


  nimfunc[](superCall, slotval1)
type QsciLexerLualanguageBase* = proc(): cstring
proc onlanguage*(self: QsciLexerLua, slot: proc(): cstring) =
  # TODO check subclass
  type Cb = proc(): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_language(self: ptr cQsciLexerLua, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerLua_language ".} =
  type Cb = proc(): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc callVirtualBase_lexer(self: QsciLexerLua, ): cstring =


  (fQsciLexerLua_virtualbase_lexer(self.h))

type QsciLexerLualexerBase* = proc(): cstring
proc onlexer*(self: QsciLexerLua, slot: proc(super: QsciLexerLualexerBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerLualexerBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_lexer(self: ptr cQsciLexerLua, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerLua_lexer ".} =
  type Cb = proc(super: QsciLexerLualexerBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexer(QsciLexerLua(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_lexerId(self: QsciLexerLua, ): cint =


  fQsciLexerLua_virtualbase_lexerId(self.h)

type QsciLexerLualexerIdBase* = proc(): cint
proc onlexerId*(self: QsciLexerLua, slot: proc(super: QsciLexerLualexerIdBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerLualexerIdBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_lexerId(self: ptr cQsciLexerLua, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerLua_lexerId ".} =
  type Cb = proc(super: QsciLexerLualexerIdBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexerId(QsciLexerLua(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionFillups(self: QsciLexerLua, ): cstring =


  (fQsciLexerLua_virtualbase_autoCompletionFillups(self.h))

type QsciLexerLuaautoCompletionFillupsBase* = proc(): cstring
proc onautoCompletionFillups*(self: QsciLexerLua, slot: proc(super: QsciLexerLuaautoCompletionFillupsBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerLuaautoCompletionFillupsBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_autoCompletionFillups(self: ptr cQsciLexerLua, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerLua_autoCompletionFillups ".} =
  type Cb = proc(super: QsciLexerLuaautoCompletionFillupsBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionFillups(QsciLexerLua(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionWordSeparators(self: QsciLexerLua, ): seq[string] =


  var v_ma = fQsciLexerLua_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerLuaautoCompletionWordSeparatorsBase* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: QsciLexerLua, slot: proc(super: QsciLexerLuaautoCompletionWordSeparatorsBase): seq[string]) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerLuaautoCompletionWordSeparatorsBase): seq[string]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_autoCompletionWordSeparators(self: ptr cQsciLexerLua, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerLua_autoCompletionWordSeparators ".} =
  type Cb = proc(super: QsciLexerLuaautoCompletionWordSeparatorsBase): seq[string]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionWordSeparators(QsciLexerLua(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_blockEnd(self: QsciLexerLua, style: ptr cint): cstring =


  (fQsciLexerLua_virtualbase_blockEnd(self.h, style))

type QsciLexerLuablockEndBase* = proc(style: ptr cint): cstring
proc onblockEnd*(self: QsciLexerLua, slot: proc(super: QsciLexerLuablockEndBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerLuablockEndBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_blockEnd(self: ptr cQsciLexerLua, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerLua_blockEnd ".} =
  type Cb = proc(super: QsciLexerLuablockEndBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockEnd(QsciLexerLua(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockLookback(self: QsciLexerLua, ): cint =


  fQsciLexerLua_virtualbase_blockLookback(self.h)

type QsciLexerLuablockLookbackBase* = proc(): cint
proc onblockLookback*(self: QsciLexerLua, slot: proc(super: QsciLexerLuablockLookbackBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerLuablockLookbackBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_blockLookback(self: ptr cQsciLexerLua, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerLua_blockLookback ".} =
  type Cb = proc(super: QsciLexerLuablockLookbackBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_blockLookback(QsciLexerLua(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_blockStart(self: QsciLexerLua, style: ptr cint): cstring =


  (fQsciLexerLua_virtualbase_blockStart(self.h, style))

type QsciLexerLuablockStartBase* = proc(style: ptr cint): cstring
proc onblockStart*(self: QsciLexerLua, slot: proc(super: QsciLexerLuablockStartBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerLuablockStartBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_blockStart(self: ptr cQsciLexerLua, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerLua_blockStart ".} =
  type Cb = proc(super: QsciLexerLuablockStartBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStart(QsciLexerLua(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockStartKeyword(self: QsciLexerLua, style: ptr cint): cstring =


  (fQsciLexerLua_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerLuablockStartKeywordBase* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: QsciLexerLua, slot: proc(super: QsciLexerLuablockStartKeywordBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerLuablockStartKeywordBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_blockStartKeyword(self: ptr cQsciLexerLua, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerLua_blockStartKeyword ".} =
  type Cb = proc(super: QsciLexerLuablockStartKeywordBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStartKeyword(QsciLexerLua(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_braceStyle(self: QsciLexerLua, ): cint =


  fQsciLexerLua_virtualbase_braceStyle(self.h)

type QsciLexerLuabraceStyleBase* = proc(): cint
proc onbraceStyle*(self: QsciLexerLua, slot: proc(super: QsciLexerLuabraceStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerLuabraceStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_braceStyle(self: ptr cQsciLexerLua, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerLua_braceStyle ".} =
  type Cb = proc(super: QsciLexerLuabraceStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_braceStyle(QsciLexerLua(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_caseSensitive(self: QsciLexerLua, ): bool =


  fQsciLexerLua_virtualbase_caseSensitive(self.h)

type QsciLexerLuacaseSensitiveBase* = proc(): bool
proc oncaseSensitive*(self: QsciLexerLua, slot: proc(super: QsciLexerLuacaseSensitiveBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerLuacaseSensitiveBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_caseSensitive(self: ptr cQsciLexerLua, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerLua_caseSensitive ".} =
  type Cb = proc(super: QsciLexerLuacaseSensitiveBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_caseSensitive(QsciLexerLua(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_color(self: QsciLexerLua, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerLua_virtualbase_color(self.h, style))

type QsciLexerLuacolorBase* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: QsciLexerLua, slot: proc(super: QsciLexerLuacolorBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerLuacolorBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_color(self: ptr cQsciLexerLua, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerLua_color ".} =
  type Cb = proc(super: QsciLexerLuacolorBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_color(QsciLexerLua(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_eolFill(self: QsciLexerLua, style: cint): bool =


  fQsciLexerLua_virtualbase_eolFill(self.h, style)

type QsciLexerLuaeolFillBase* = proc(style: cint): bool
proc oneolFill*(self: QsciLexerLua, slot: proc(super: QsciLexerLuaeolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerLuaeolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_eolFill(self: ptr cQsciLexerLua, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerLua_eolFill ".} =
  type Cb = proc(super: QsciLexerLuaeolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_eolFill(QsciLexerLua(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_font(self: QsciLexerLua, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerLua_virtualbase_font(self.h, style))

type QsciLexerLuafontBase* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: QsciLexerLua, slot: proc(super: QsciLexerLuafontBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerLuafontBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_font(self: ptr cQsciLexerLua, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerLua_font ".} =
  type Cb = proc(super: QsciLexerLuafontBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_font(QsciLexerLua(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_indentationGuideView(self: QsciLexerLua, ): cint =


  fQsciLexerLua_virtualbase_indentationGuideView(self.h)

type QsciLexerLuaindentationGuideViewBase* = proc(): cint
proc onindentationGuideView*(self: QsciLexerLua, slot: proc(super: QsciLexerLuaindentationGuideViewBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerLuaindentationGuideViewBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_indentationGuideView(self: ptr cQsciLexerLua, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerLua_indentationGuideView ".} =
  type Cb = proc(super: QsciLexerLuaindentationGuideViewBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_indentationGuideView(QsciLexerLua(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_keywords(self: QsciLexerLua, set: cint): cstring =


  (fQsciLexerLua_virtualbase_keywords(self.h, set))

type QsciLexerLuakeywordsBase* = proc(set: cint): cstring
proc onkeywords*(self: QsciLexerLua, slot: proc(super: QsciLexerLuakeywordsBase, set: cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerLuakeywordsBase, set: cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_keywords(self: ptr cQsciLexerLua, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerLua_keywords ".} =
  type Cb = proc(super: QsciLexerLuakeywordsBase, set: cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(set: cint): auto =
    callVirtualBase_keywords(QsciLexerLua(h: self), set)
  let slotval1 = set


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultStyle(self: QsciLexerLua, ): cint =


  fQsciLexerLua_virtualbase_defaultStyle(self.h)

type QsciLexerLuadefaultStyleBase* = proc(): cint
proc ondefaultStyle*(self: QsciLexerLua, slot: proc(super: QsciLexerLuadefaultStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerLuadefaultStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_defaultStyle(self: ptr cQsciLexerLua, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerLua_defaultStyle ".} =
  type Cb = proc(super: QsciLexerLuadefaultStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_defaultStyle(QsciLexerLua(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
type QsciLexerLuadescriptionBase* = proc(style: cint): string
proc ondescription*(self: QsciLexerLua, slot: proc(style: cint): string) =
  # TODO check subclass
  type Cb = proc(style: cint): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_description(self: ptr cQsciLexerLua, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerLua_description ".} =
  type Cb = proc(style: cint): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc callVirtualBase_paper(self: QsciLexerLua, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerLua_virtualbase_paper(self.h, style))

type QsciLexerLuapaperBase* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: QsciLexerLua, slot: proc(super: QsciLexerLuapaperBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerLuapaperBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_paper(self: ptr cQsciLexerLua, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerLua_paper ".} =
  type Cb = proc(super: QsciLexerLuapaperBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_paper(QsciLexerLua(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultColorWithStyle(self: QsciLexerLua, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerLua_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerLuadefaultColorWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColorWithStyle*(self: QsciLexerLua, slot: proc(super: QsciLexerLuadefaultColorWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerLuadefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_defaultColorWithStyle(self: ptr cQsciLexerLua, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerLua_defaultColorWithStyle ".} =
  type Cb = proc(super: QsciLexerLuadefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultColorWithStyle(QsciLexerLua(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultEolFill(self: QsciLexerLua, style: cint): bool =


  fQsciLexerLua_virtualbase_defaultEolFill(self.h, style)

type QsciLexerLuadefaultEolFillBase* = proc(style: cint): bool
proc ondefaultEolFill*(self: QsciLexerLua, slot: proc(super: QsciLexerLuadefaultEolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerLuadefaultEolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_defaultEolFill(self: ptr cQsciLexerLua, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerLua_defaultEolFill ".} =
  type Cb = proc(super: QsciLexerLuadefaultEolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultEolFill(QsciLexerLua(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultFontWithStyle(self: QsciLexerLua, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerLua_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerLuadefaultFontWithStyleBase* = proc(style: cint): gen_qfont.QFont
proc ondefaultFontWithStyle*(self: QsciLexerLua, slot: proc(super: QsciLexerLuadefaultFontWithStyleBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerLuadefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_defaultFontWithStyle(self: ptr cQsciLexerLua, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerLua_defaultFontWithStyle ".} =
  type Cb = proc(super: QsciLexerLuadefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultFontWithStyle(QsciLexerLua(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultPaperWithStyle(self: QsciLexerLua, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerLua_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerLuadefaultPaperWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaperWithStyle*(self: QsciLexerLua, slot: proc(super: QsciLexerLuadefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerLuadefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_defaultPaperWithStyle(self: ptr cQsciLexerLua, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerLua_defaultPaperWithStyle ".} =
  type Cb = proc(super: QsciLexerLuadefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultPaperWithStyle(QsciLexerLua(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_setEditor(self: QsciLexerLua, editor: gen_qsciscintilla.QsciScintilla): void =


  fQsciLexerLua_virtualbase_setEditor(self.h, editor.h)

type QsciLexerLuasetEditorBase* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: QsciLexerLua, slot: proc(super: QsciLexerLuasetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerLuasetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_setEditor(self: ptr cQsciLexerLua, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerLua_setEditor ".} =
  type Cb = proc(super: QsciLexerLuasetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qsciscintilla.QsciScintilla): auto =
    callVirtualBase_setEditor(QsciLexerLua(h: self), editor)
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_refreshProperties(self: QsciLexerLua, ): void =


  fQsciLexerLua_virtualbase_refreshProperties(self.h)

type QsciLexerLuarefreshPropertiesBase* = proc(): void
proc onrefreshProperties*(self: QsciLexerLua, slot: proc(super: QsciLexerLuarefreshPropertiesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerLuarefreshPropertiesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_refreshProperties(self: ptr cQsciLexerLua, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerLua_refreshProperties ".} =
  type Cb = proc(super: QsciLexerLuarefreshPropertiesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_refreshProperties(QsciLexerLua(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_styleBitsNeeded(self: QsciLexerLua, ): cint =


  fQsciLexerLua_virtualbase_styleBitsNeeded(self.h)

type QsciLexerLuastyleBitsNeededBase* = proc(): cint
proc onstyleBitsNeeded*(self: QsciLexerLua, slot: proc(super: QsciLexerLuastyleBitsNeededBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerLuastyleBitsNeededBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_styleBitsNeeded(self: ptr cQsciLexerLua, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerLua_styleBitsNeeded ".} =
  type Cb = proc(super: QsciLexerLuastyleBitsNeededBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_styleBitsNeeded(QsciLexerLua(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_wordCharacters(self: QsciLexerLua, ): cstring =


  (fQsciLexerLua_virtualbase_wordCharacters(self.h))

type QsciLexerLuawordCharactersBase* = proc(): cstring
proc onwordCharacters*(self: QsciLexerLua, slot: proc(super: QsciLexerLuawordCharactersBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerLuawordCharactersBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_wordCharacters(self: ptr cQsciLexerLua, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerLua_wordCharacters ".} =
  type Cb = proc(super: QsciLexerLuawordCharactersBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_wordCharacters(QsciLexerLua(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setAutoIndentStyle(self: QsciLexerLua, autoindentstyle: cint): void =


  fQsciLexerLua_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerLuasetAutoIndentStyleBase* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: QsciLexerLua, slot: proc(super: QsciLexerLuasetAutoIndentStyleBase, autoindentstyle: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerLuasetAutoIndentStyleBase, autoindentstyle: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_setAutoIndentStyle(self: ptr cQsciLexerLua, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerLua_setAutoIndentStyle ".} =
  type Cb = proc(super: QsciLexerLuasetAutoIndentStyleBase, autoindentstyle: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(autoindentstyle: cint): auto =
    callVirtualBase_setAutoIndentStyle(QsciLexerLua(h: self), autoindentstyle)
  let slotval1 = autoindentstyle


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setColor(self: QsciLexerLua, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerLua_virtualbase_setColor(self.h, c.h, style)

type QsciLexerLuasetColorBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: QsciLexerLua, slot: proc(super: QsciLexerLuasetColorBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerLuasetColorBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_setColor(self: ptr cQsciLexerLua, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerLua_setColor ".} =
  type Cb = proc(super: QsciLexerLuasetColorBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setColor(QsciLexerLua(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setEolFill(self: QsciLexerLua, eoffill: bool, style: cint): void =


  fQsciLexerLua_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerLuasetEolFillBase* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: QsciLexerLua, slot: proc(super: QsciLexerLuasetEolFillBase, eoffill: bool, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerLuasetEolFillBase, eoffill: bool, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_setEolFill(self: ptr cQsciLexerLua, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerLua_setEolFill ".} =
  type Cb = proc(super: QsciLexerLuasetEolFillBase, eoffill: bool, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eoffill: bool, style: cint): auto =
    callVirtualBase_setEolFill(QsciLexerLua(h: self), eoffill, style)
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setFont(self: QsciLexerLua, f: gen_qfont.QFont, style: cint): void =


  fQsciLexerLua_virtualbase_setFont(self.h, f.h, style)

type QsciLexerLuasetFontBase* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: QsciLexerLua, slot: proc(super: QsciLexerLuasetFontBase, f: gen_qfont.QFont, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerLuasetFontBase, f: gen_qfont.QFont, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_setFont(self: ptr cQsciLexerLua, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerLua_setFont ".} =
  type Cb = proc(super: QsciLexerLuasetFontBase, f: gen_qfont.QFont, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(f: gen_qfont.QFont, style: cint): auto =
    callVirtualBase_setFont(QsciLexerLua(h: self), f, style)
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setPaper(self: QsciLexerLua, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerLua_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerLuasetPaperBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: QsciLexerLua, slot: proc(super: QsciLexerLuasetPaperBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerLuasetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_setPaper(self: ptr cQsciLexerLua, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerLua_setPaper ".} =
  type Cb = proc(super: QsciLexerLuasetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setPaper(QsciLexerLua(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_readProperties(self: QsciLexerLua, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerLua_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerLuareadPropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: QsciLexerLua, slot: proc(super: QsciLexerLuareadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerLuareadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_readProperties(self: ptr cQsciLexerLua, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerLua_readProperties ".} =
  type Cb = proc(super: QsciLexerLuareadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_readProperties(QsciLexerLua(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_writeProperties(self: QsciLexerLua, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerLua_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerLuawritePropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: QsciLexerLua, slot: proc(super: QsciLexerLuawritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerLuawritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_writeProperties(self: ptr cQsciLexerLua, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerLua_writeProperties ".} =
  type Cb = proc(super: QsciLexerLuawritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_writeProperties(QsciLexerLua(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_event(self: QsciLexerLua, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerLua_virtualbase_event(self.h, event.h)

type QsciLexerLuaeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QsciLexerLua, slot: proc(super: QsciLexerLuaeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerLuaeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_event(self: ptr cQsciLexerLua, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerLua_event ".} =
  type Cb = proc(super: QsciLexerLuaeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QsciLexerLua(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QsciLexerLua, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerLua_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerLuaeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QsciLexerLua, slot: proc(super: QsciLexerLuaeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerLuaeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_eventFilter(self: ptr cQsciLexerLua, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerLua_eventFilter ".} =
  type Cb = proc(super: QsciLexerLuaeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QsciLexerLua(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QsciLexerLua, event: gen_qcoreevent.QTimerEvent): void =


  fQsciLexerLua_virtualbase_timerEvent(self.h, event.h)

type QsciLexerLuatimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QsciLexerLua, slot: proc(super: QsciLexerLuatimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerLuatimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_timerEvent(self: ptr cQsciLexerLua, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerLua_timerEvent ".} =
  type Cb = proc(super: QsciLexerLuatimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QsciLexerLua(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QsciLexerLua, event: gen_qcoreevent.QChildEvent): void =


  fQsciLexerLua_virtualbase_childEvent(self.h, event.h)

type QsciLexerLuachildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QsciLexerLua, slot: proc(super: QsciLexerLuachildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerLuachildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_childEvent(self: ptr cQsciLexerLua, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerLua_childEvent ".} =
  type Cb = proc(super: QsciLexerLuachildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QsciLexerLua(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QsciLexerLua, event: gen_qcoreevent.QEvent): void =


  fQsciLexerLua_virtualbase_customEvent(self.h, event.h)

type QsciLexerLuacustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QsciLexerLua, slot: proc(super: QsciLexerLuacustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerLuacustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_customEvent(self: ptr cQsciLexerLua, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerLua_customEvent ".} =
  type Cb = proc(super: QsciLexerLuacustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QsciLexerLua(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QsciLexerLua, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerLua_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerLuaconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QsciLexerLua, slot: proc(super: QsciLexerLuaconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerLuaconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_connectNotify(self: ptr cQsciLexerLua, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerLua_connectNotify ".} =
  type Cb = proc(super: QsciLexerLuaconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QsciLexerLua(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QsciLexerLua, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerLua_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerLuadisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QsciLexerLua, slot: proc(super: QsciLexerLuadisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerLuadisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerLua_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerLua_disconnectNotify(self: ptr cQsciLexerLua, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerLua_disconnectNotify ".} =
  type Cb = proc(super: QsciLexerLuadisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QsciLexerLua(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QsciLexerLua): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerLua_staticMetaObject())
proc delete*(self: QsciLexerLua) =
  fcQsciLexerLua_delete(self.h)
