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
{.compile("gen_qscilexertex.cpp", cflags).}


type QsciLexerTeXEnumEnum* = distinct cint
template Default*(_: type QsciLexerTeXEnumEnum): untyped = 0
template Special*(_: type QsciLexerTeXEnumEnum): untyped = 1
template Group*(_: type QsciLexerTeXEnumEnum): untyped = 2
template Symbol*(_: type QsciLexerTeXEnumEnum): untyped = 3
template Command*(_: type QsciLexerTeXEnumEnum): untyped = 4
template Text*(_: type QsciLexerTeXEnumEnum): untyped = 5


import gen_qscilexertex_types
export gen_qscilexertex_types

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

type cQsciLexerTeX*{.exportc: "QsciLexerTeX", incompleteStruct.} = object

proc fcQsciLexerTeX_new(): ptr cQsciLexerTeX {.importc: "QsciLexerTeX_new".}
proc fcQsciLexerTeX_new2(parent: pointer): ptr cQsciLexerTeX {.importc: "QsciLexerTeX_new2".}
proc fcQsciLexerTeX_metaObject(self: pointer, ): pointer {.importc: "QsciLexerTeX_metaObject".}
proc fcQsciLexerTeX_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerTeX_metacast".}
proc fcQsciLexerTeX_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerTeX_metacall".}
proc fcQsciLexerTeX_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerTeX_tr".}
proc fcQsciLexerTeX_trUtf8(s: cstring): struct_miqt_string {.importc: "QsciLexerTeX_trUtf8".}
proc fcQsciLexerTeX_language(self: pointer, ): cstring {.importc: "QsciLexerTeX_language".}
proc fcQsciLexerTeX_lexer(self: pointer, ): cstring {.importc: "QsciLexerTeX_lexer".}
proc fcQsciLexerTeX_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerTeX_wordCharacters".}
proc fcQsciLexerTeX_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerTeX_defaultColor".}
proc fcQsciLexerTeX_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerTeX_keywords".}
proc fcQsciLexerTeX_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerTeX_description".}
proc fcQsciLexerTeX_refreshProperties(self: pointer, ): void {.importc: "QsciLexerTeX_refreshProperties".}
proc fcQsciLexerTeX_setFoldComments(self: pointer, fold: bool): void {.importc: "QsciLexerTeX_setFoldComments".}
proc fcQsciLexerTeX_foldComments(self: pointer, ): bool {.importc: "QsciLexerTeX_foldComments".}
proc fcQsciLexerTeX_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerTeX_setFoldCompact".}
proc fcQsciLexerTeX_foldCompact(self: pointer, ): bool {.importc: "QsciLexerTeX_foldCompact".}
proc fcQsciLexerTeX_setProcessComments(self: pointer, enable: bool): void {.importc: "QsciLexerTeX_setProcessComments".}
proc fcQsciLexerTeX_processComments(self: pointer, ): bool {.importc: "QsciLexerTeX_processComments".}
proc fcQsciLexerTeX_setProcessIf(self: pointer, enable: bool): void {.importc: "QsciLexerTeX_setProcessIf".}
proc fcQsciLexerTeX_processIf(self: pointer, ): bool {.importc: "QsciLexerTeX_processIf".}
proc fcQsciLexerTeX_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerTeX_tr2".}
proc fcQsciLexerTeX_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerTeX_tr3".}
proc fcQsciLexerTeX_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerTeX_trUtf82".}
proc fcQsciLexerTeX_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerTeX_trUtf83".}
proc fQsciLexerTeX_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QsciLexerTeX_virtualbase_metaObject".}
proc fcQsciLexerTeX_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_metaObject".}
proc fQsciLexerTeX_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QsciLexerTeX_virtualbase_metacast".}
proc fcQsciLexerTeX_override_virtual_metacast(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_metacast".}
proc fQsciLexerTeX_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciLexerTeX_virtualbase_metacall".}
proc fcQsciLexerTeX_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_metacall".}
proc fcQsciLexerTeX_override_virtual_language(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_language".}
proc fQsciLexerTeX_virtualbase_lexer(self: pointer, ): cstring{.importc: "QsciLexerTeX_virtualbase_lexer".}
proc fcQsciLexerTeX_override_virtual_lexer(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_lexer".}
proc fQsciLexerTeX_virtualbase_lexerId(self: pointer, ): cint{.importc: "QsciLexerTeX_virtualbase_lexerId".}
proc fcQsciLexerTeX_override_virtual_lexerId(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_lexerId".}
proc fQsciLexerTeX_virtualbase_autoCompletionFillups(self: pointer, ): cstring{.importc: "QsciLexerTeX_virtualbase_autoCompletionFillups".}
proc fcQsciLexerTeX_override_virtual_autoCompletionFillups(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_autoCompletionFillups".}
proc fQsciLexerTeX_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array{.importc: "QsciLexerTeX_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerTeX_override_virtual_autoCompletionWordSeparators(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_autoCompletionWordSeparators".}
proc fQsciLexerTeX_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerTeX_virtualbase_blockEnd".}
proc fcQsciLexerTeX_override_virtual_blockEnd(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_blockEnd".}
proc fQsciLexerTeX_virtualbase_blockLookback(self: pointer, ): cint{.importc: "QsciLexerTeX_virtualbase_blockLookback".}
proc fcQsciLexerTeX_override_virtual_blockLookback(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_blockLookback".}
proc fQsciLexerTeX_virtualbase_blockStart(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerTeX_virtualbase_blockStart".}
proc fcQsciLexerTeX_override_virtual_blockStart(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_blockStart".}
proc fQsciLexerTeX_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerTeX_virtualbase_blockStartKeyword".}
proc fcQsciLexerTeX_override_virtual_blockStartKeyword(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_blockStartKeyword".}
proc fQsciLexerTeX_virtualbase_braceStyle(self: pointer, ): cint{.importc: "QsciLexerTeX_virtualbase_braceStyle".}
proc fcQsciLexerTeX_override_virtual_braceStyle(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_braceStyle".}
proc fQsciLexerTeX_virtualbase_caseSensitive(self: pointer, ): bool{.importc: "QsciLexerTeX_virtualbase_caseSensitive".}
proc fcQsciLexerTeX_override_virtual_caseSensitive(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_caseSensitive".}
proc fQsciLexerTeX_virtualbase_color(self: pointer, style: cint): pointer{.importc: "QsciLexerTeX_virtualbase_color".}
proc fcQsciLexerTeX_override_virtual_color(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_color".}
proc fQsciLexerTeX_virtualbase_eolFill(self: pointer, style: cint): bool{.importc: "QsciLexerTeX_virtualbase_eolFill".}
proc fcQsciLexerTeX_override_virtual_eolFill(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_eolFill".}
proc fQsciLexerTeX_virtualbase_font(self: pointer, style: cint): pointer{.importc: "QsciLexerTeX_virtualbase_font".}
proc fcQsciLexerTeX_override_virtual_font(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_font".}
proc fQsciLexerTeX_virtualbase_indentationGuideView(self: pointer, ): cint{.importc: "QsciLexerTeX_virtualbase_indentationGuideView".}
proc fcQsciLexerTeX_override_virtual_indentationGuideView(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_indentationGuideView".}
proc fQsciLexerTeX_virtualbase_keywords(self: pointer, set: cint): cstring{.importc: "QsciLexerTeX_virtualbase_keywords".}
proc fcQsciLexerTeX_override_virtual_keywords(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_keywords".}
proc fQsciLexerTeX_virtualbase_defaultStyle(self: pointer, ): cint{.importc: "QsciLexerTeX_virtualbase_defaultStyle".}
proc fcQsciLexerTeX_override_virtual_defaultStyle(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_defaultStyle".}
proc fcQsciLexerTeX_override_virtual_description(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_description".}
proc fQsciLexerTeX_virtualbase_paper(self: pointer, style: cint): pointer{.importc: "QsciLexerTeX_virtualbase_paper".}
proc fcQsciLexerTeX_override_virtual_paper(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_paper".}
proc fQsciLexerTeX_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerTeX_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerTeX_override_virtual_defaultColorWithStyle(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_defaultColorWithStyle".}
proc fQsciLexerTeX_virtualbase_defaultEolFill(self: pointer, style: cint): bool{.importc: "QsciLexerTeX_virtualbase_defaultEolFill".}
proc fcQsciLexerTeX_override_virtual_defaultEolFill(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_defaultEolFill".}
proc fQsciLexerTeX_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerTeX_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerTeX_override_virtual_defaultFontWithStyle(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_defaultFontWithStyle".}
proc fQsciLexerTeX_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerTeX_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerTeX_override_virtual_defaultPaperWithStyle(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_defaultPaperWithStyle".}
proc fQsciLexerTeX_virtualbase_setEditor(self: pointer, editor: pointer): void{.importc: "QsciLexerTeX_virtualbase_setEditor".}
proc fcQsciLexerTeX_override_virtual_setEditor(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_setEditor".}
proc fQsciLexerTeX_virtualbase_refreshProperties(self: pointer, ): void{.importc: "QsciLexerTeX_virtualbase_refreshProperties".}
proc fcQsciLexerTeX_override_virtual_refreshProperties(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_refreshProperties".}
proc fQsciLexerTeX_virtualbase_styleBitsNeeded(self: pointer, ): cint{.importc: "QsciLexerTeX_virtualbase_styleBitsNeeded".}
proc fcQsciLexerTeX_override_virtual_styleBitsNeeded(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_styleBitsNeeded".}
proc fQsciLexerTeX_virtualbase_wordCharacters(self: pointer, ): cstring{.importc: "QsciLexerTeX_virtualbase_wordCharacters".}
proc fcQsciLexerTeX_override_virtual_wordCharacters(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_wordCharacters".}
proc fQsciLexerTeX_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void{.importc: "QsciLexerTeX_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerTeX_override_virtual_setAutoIndentStyle(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_setAutoIndentStyle".}
proc fQsciLexerTeX_virtualbase_setColor(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerTeX_virtualbase_setColor".}
proc fcQsciLexerTeX_override_virtual_setColor(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_setColor".}
proc fQsciLexerTeX_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void{.importc: "QsciLexerTeX_virtualbase_setEolFill".}
proc fcQsciLexerTeX_override_virtual_setEolFill(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_setEolFill".}
proc fQsciLexerTeX_virtualbase_setFont(self: pointer, f: pointer, style: cint): void{.importc: "QsciLexerTeX_virtualbase_setFont".}
proc fcQsciLexerTeX_override_virtual_setFont(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_setFont".}
proc fQsciLexerTeX_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerTeX_virtualbase_setPaper".}
proc fcQsciLexerTeX_override_virtual_setPaper(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_setPaper".}
proc fQsciLexerTeX_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerTeX_virtualbase_readProperties".}
proc fcQsciLexerTeX_override_virtual_readProperties(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_readProperties".}
proc fQsciLexerTeX_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerTeX_virtualbase_writeProperties".}
proc fcQsciLexerTeX_override_virtual_writeProperties(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_writeProperties".}
proc fQsciLexerTeX_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QsciLexerTeX_virtualbase_event".}
proc fcQsciLexerTeX_override_virtual_event(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_event".}
proc fQsciLexerTeX_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciLexerTeX_virtualbase_eventFilter".}
proc fcQsciLexerTeX_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_eventFilter".}
proc fQsciLexerTeX_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciLexerTeX_virtualbase_timerEvent".}
proc fcQsciLexerTeX_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_timerEvent".}
proc fQsciLexerTeX_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciLexerTeX_virtualbase_childEvent".}
proc fcQsciLexerTeX_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_childEvent".}
proc fQsciLexerTeX_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciLexerTeX_virtualbase_customEvent".}
proc fcQsciLexerTeX_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_customEvent".}
proc fQsciLexerTeX_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerTeX_virtualbase_connectNotify".}
proc fcQsciLexerTeX_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_connectNotify".}
proc fQsciLexerTeX_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerTeX_virtualbase_disconnectNotify".}
proc fcQsciLexerTeX_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_disconnectNotify".}
proc fcQsciLexerTeX_staticMetaObject(): pointer {.importc: "QsciLexerTeX_staticMetaObject".}
proc fcQsciLexerTeX_delete(self: pointer) {.importc: "QsciLexerTeX_delete".}


func init*(T: type gen_qscilexertex_types.QsciLexerTeX, h: ptr cQsciLexerTeX): gen_qscilexertex_types.QsciLexerTeX =
  T(h: h)
proc create*(T: type gen_qscilexertex_types.QsciLexerTeX, ): gen_qscilexertex_types.QsciLexerTeX =
  gen_qscilexertex_types.QsciLexerTeX.init(fcQsciLexerTeX_new())

proc create*(T: type gen_qscilexertex_types.QsciLexerTeX, parent: gen_qobject.QObject): gen_qscilexertex_types.QsciLexerTeX =
  gen_qscilexertex_types.QsciLexerTeX.init(fcQsciLexerTeX_new2(parent.h))

proc metaObject*(self: gen_qscilexertex_types.QsciLexerTeX, ): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerTeX_metaObject(self.h))

proc metacast*(self: gen_qscilexertex_types.QsciLexerTeX, param1: cstring): pointer =
  fcQsciLexerTeX_metacast(self.h, param1)

proc metacall*(self: gen_qscilexertex_types.QsciLexerTeX, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerTeX_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexertex_types.QsciLexerTeX, s: cstring): string =
  let v_ms = fcQsciLexerTeX_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexertex_types.QsciLexerTeX, s: cstring): string =
  let v_ms = fcQsciLexerTeX_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexertex_types.QsciLexerTeX, ): cstring =
  (fcQsciLexerTeX_language(self.h))

proc lexer*(self: gen_qscilexertex_types.QsciLexerTeX, ): cstring =
  (fcQsciLexerTeX_lexer(self.h))

proc wordCharacters*(self: gen_qscilexertex_types.QsciLexerTeX, ): cstring =
  (fcQsciLexerTeX_wordCharacters(self.h))

proc defaultColor*(self: gen_qscilexertex_types.QsciLexerTeX, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fcQsciLexerTeX_defaultColor(self.h, style))

proc keywords*(self: gen_qscilexertex_types.QsciLexerTeX, set: cint): cstring =
  (fcQsciLexerTeX_keywords(self.h, set))

proc description*(self: gen_qscilexertex_types.QsciLexerTeX, style: cint): string =
  let v_ms = fcQsciLexerTeX_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: gen_qscilexertex_types.QsciLexerTeX, ): void =
  fcQsciLexerTeX_refreshProperties(self.h)

proc setFoldComments*(self: gen_qscilexertex_types.QsciLexerTeX, fold: bool): void =
  fcQsciLexerTeX_setFoldComments(self.h, fold)

proc foldComments*(self: gen_qscilexertex_types.QsciLexerTeX, ): bool =
  fcQsciLexerTeX_foldComments(self.h)

proc setFoldCompact*(self: gen_qscilexertex_types.QsciLexerTeX, fold: bool): void =
  fcQsciLexerTeX_setFoldCompact(self.h, fold)

proc foldCompact*(self: gen_qscilexertex_types.QsciLexerTeX, ): bool =
  fcQsciLexerTeX_foldCompact(self.h)

proc setProcessComments*(self: gen_qscilexertex_types.QsciLexerTeX, enable: bool): void =
  fcQsciLexerTeX_setProcessComments(self.h, enable)

proc processComments*(self: gen_qscilexertex_types.QsciLexerTeX, ): bool =
  fcQsciLexerTeX_processComments(self.h)

proc setProcessIf*(self: gen_qscilexertex_types.QsciLexerTeX, enable: bool): void =
  fcQsciLexerTeX_setProcessIf(self.h, enable)

proc processIf*(self: gen_qscilexertex_types.QsciLexerTeX, ): bool =
  fcQsciLexerTeX_processIf(self.h)

proc tr*(_: type gen_qscilexertex_types.QsciLexerTeX, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerTeX_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexertex_types.QsciLexerTeX, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerTeX_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexertex_types.QsciLexerTeX, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerTeX_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexertex_types.QsciLexerTeX, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerTeX_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QsciLexerTeXmetaObject*(self: gen_qscilexertex_types.QsciLexerTeX, ): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fQsciLexerTeX_virtualbase_metaObject(self.h))

type QsciLexerTeXmetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qscilexertex_types.QsciLexerTeX, slot: QsciLexerTeXmetaObjectProc) =
  # TODO check subclass
  var tmp = new QsciLexerTeXmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_metaObject(self: ptr cQsciLexerTeX, slot: int): pointer {.exportc: "miqt_exec_callback_QsciLexerTeX_metaObject ".} =
  var nimfunc = cast[ptr QsciLexerTeXmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QsciLexerTeXmetacast*(self: gen_qscilexertex_types.QsciLexerTeX, param1: cstring): pointer =
  fQsciLexerTeX_virtualbase_metacast(self.h, param1)

type QsciLexerTeXmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qscilexertex_types.QsciLexerTeX, slot: QsciLexerTeXmetacastProc) =
  # TODO check subclass
  var tmp = new QsciLexerTeXmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_metacast(self: ptr cQsciLexerTeX, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciLexerTeX_metacast ".} =
  var nimfunc = cast[ptr QsciLexerTeXmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerTeXmetacall*(self: gen_qscilexertex_types.QsciLexerTeX, param1: cint, param2: cint, param3: pointer): cint =
  fQsciLexerTeX_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerTeXmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qscilexertex_types.QsciLexerTeX, slot: QsciLexerTeXmetacallProc) =
  # TODO check subclass
  var tmp = new QsciLexerTeXmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_metacall(self: ptr cQsciLexerTeX, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerTeX_metacall ".} =
  var nimfunc = cast[ptr QsciLexerTeXmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
type QsciLexerTeXlanguageProc* = proc(): cstring
proc onlanguage*(self: gen_qscilexertex_types.QsciLexerTeX, slot: QsciLexerTeXlanguageProc) =
  # TODO check subclass
  var tmp = new QsciLexerTeXlanguageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_language(self: ptr cQsciLexerTeX, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerTeX_language ".} =
  var nimfunc = cast[ptr QsciLexerTeXlanguageProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerTeXlexer*(self: gen_qscilexertex_types.QsciLexerTeX, ): cstring =
  (fQsciLexerTeX_virtualbase_lexer(self.h))

type QsciLexerTeXlexerProc* = proc(): cstring
proc onlexer*(self: gen_qscilexertex_types.QsciLexerTeX, slot: QsciLexerTeXlexerProc) =
  # TODO check subclass
  var tmp = new QsciLexerTeXlexerProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_lexer(self: ptr cQsciLexerTeX, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerTeX_lexer ".} =
  var nimfunc = cast[ptr QsciLexerTeXlexerProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerTeXlexerId*(self: gen_qscilexertex_types.QsciLexerTeX, ): cint =
  fQsciLexerTeX_virtualbase_lexerId(self.h)

type QsciLexerTeXlexerIdProc* = proc(): cint
proc onlexerId*(self: gen_qscilexertex_types.QsciLexerTeX, slot: QsciLexerTeXlexerIdProc) =
  # TODO check subclass
  var tmp = new QsciLexerTeXlexerIdProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_lexerId(self: ptr cQsciLexerTeX, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerTeX_lexerId ".} =
  var nimfunc = cast[ptr QsciLexerTeXlexerIdProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerTeXautoCompletionFillups*(self: gen_qscilexertex_types.QsciLexerTeX, ): cstring =
  (fQsciLexerTeX_virtualbase_autoCompletionFillups(self.h))

type QsciLexerTeXautoCompletionFillupsProc* = proc(): cstring
proc onautoCompletionFillups*(self: gen_qscilexertex_types.QsciLexerTeX, slot: QsciLexerTeXautoCompletionFillupsProc) =
  # TODO check subclass
  var tmp = new QsciLexerTeXautoCompletionFillupsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_autoCompletionFillups(self: ptr cQsciLexerTeX, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerTeX_autoCompletionFillups ".} =
  var nimfunc = cast[ptr QsciLexerTeXautoCompletionFillupsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerTeXautoCompletionWordSeparators*(self: gen_qscilexertex_types.QsciLexerTeX, ): seq[string] =
  var v_ma = fQsciLexerTeX_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerTeXautoCompletionWordSeparatorsProc* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: gen_qscilexertex_types.QsciLexerTeX, slot: QsciLexerTeXautoCompletionWordSeparatorsProc) =
  # TODO check subclass
  var tmp = new QsciLexerTeXautoCompletionWordSeparatorsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_autoCompletionWordSeparators(self: ptr cQsciLexerTeX, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerTeX_autoCompletionWordSeparators ".} =
  var nimfunc = cast[ptr QsciLexerTeXautoCompletionWordSeparatorsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QsciLexerTeXblockEnd*(self: gen_qscilexertex_types.QsciLexerTeX, style: ptr cint): cstring =
  (fQsciLexerTeX_virtualbase_blockEnd(self.h, style))

type QsciLexerTeXblockEndProc* = proc(style: ptr cint): cstring
proc onblockEnd*(self: gen_qscilexertex_types.QsciLexerTeX, slot: QsciLexerTeXblockEndProc) =
  # TODO check subclass
  var tmp = new QsciLexerTeXblockEndProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_blockEnd(self: ptr cQsciLexerTeX, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerTeX_blockEnd ".} =
  var nimfunc = cast[ptr QsciLexerTeXblockEndProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerTeXblockLookback*(self: gen_qscilexertex_types.QsciLexerTeX, ): cint =
  fQsciLexerTeX_virtualbase_blockLookback(self.h)

type QsciLexerTeXblockLookbackProc* = proc(): cint
proc onblockLookback*(self: gen_qscilexertex_types.QsciLexerTeX, slot: QsciLexerTeXblockLookbackProc) =
  # TODO check subclass
  var tmp = new QsciLexerTeXblockLookbackProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_blockLookback(self: ptr cQsciLexerTeX, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerTeX_blockLookback ".} =
  var nimfunc = cast[ptr QsciLexerTeXblockLookbackProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerTeXblockStart*(self: gen_qscilexertex_types.QsciLexerTeX, style: ptr cint): cstring =
  (fQsciLexerTeX_virtualbase_blockStart(self.h, style))

type QsciLexerTeXblockStartProc* = proc(style: ptr cint): cstring
proc onblockStart*(self: gen_qscilexertex_types.QsciLexerTeX, slot: QsciLexerTeXblockStartProc) =
  # TODO check subclass
  var tmp = new QsciLexerTeXblockStartProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_blockStart(self: ptr cQsciLexerTeX, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerTeX_blockStart ".} =
  var nimfunc = cast[ptr QsciLexerTeXblockStartProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerTeXblockStartKeyword*(self: gen_qscilexertex_types.QsciLexerTeX, style: ptr cint): cstring =
  (fQsciLexerTeX_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerTeXblockStartKeywordProc* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: gen_qscilexertex_types.QsciLexerTeX, slot: QsciLexerTeXblockStartKeywordProc) =
  # TODO check subclass
  var tmp = new QsciLexerTeXblockStartKeywordProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_blockStartKeyword(self: ptr cQsciLexerTeX, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerTeX_blockStartKeyword ".} =
  var nimfunc = cast[ptr QsciLexerTeXblockStartKeywordProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerTeXbraceStyle*(self: gen_qscilexertex_types.QsciLexerTeX, ): cint =
  fQsciLexerTeX_virtualbase_braceStyle(self.h)

type QsciLexerTeXbraceStyleProc* = proc(): cint
proc onbraceStyle*(self: gen_qscilexertex_types.QsciLexerTeX, slot: QsciLexerTeXbraceStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerTeXbraceStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_braceStyle(self: ptr cQsciLexerTeX, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerTeX_braceStyle ".} =
  var nimfunc = cast[ptr QsciLexerTeXbraceStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerTeXcaseSensitive*(self: gen_qscilexertex_types.QsciLexerTeX, ): bool =
  fQsciLexerTeX_virtualbase_caseSensitive(self.h)

type QsciLexerTeXcaseSensitiveProc* = proc(): bool
proc oncaseSensitive*(self: gen_qscilexertex_types.QsciLexerTeX, slot: QsciLexerTeXcaseSensitiveProc) =
  # TODO check subclass
  var tmp = new QsciLexerTeXcaseSensitiveProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_caseSensitive(self: ptr cQsciLexerTeX, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerTeX_caseSensitive ".} =
  var nimfunc = cast[ptr QsciLexerTeXcaseSensitiveProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerTeXcolor*(self: gen_qscilexertex_types.QsciLexerTeX, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerTeX_virtualbase_color(self.h, style))

type QsciLexerTeXcolorProc* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: gen_qscilexertex_types.QsciLexerTeX, slot: QsciLexerTeXcolorProc) =
  # TODO check subclass
  var tmp = new QsciLexerTeXcolorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_color(self: ptr cQsciLexerTeX, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerTeX_color ".} =
  var nimfunc = cast[ptr QsciLexerTeXcolorProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerTeXeolFill*(self: gen_qscilexertex_types.QsciLexerTeX, style: cint): bool =
  fQsciLexerTeX_virtualbase_eolFill(self.h, style)

type QsciLexerTeXeolFillProc* = proc(style: cint): bool
proc oneolFill*(self: gen_qscilexertex_types.QsciLexerTeX, slot: QsciLexerTeXeolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerTeXeolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_eolFill(self: ptr cQsciLexerTeX, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerTeX_eolFill ".} =
  var nimfunc = cast[ptr QsciLexerTeXeolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerTeXfont*(self: gen_qscilexertex_types.QsciLexerTeX, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fQsciLexerTeX_virtualbase_font(self.h, style))

type QsciLexerTeXfontProc* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: gen_qscilexertex_types.QsciLexerTeX, slot: QsciLexerTeXfontProc) =
  # TODO check subclass
  var tmp = new QsciLexerTeXfontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_font(self: ptr cQsciLexerTeX, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerTeX_font ".} =
  var nimfunc = cast[ptr QsciLexerTeXfontProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerTeXindentationGuideView*(self: gen_qscilexertex_types.QsciLexerTeX, ): cint =
  fQsciLexerTeX_virtualbase_indentationGuideView(self.h)

type QsciLexerTeXindentationGuideViewProc* = proc(): cint
proc onindentationGuideView*(self: gen_qscilexertex_types.QsciLexerTeX, slot: QsciLexerTeXindentationGuideViewProc) =
  # TODO check subclass
  var tmp = new QsciLexerTeXindentationGuideViewProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_indentationGuideView(self: ptr cQsciLexerTeX, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerTeX_indentationGuideView ".} =
  var nimfunc = cast[ptr QsciLexerTeXindentationGuideViewProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerTeXkeywords*(self: gen_qscilexertex_types.QsciLexerTeX, set: cint): cstring =
  (fQsciLexerTeX_virtualbase_keywords(self.h, set))

type QsciLexerTeXkeywordsProc* = proc(set: cint): cstring
proc onkeywords*(self: gen_qscilexertex_types.QsciLexerTeX, slot: QsciLexerTeXkeywordsProc) =
  # TODO check subclass
  var tmp = new QsciLexerTeXkeywordsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_keywords(self: ptr cQsciLexerTeX, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerTeX_keywords ".} =
  var nimfunc = cast[ptr QsciLexerTeXkeywordsProc](cast[pointer](slot))
  let slotval1 = set


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerTeXdefaultStyle*(self: gen_qscilexertex_types.QsciLexerTeX, ): cint =
  fQsciLexerTeX_virtualbase_defaultStyle(self.h)

type QsciLexerTeXdefaultStyleProc* = proc(): cint
proc ondefaultStyle*(self: gen_qscilexertex_types.QsciLexerTeX, slot: QsciLexerTeXdefaultStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerTeXdefaultStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_defaultStyle(self: ptr cQsciLexerTeX, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerTeX_defaultStyle ".} =
  var nimfunc = cast[ptr QsciLexerTeXdefaultStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QsciLexerTeXdescriptionProc* = proc(style: cint): string
proc ondescription*(self: gen_qscilexertex_types.QsciLexerTeX, slot: QsciLexerTeXdescriptionProc) =
  # TODO check subclass
  var tmp = new QsciLexerTeXdescriptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_description(self: ptr cQsciLexerTeX, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerTeX_description ".} =
  var nimfunc = cast[ptr QsciLexerTeXdescriptionProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc QsciLexerTeXpaper*(self: gen_qscilexertex_types.QsciLexerTeX, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerTeX_virtualbase_paper(self.h, style))

type QsciLexerTeXpaperProc* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: gen_qscilexertex_types.QsciLexerTeX, slot: QsciLexerTeXpaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerTeXpaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_paper(self: ptr cQsciLexerTeX, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerTeX_paper ".} =
  var nimfunc = cast[ptr QsciLexerTeXpaperProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerTeXdefaultColor*(self: gen_qscilexertex_types.QsciLexerTeX, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerTeX_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerTeXdefaultColorWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColor*(self: gen_qscilexertex_types.QsciLexerTeX, slot: QsciLexerTeXdefaultColorWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerTeXdefaultColorWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_defaultColorWithStyle(self: ptr cQsciLexerTeX, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerTeX_defaultColorWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerTeXdefaultColorWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerTeXdefaultEolFill*(self: gen_qscilexertex_types.QsciLexerTeX, style: cint): bool =
  fQsciLexerTeX_virtualbase_defaultEolFill(self.h, style)

type QsciLexerTeXdefaultEolFillProc* = proc(style: cint): bool
proc ondefaultEolFill*(self: gen_qscilexertex_types.QsciLexerTeX, slot: QsciLexerTeXdefaultEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerTeXdefaultEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_defaultEolFill(self: ptr cQsciLexerTeX, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerTeX_defaultEolFill ".} =
  var nimfunc = cast[ptr QsciLexerTeXdefaultEolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerTeXdefaultFont*(self: gen_qscilexertex_types.QsciLexerTeX, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fQsciLexerTeX_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerTeXdefaultFontWithStyleProc* = proc(style: cint): gen_qfont.QFont
proc ondefaultFont*(self: gen_qscilexertex_types.QsciLexerTeX, slot: QsciLexerTeXdefaultFontWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerTeXdefaultFontWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_defaultFontWithStyle(self: ptr cQsciLexerTeX, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerTeX_defaultFontWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerTeXdefaultFontWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerTeXdefaultPaper*(self: gen_qscilexertex_types.QsciLexerTeX, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerTeX_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerTeXdefaultPaperWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaper*(self: gen_qscilexertex_types.QsciLexerTeX, slot: QsciLexerTeXdefaultPaperWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerTeXdefaultPaperWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_defaultPaperWithStyle(self: ptr cQsciLexerTeX, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerTeX_defaultPaperWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerTeXdefaultPaperWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerTeXsetEditor*(self: gen_qscilexertex_types.QsciLexerTeX, editor: gen_qsciscintilla.QsciScintilla): void =
  fQsciLexerTeX_virtualbase_setEditor(self.h, editor.h)

type QsciLexerTeXsetEditorProc* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: gen_qscilexertex_types.QsciLexerTeX, slot: QsciLexerTeXsetEditorProc) =
  # TODO check subclass
  var tmp = new QsciLexerTeXsetEditorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_setEditor(self: ptr cQsciLexerTeX, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerTeX_setEditor ".} =
  var nimfunc = cast[ptr QsciLexerTeXsetEditorProc](cast[pointer](slot))
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](slotval1)
proc QsciLexerTeXrefreshProperties*(self: gen_qscilexertex_types.QsciLexerTeX, ): void =
  fQsciLexerTeX_virtualbase_refreshProperties(self.h)

type QsciLexerTeXrefreshPropertiesProc* = proc(): void
proc onrefreshProperties*(self: gen_qscilexertex_types.QsciLexerTeX, slot: QsciLexerTeXrefreshPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerTeXrefreshPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_refreshProperties(self: ptr cQsciLexerTeX, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerTeX_refreshProperties ".} =
  var nimfunc = cast[ptr QsciLexerTeXrefreshPropertiesProc](cast[pointer](slot))

  nimfunc[]()
proc QsciLexerTeXstyleBitsNeeded*(self: gen_qscilexertex_types.QsciLexerTeX, ): cint =
  fQsciLexerTeX_virtualbase_styleBitsNeeded(self.h)

type QsciLexerTeXstyleBitsNeededProc* = proc(): cint
proc onstyleBitsNeeded*(self: gen_qscilexertex_types.QsciLexerTeX, slot: QsciLexerTeXstyleBitsNeededProc) =
  # TODO check subclass
  var tmp = new QsciLexerTeXstyleBitsNeededProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_styleBitsNeeded(self: ptr cQsciLexerTeX, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerTeX_styleBitsNeeded ".} =
  var nimfunc = cast[ptr QsciLexerTeXstyleBitsNeededProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerTeXwordCharacters*(self: gen_qscilexertex_types.QsciLexerTeX, ): cstring =
  (fQsciLexerTeX_virtualbase_wordCharacters(self.h))

type QsciLexerTeXwordCharactersProc* = proc(): cstring
proc onwordCharacters*(self: gen_qscilexertex_types.QsciLexerTeX, slot: QsciLexerTeXwordCharactersProc) =
  # TODO check subclass
  var tmp = new QsciLexerTeXwordCharactersProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_wordCharacters(self: ptr cQsciLexerTeX, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerTeX_wordCharacters ".} =
  var nimfunc = cast[ptr QsciLexerTeXwordCharactersProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerTeXsetAutoIndentStyle*(self: gen_qscilexertex_types.QsciLexerTeX, autoindentstyle: cint): void =
  fQsciLexerTeX_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerTeXsetAutoIndentStyleProc* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: gen_qscilexertex_types.QsciLexerTeX, slot: QsciLexerTeXsetAutoIndentStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerTeXsetAutoIndentStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_setAutoIndentStyle(self: ptr cQsciLexerTeX, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerTeX_setAutoIndentStyle ".} =
  var nimfunc = cast[ptr QsciLexerTeXsetAutoIndentStyleProc](cast[pointer](slot))
  let slotval1 = autoindentstyle


  nimfunc[](slotval1)
proc QsciLexerTeXsetColor*(self: gen_qscilexertex_types.QsciLexerTeX, c: gen_qcolor.QColor, style: cint): void =
  fQsciLexerTeX_virtualbase_setColor(self.h, c.h, style)

type QsciLexerTeXsetColorProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: gen_qscilexertex_types.QsciLexerTeX, slot: QsciLexerTeXsetColorProc) =
  # TODO check subclass
  var tmp = new QsciLexerTeXsetColorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_setColor(self: ptr cQsciLexerTeX, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerTeX_setColor ".} =
  var nimfunc = cast[ptr QsciLexerTeXsetColorProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerTeXsetEolFill*(self: gen_qscilexertex_types.QsciLexerTeX, eoffill: bool, style: cint): void =
  fQsciLexerTeX_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerTeXsetEolFillProc* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: gen_qscilexertex_types.QsciLexerTeX, slot: QsciLexerTeXsetEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerTeXsetEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_setEolFill(self: ptr cQsciLexerTeX, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerTeX_setEolFill ".} =
  var nimfunc = cast[ptr QsciLexerTeXsetEolFillProc](cast[pointer](slot))
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerTeXsetFont*(self: gen_qscilexertex_types.QsciLexerTeX, f: gen_qfont.QFont, style: cint): void =
  fQsciLexerTeX_virtualbase_setFont(self.h, f.h, style)

type QsciLexerTeXsetFontProc* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: gen_qscilexertex_types.QsciLexerTeX, slot: QsciLexerTeXsetFontProc) =
  # TODO check subclass
  var tmp = new QsciLexerTeXsetFontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_setFont(self: ptr cQsciLexerTeX, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerTeX_setFont ".} =
  var nimfunc = cast[ptr QsciLexerTeXsetFontProc](cast[pointer](slot))
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerTeXsetPaper*(self: gen_qscilexertex_types.QsciLexerTeX, c: gen_qcolor.QColor, style: cint): void =
  fQsciLexerTeX_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerTeXsetPaperProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: gen_qscilexertex_types.QsciLexerTeX, slot: QsciLexerTeXsetPaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerTeXsetPaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_setPaper(self: ptr cQsciLexerTeX, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerTeX_setPaper ".} =
  var nimfunc = cast[ptr QsciLexerTeXsetPaperProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerTeXreadProperties*(self: gen_qscilexertex_types.QsciLexerTeX, qs: gen_qsettings.QSettings, prefix: string): bool =
  fQsciLexerTeX_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerTeXreadPropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: gen_qscilexertex_types.QsciLexerTeX, slot: QsciLexerTeXreadPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerTeXreadPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_readProperties(self: ptr cQsciLexerTeX, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerTeX_readProperties ".} =
  var nimfunc = cast[ptr QsciLexerTeXreadPropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerTeXwriteProperties*(self: gen_qscilexertex_types.QsciLexerTeX, qs: gen_qsettings.QSettings, prefix: string): bool =
  fQsciLexerTeX_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerTeXwritePropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: gen_qscilexertex_types.QsciLexerTeX, slot: QsciLexerTeXwritePropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerTeXwritePropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_writeProperties(self: ptr cQsciLexerTeX, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerTeX_writeProperties ".} =
  var nimfunc = cast[ptr QsciLexerTeXwritePropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerTeXevent*(self: gen_qscilexertex_types.QsciLexerTeX, event: gen_qcoreevent.QEvent): bool =
  fQsciLexerTeX_virtualbase_event(self.h, event.h)

type QsciLexerTeXeventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qscilexertex_types.QsciLexerTeX, slot: QsciLexerTeXeventProc) =
  # TODO check subclass
  var tmp = new QsciLexerTeXeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_event(self: ptr cQsciLexerTeX, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerTeX_event ".} =
  var nimfunc = cast[ptr QsciLexerTeXeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerTeXeventFilter*(self: gen_qscilexertex_types.QsciLexerTeX, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =
  fQsciLexerTeX_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerTeXeventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qscilexertex_types.QsciLexerTeX, slot: QsciLexerTeXeventFilterProc) =
  # TODO check subclass
  var tmp = new QsciLexerTeXeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_eventFilter(self: ptr cQsciLexerTeX, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerTeX_eventFilter ".} =
  var nimfunc = cast[ptr QsciLexerTeXeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerTeXtimerEvent*(self: gen_qscilexertex_types.QsciLexerTeX, event: gen_qcoreevent.QTimerEvent): void =
  fQsciLexerTeX_virtualbase_timerEvent(self.h, event.h)

type QsciLexerTeXtimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qscilexertex_types.QsciLexerTeX, slot: QsciLexerTeXtimerEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerTeXtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_timerEvent(self: ptr cQsciLexerTeX, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerTeX_timerEvent ".} =
  var nimfunc = cast[ptr QsciLexerTeXtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerTeXchildEvent*(self: gen_qscilexertex_types.QsciLexerTeX, event: gen_qcoreevent.QChildEvent): void =
  fQsciLexerTeX_virtualbase_childEvent(self.h, event.h)

type QsciLexerTeXchildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qscilexertex_types.QsciLexerTeX, slot: QsciLexerTeXchildEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerTeXchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_childEvent(self: ptr cQsciLexerTeX, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerTeX_childEvent ".} =
  var nimfunc = cast[ptr QsciLexerTeXchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerTeXcustomEvent*(self: gen_qscilexertex_types.QsciLexerTeX, event: gen_qcoreevent.QEvent): void =
  fQsciLexerTeX_virtualbase_customEvent(self.h, event.h)

type QsciLexerTeXcustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qscilexertex_types.QsciLexerTeX, slot: QsciLexerTeXcustomEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerTeXcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_customEvent(self: ptr cQsciLexerTeX, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerTeX_customEvent ".} =
  var nimfunc = cast[ptr QsciLexerTeXcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerTeXconnectNotify*(self: gen_qscilexertex_types.QsciLexerTeX, signal: gen_qmetaobject.QMetaMethod): void =
  fQsciLexerTeX_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerTeXconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qscilexertex_types.QsciLexerTeX, slot: QsciLexerTeXconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerTeXconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_connectNotify(self: ptr cQsciLexerTeX, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerTeX_connectNotify ".} =
  var nimfunc = cast[ptr QsciLexerTeXconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QsciLexerTeXdisconnectNotify*(self: gen_qscilexertex_types.QsciLexerTeX, signal: gen_qmetaobject.QMetaMethod): void =
  fQsciLexerTeX_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerTeXdisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qscilexertex_types.QsciLexerTeX, slot: QsciLexerTeXdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerTeXdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_disconnectNotify(self: ptr cQsciLexerTeX, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerTeX_disconnectNotify ".} =
  var nimfunc = cast[ptr QsciLexerTeXdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qscilexertex_types.QsciLexerTeX): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerTeX_staticMetaObject())
proc delete*(self: gen_qscilexertex_types.QsciLexerTeX) =
  fcQsciLexerTeX_delete(self.h)
