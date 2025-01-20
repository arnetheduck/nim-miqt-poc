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
{.compile("gen_qscilexerfortran77.cpp", cflags).}


type QsciLexerFortran77EnumEnum* = distinct cint
template Default*(_: type QsciLexerFortran77EnumEnum): untyped = 0
template Comment*(_: type QsciLexerFortran77EnumEnum): untyped = 1
template Number*(_: type QsciLexerFortran77EnumEnum): untyped = 2
template SingleQuotedString*(_: type QsciLexerFortran77EnumEnum): untyped = 3
template DoubleQuotedString*(_: type QsciLexerFortran77EnumEnum): untyped = 4
template UnclosedString*(_: type QsciLexerFortran77EnumEnum): untyped = 5
template Operator*(_: type QsciLexerFortran77EnumEnum): untyped = 6
template Identifier*(_: type QsciLexerFortran77EnumEnum): untyped = 7
template Keyword*(_: type QsciLexerFortran77EnumEnum): untyped = 8
template IntrinsicFunction*(_: type QsciLexerFortran77EnumEnum): untyped = 9
template ExtendedFunction*(_: type QsciLexerFortran77EnumEnum): untyped = 10
template PreProcessor*(_: type QsciLexerFortran77EnumEnum): untyped = 11
template DottedOperator*(_: type QsciLexerFortran77EnumEnum): untyped = 12
template Label*(_: type QsciLexerFortran77EnumEnum): untyped = 13
template Continuation*(_: type QsciLexerFortran77EnumEnum): untyped = 14


import gen_qscilexerfortran77_types
export gen_qscilexerfortran77_types

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

type cQsciLexerFortran77*{.exportc: "QsciLexerFortran77", incompleteStruct.} = object

proc fcQsciLexerFortran77_new(): ptr cQsciLexerFortran77 {.importc: "QsciLexerFortran77_new".}
proc fcQsciLexerFortran77_new2(parent: pointer): ptr cQsciLexerFortran77 {.importc: "QsciLexerFortran77_new2".}
proc fcQsciLexerFortran77_metaObject(self: pointer, ): pointer {.importc: "QsciLexerFortran77_metaObject".}
proc fcQsciLexerFortran77_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerFortran77_metacast".}
proc fcQsciLexerFortran77_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerFortran77_metacall".}
proc fcQsciLexerFortran77_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerFortran77_tr".}
proc fcQsciLexerFortran77_language(self: pointer, ): cstring {.importc: "QsciLexerFortran77_language".}
proc fcQsciLexerFortran77_lexer(self: pointer, ): cstring {.importc: "QsciLexerFortran77_lexer".}
proc fcQsciLexerFortran77_braceStyle(self: pointer, ): cint {.importc: "QsciLexerFortran77_braceStyle".}
proc fcQsciLexerFortran77_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerFortran77_defaultColor".}
proc fcQsciLexerFortran77_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerFortran77_defaultEolFill".}
proc fcQsciLexerFortran77_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerFortran77_defaultFont".}
proc fcQsciLexerFortran77_defaultPaper(self: pointer, style: cint): pointer {.importc: "QsciLexerFortran77_defaultPaper".}
proc fcQsciLexerFortran77_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerFortran77_keywords".}
proc fcQsciLexerFortran77_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerFortran77_description".}
proc fcQsciLexerFortran77_refreshProperties(self: pointer, ): void {.importc: "QsciLexerFortran77_refreshProperties".}
proc fcQsciLexerFortran77_foldCompact(self: pointer, ): bool {.importc: "QsciLexerFortran77_foldCompact".}
proc fcQsciLexerFortran77_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerFortran77_setFoldCompact".}
proc fcQsciLexerFortran77_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerFortran77_tr2".}
proc fcQsciLexerFortran77_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerFortran77_tr3".}
proc fQsciLexerFortran77_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QsciLexerFortran77_virtualbase_metaObject".}
proc fcQsciLexerFortran77_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_metaObject".}
proc fQsciLexerFortran77_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QsciLexerFortran77_virtualbase_metacast".}
proc fcQsciLexerFortran77_override_virtual_metacast(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_metacast".}
proc fQsciLexerFortran77_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciLexerFortran77_virtualbase_metacall".}
proc fcQsciLexerFortran77_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_metacall".}
proc fQsciLexerFortran77_virtualbase_setFoldCompact(self: pointer, fold: bool): void{.importc: "QsciLexerFortran77_virtualbase_setFoldCompact".}
proc fcQsciLexerFortran77_override_virtual_setFoldCompact(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_setFoldCompact".}
proc fcQsciLexerFortran77_override_virtual_language(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_language".}
proc fQsciLexerFortran77_virtualbase_lexer(self: pointer, ): cstring{.importc: "QsciLexerFortran77_virtualbase_lexer".}
proc fcQsciLexerFortran77_override_virtual_lexer(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_lexer".}
proc fQsciLexerFortran77_virtualbase_lexerId(self: pointer, ): cint{.importc: "QsciLexerFortran77_virtualbase_lexerId".}
proc fcQsciLexerFortran77_override_virtual_lexerId(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_lexerId".}
proc fQsciLexerFortran77_virtualbase_autoCompletionFillups(self: pointer, ): cstring{.importc: "QsciLexerFortran77_virtualbase_autoCompletionFillups".}
proc fcQsciLexerFortran77_override_virtual_autoCompletionFillups(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_autoCompletionFillups".}
proc fQsciLexerFortran77_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array{.importc: "QsciLexerFortran77_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerFortran77_override_virtual_autoCompletionWordSeparators(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_autoCompletionWordSeparators".}
proc fQsciLexerFortran77_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerFortran77_virtualbase_blockEnd".}
proc fcQsciLexerFortran77_override_virtual_blockEnd(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_blockEnd".}
proc fQsciLexerFortran77_virtualbase_blockLookback(self: pointer, ): cint{.importc: "QsciLexerFortran77_virtualbase_blockLookback".}
proc fcQsciLexerFortran77_override_virtual_blockLookback(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_blockLookback".}
proc fQsciLexerFortran77_virtualbase_blockStart(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerFortran77_virtualbase_blockStart".}
proc fcQsciLexerFortran77_override_virtual_blockStart(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_blockStart".}
proc fQsciLexerFortran77_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerFortran77_virtualbase_blockStartKeyword".}
proc fcQsciLexerFortran77_override_virtual_blockStartKeyword(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_blockStartKeyword".}
proc fQsciLexerFortran77_virtualbase_braceStyle(self: pointer, ): cint{.importc: "QsciLexerFortran77_virtualbase_braceStyle".}
proc fcQsciLexerFortran77_override_virtual_braceStyle(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_braceStyle".}
proc fQsciLexerFortran77_virtualbase_caseSensitive(self: pointer, ): bool{.importc: "QsciLexerFortran77_virtualbase_caseSensitive".}
proc fcQsciLexerFortran77_override_virtual_caseSensitive(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_caseSensitive".}
proc fQsciLexerFortran77_virtualbase_color(self: pointer, style: cint): pointer{.importc: "QsciLexerFortran77_virtualbase_color".}
proc fcQsciLexerFortran77_override_virtual_color(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_color".}
proc fQsciLexerFortran77_virtualbase_eolFill(self: pointer, style: cint): bool{.importc: "QsciLexerFortran77_virtualbase_eolFill".}
proc fcQsciLexerFortran77_override_virtual_eolFill(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_eolFill".}
proc fQsciLexerFortran77_virtualbase_font(self: pointer, style: cint): pointer{.importc: "QsciLexerFortran77_virtualbase_font".}
proc fcQsciLexerFortran77_override_virtual_font(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_font".}
proc fQsciLexerFortran77_virtualbase_indentationGuideView(self: pointer, ): cint{.importc: "QsciLexerFortran77_virtualbase_indentationGuideView".}
proc fcQsciLexerFortran77_override_virtual_indentationGuideView(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_indentationGuideView".}
proc fQsciLexerFortran77_virtualbase_keywords(self: pointer, set: cint): cstring{.importc: "QsciLexerFortran77_virtualbase_keywords".}
proc fcQsciLexerFortran77_override_virtual_keywords(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_keywords".}
proc fQsciLexerFortran77_virtualbase_defaultStyle(self: pointer, ): cint{.importc: "QsciLexerFortran77_virtualbase_defaultStyle".}
proc fcQsciLexerFortran77_override_virtual_defaultStyle(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_defaultStyle".}
proc fcQsciLexerFortran77_override_virtual_description(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_description".}
proc fQsciLexerFortran77_virtualbase_paper(self: pointer, style: cint): pointer{.importc: "QsciLexerFortran77_virtualbase_paper".}
proc fcQsciLexerFortran77_override_virtual_paper(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_paper".}
proc fQsciLexerFortran77_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerFortran77_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerFortran77_override_virtual_defaultColorWithStyle(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_defaultColorWithStyle".}
proc fQsciLexerFortran77_virtualbase_defaultEolFill(self: pointer, style: cint): bool{.importc: "QsciLexerFortran77_virtualbase_defaultEolFill".}
proc fcQsciLexerFortran77_override_virtual_defaultEolFill(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_defaultEolFill".}
proc fQsciLexerFortran77_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerFortran77_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerFortran77_override_virtual_defaultFontWithStyle(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_defaultFontWithStyle".}
proc fQsciLexerFortran77_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerFortran77_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerFortran77_override_virtual_defaultPaperWithStyle(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_defaultPaperWithStyle".}
proc fQsciLexerFortran77_virtualbase_setEditor(self: pointer, editor: pointer): void{.importc: "QsciLexerFortran77_virtualbase_setEditor".}
proc fcQsciLexerFortran77_override_virtual_setEditor(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_setEditor".}
proc fQsciLexerFortran77_virtualbase_refreshProperties(self: pointer, ): void{.importc: "QsciLexerFortran77_virtualbase_refreshProperties".}
proc fcQsciLexerFortran77_override_virtual_refreshProperties(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_refreshProperties".}
proc fQsciLexerFortran77_virtualbase_styleBitsNeeded(self: pointer, ): cint{.importc: "QsciLexerFortran77_virtualbase_styleBitsNeeded".}
proc fcQsciLexerFortran77_override_virtual_styleBitsNeeded(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_styleBitsNeeded".}
proc fQsciLexerFortran77_virtualbase_wordCharacters(self: pointer, ): cstring{.importc: "QsciLexerFortran77_virtualbase_wordCharacters".}
proc fcQsciLexerFortran77_override_virtual_wordCharacters(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_wordCharacters".}
proc fQsciLexerFortran77_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void{.importc: "QsciLexerFortran77_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerFortran77_override_virtual_setAutoIndentStyle(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_setAutoIndentStyle".}
proc fQsciLexerFortran77_virtualbase_setColor(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerFortran77_virtualbase_setColor".}
proc fcQsciLexerFortran77_override_virtual_setColor(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_setColor".}
proc fQsciLexerFortran77_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void{.importc: "QsciLexerFortran77_virtualbase_setEolFill".}
proc fcQsciLexerFortran77_override_virtual_setEolFill(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_setEolFill".}
proc fQsciLexerFortran77_virtualbase_setFont(self: pointer, f: pointer, style: cint): void{.importc: "QsciLexerFortran77_virtualbase_setFont".}
proc fcQsciLexerFortran77_override_virtual_setFont(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_setFont".}
proc fQsciLexerFortran77_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerFortran77_virtualbase_setPaper".}
proc fcQsciLexerFortran77_override_virtual_setPaper(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_setPaper".}
proc fQsciLexerFortran77_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerFortran77_virtualbase_readProperties".}
proc fcQsciLexerFortran77_override_virtual_readProperties(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_readProperties".}
proc fQsciLexerFortran77_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerFortran77_virtualbase_writeProperties".}
proc fcQsciLexerFortran77_override_virtual_writeProperties(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_writeProperties".}
proc fQsciLexerFortran77_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QsciLexerFortran77_virtualbase_event".}
proc fcQsciLexerFortran77_override_virtual_event(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_event".}
proc fQsciLexerFortran77_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciLexerFortran77_virtualbase_eventFilter".}
proc fcQsciLexerFortran77_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_eventFilter".}
proc fQsciLexerFortran77_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciLexerFortran77_virtualbase_timerEvent".}
proc fcQsciLexerFortran77_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_timerEvent".}
proc fQsciLexerFortran77_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciLexerFortran77_virtualbase_childEvent".}
proc fcQsciLexerFortran77_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_childEvent".}
proc fQsciLexerFortran77_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciLexerFortran77_virtualbase_customEvent".}
proc fcQsciLexerFortran77_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_customEvent".}
proc fQsciLexerFortran77_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerFortran77_virtualbase_connectNotify".}
proc fcQsciLexerFortran77_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_connectNotify".}
proc fQsciLexerFortran77_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerFortran77_virtualbase_disconnectNotify".}
proc fcQsciLexerFortran77_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_disconnectNotify".}
proc fcQsciLexerFortran77_staticMetaObject(): pointer {.importc: "QsciLexerFortran77_staticMetaObject".}
proc fcQsciLexerFortran77_delete(self: pointer) {.importc: "QsciLexerFortran77_delete".}


func init*(T: type gen_qscilexerfortran77_types.QsciLexerFortran77, h: ptr cQsciLexerFortran77): gen_qscilexerfortran77_types.QsciLexerFortran77 =
  T(h: h)
proc create*(T: type gen_qscilexerfortran77_types.QsciLexerFortran77, ): gen_qscilexerfortran77_types.QsciLexerFortran77 =

  gen_qscilexerfortran77_types.QsciLexerFortran77.init(fcQsciLexerFortran77_new())
proc create*(T: type gen_qscilexerfortran77_types.QsciLexerFortran77, parent: gen_qobject.QObject): gen_qscilexerfortran77_types.QsciLexerFortran77 =

  gen_qscilexerfortran77_types.QsciLexerFortran77.init(fcQsciLexerFortran77_new2(parent.h))
proc metaObject*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQsciLexerFortran77_metaObject(self.h))

proc metacast*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, param1: cstring): pointer =

  fcQsciLexerFortran77_metacast(self.h, param1)

proc metacall*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, param1: cint, param2: cint, param3: pointer): cint =

  fcQsciLexerFortran77_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexerfortran77_types.QsciLexerFortran77, s: cstring): string =

  let v_ms = fcQsciLexerFortran77_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, ): cstring =

  (fcQsciLexerFortran77_language(self.h))

proc lexer*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, ): cstring =

  (fcQsciLexerFortran77_lexer(self.h))

proc braceStyle*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, ): cint =

  fcQsciLexerFortran77_braceStyle(self.h)

proc defaultColor*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerFortran77_defaultColor(self.h, style))

proc defaultEolFill*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, style: cint): bool =

  fcQsciLexerFortran77_defaultEolFill(self.h, style)

proc defaultFont*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQsciLexerFortran77_defaultFont(self.h, style))

proc defaultPaper*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerFortran77_defaultPaper(self.h, style))

proc keywords*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, set: cint): cstring =

  (fcQsciLexerFortran77_keywords(self.h, set))

proc description*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, style: cint): string =

  let v_ms = fcQsciLexerFortran77_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, ): void =

  fcQsciLexerFortran77_refreshProperties(self.h)

proc foldCompact*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, ): bool =

  fcQsciLexerFortran77_foldCompact(self.h)

proc setFoldCompact*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, fold: bool): void =

  fcQsciLexerFortran77_setFoldCompact(self.h, fold)

proc tr2*(_: type gen_qscilexerfortran77_types.QsciLexerFortran77, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerFortran77_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type gen_qscilexerfortran77_types.QsciLexerFortran77, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerFortran77_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QsciLexerFortran77metaObject*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fQsciLexerFortran77_virtualbase_metaObject(self.h))

type QsciLexerFortran77metaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, slot: QsciLexerFortran77metaObjectProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortran77metaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_metaObject(self: ptr cQsciLexerFortran77, slot: int): pointer {.exportc: "miqt_exec_callback_QsciLexerFortran77_metaObject ".} =
  var nimfunc = cast[ptr QsciLexerFortran77metaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QsciLexerFortran77metacast*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, param1: cstring): pointer =

  fQsciLexerFortran77_virtualbase_metacast(self.h, param1)

type QsciLexerFortran77metacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, slot: QsciLexerFortran77metacastProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortran77metacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_metacast(self: ptr cQsciLexerFortran77, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciLexerFortran77_metacast ".} =
  var nimfunc = cast[ptr QsciLexerFortran77metacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerFortran77metacall*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, param1: cint, param2: cint, param3: pointer): cint =

  fQsciLexerFortran77_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerFortran77metacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, slot: QsciLexerFortran77metacallProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortran77metacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_metacall(self: ptr cQsciLexerFortran77, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerFortran77_metacall ".} =
  var nimfunc = cast[ptr QsciLexerFortran77metacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QsciLexerFortran77setFoldCompact*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, fold: bool): void =

  fQsciLexerFortran77_virtualbase_setFoldCompact(self.h, fold)

type QsciLexerFortran77setFoldCompactProc* = proc(fold: bool): void
proc onsetFoldCompact*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, slot: QsciLexerFortran77setFoldCompactProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortran77setFoldCompactProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_setFoldCompact(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_setFoldCompact(self: ptr cQsciLexerFortran77, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerFortran77_setFoldCompact ".} =
  var nimfunc = cast[ptr QsciLexerFortran77setFoldCompactProc](cast[pointer](slot))
  let slotval1 = fold


  nimfunc[](slotval1)
type QsciLexerFortran77languageProc* = proc(): cstring
proc onlanguage*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, slot: QsciLexerFortran77languageProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortran77languageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_language(self: ptr cQsciLexerFortran77, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerFortran77_language ".} =
  var nimfunc = cast[ptr QsciLexerFortran77languageProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerFortran77lexer*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, ): cstring =

  (fQsciLexerFortran77_virtualbase_lexer(self.h))

type QsciLexerFortran77lexerProc* = proc(): cstring
proc onlexer*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, slot: QsciLexerFortran77lexerProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortran77lexerProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_lexer(self: ptr cQsciLexerFortran77, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerFortran77_lexer ".} =
  var nimfunc = cast[ptr QsciLexerFortran77lexerProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerFortran77lexerId*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, ): cint =

  fQsciLexerFortran77_virtualbase_lexerId(self.h)

type QsciLexerFortran77lexerIdProc* = proc(): cint
proc onlexerId*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, slot: QsciLexerFortran77lexerIdProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortran77lexerIdProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_lexerId(self: ptr cQsciLexerFortran77, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerFortran77_lexerId ".} =
  var nimfunc = cast[ptr QsciLexerFortran77lexerIdProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerFortran77autoCompletionFillups*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, ): cstring =

  (fQsciLexerFortran77_virtualbase_autoCompletionFillups(self.h))

type QsciLexerFortran77autoCompletionFillupsProc* = proc(): cstring
proc onautoCompletionFillups*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, slot: QsciLexerFortran77autoCompletionFillupsProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortran77autoCompletionFillupsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_autoCompletionFillups(self: ptr cQsciLexerFortran77, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerFortran77_autoCompletionFillups ".} =
  var nimfunc = cast[ptr QsciLexerFortran77autoCompletionFillupsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerFortran77autoCompletionWordSeparators*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, ): seq[string] =

  var v_ma = fQsciLexerFortran77_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerFortran77autoCompletionWordSeparatorsProc* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, slot: QsciLexerFortran77autoCompletionWordSeparatorsProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortran77autoCompletionWordSeparatorsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_autoCompletionWordSeparators(self: ptr cQsciLexerFortran77, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerFortran77_autoCompletionWordSeparators ".} =
  var nimfunc = cast[ptr QsciLexerFortran77autoCompletionWordSeparatorsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QsciLexerFortran77blockEnd*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, style: ptr cint): cstring =

  (fQsciLexerFortran77_virtualbase_blockEnd(self.h, style))

type QsciLexerFortran77blockEndProc* = proc(style: ptr cint): cstring
proc onblockEnd*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, slot: QsciLexerFortran77blockEndProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortran77blockEndProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_blockEnd(self: ptr cQsciLexerFortran77, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerFortran77_blockEnd ".} =
  var nimfunc = cast[ptr QsciLexerFortran77blockEndProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerFortran77blockLookback*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, ): cint =

  fQsciLexerFortran77_virtualbase_blockLookback(self.h)

type QsciLexerFortran77blockLookbackProc* = proc(): cint
proc onblockLookback*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, slot: QsciLexerFortran77blockLookbackProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortran77blockLookbackProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_blockLookback(self: ptr cQsciLexerFortran77, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerFortran77_blockLookback ".} =
  var nimfunc = cast[ptr QsciLexerFortran77blockLookbackProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerFortran77blockStart*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, style: ptr cint): cstring =

  (fQsciLexerFortran77_virtualbase_blockStart(self.h, style))

type QsciLexerFortran77blockStartProc* = proc(style: ptr cint): cstring
proc onblockStart*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, slot: QsciLexerFortran77blockStartProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortran77blockStartProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_blockStart(self: ptr cQsciLexerFortran77, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerFortran77_blockStart ".} =
  var nimfunc = cast[ptr QsciLexerFortran77blockStartProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerFortran77blockStartKeyword*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, style: ptr cint): cstring =

  (fQsciLexerFortran77_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerFortran77blockStartKeywordProc* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, slot: QsciLexerFortran77blockStartKeywordProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortran77blockStartKeywordProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_blockStartKeyword(self: ptr cQsciLexerFortran77, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerFortran77_blockStartKeyword ".} =
  var nimfunc = cast[ptr QsciLexerFortran77blockStartKeywordProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerFortran77braceStyle*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, ): cint =

  fQsciLexerFortran77_virtualbase_braceStyle(self.h)

type QsciLexerFortran77braceStyleProc* = proc(): cint
proc onbraceStyle*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, slot: QsciLexerFortran77braceStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortran77braceStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_braceStyle(self: ptr cQsciLexerFortran77, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerFortran77_braceStyle ".} =
  var nimfunc = cast[ptr QsciLexerFortran77braceStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerFortran77caseSensitive*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, ): bool =

  fQsciLexerFortran77_virtualbase_caseSensitive(self.h)

type QsciLexerFortran77caseSensitiveProc* = proc(): bool
proc oncaseSensitive*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, slot: QsciLexerFortran77caseSensitiveProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortran77caseSensitiveProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_caseSensitive(self: ptr cQsciLexerFortran77, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerFortran77_caseSensitive ".} =
  var nimfunc = cast[ptr QsciLexerFortran77caseSensitiveProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerFortran77color*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fQsciLexerFortran77_virtualbase_color(self.h, style))

type QsciLexerFortran77colorProc* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, slot: QsciLexerFortran77colorProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortran77colorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_color(self: ptr cQsciLexerFortran77, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerFortran77_color ".} =
  var nimfunc = cast[ptr QsciLexerFortran77colorProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerFortran77eolFill*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, style: cint): bool =

  fQsciLexerFortran77_virtualbase_eolFill(self.h, style)

type QsciLexerFortran77eolFillProc* = proc(style: cint): bool
proc oneolFill*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, slot: QsciLexerFortran77eolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortran77eolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_eolFill(self: ptr cQsciLexerFortran77, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerFortran77_eolFill ".} =
  var nimfunc = cast[ptr QsciLexerFortran77eolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerFortran77font*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fQsciLexerFortran77_virtualbase_font(self.h, style))

type QsciLexerFortran77fontProc* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, slot: QsciLexerFortran77fontProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortran77fontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_font(self: ptr cQsciLexerFortran77, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerFortran77_font ".} =
  var nimfunc = cast[ptr QsciLexerFortran77fontProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerFortran77indentationGuideView*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, ): cint =

  fQsciLexerFortran77_virtualbase_indentationGuideView(self.h)

type QsciLexerFortran77indentationGuideViewProc* = proc(): cint
proc onindentationGuideView*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, slot: QsciLexerFortran77indentationGuideViewProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortran77indentationGuideViewProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_indentationGuideView(self: ptr cQsciLexerFortran77, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerFortran77_indentationGuideView ".} =
  var nimfunc = cast[ptr QsciLexerFortran77indentationGuideViewProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerFortran77keywords*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, set: cint): cstring =

  (fQsciLexerFortran77_virtualbase_keywords(self.h, set))

type QsciLexerFortran77keywordsProc* = proc(set: cint): cstring
proc onkeywords*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, slot: QsciLexerFortran77keywordsProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortran77keywordsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_keywords(self: ptr cQsciLexerFortran77, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerFortran77_keywords ".} =
  var nimfunc = cast[ptr QsciLexerFortran77keywordsProc](cast[pointer](slot))
  let slotval1 = set


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerFortran77defaultStyle*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, ): cint =

  fQsciLexerFortran77_virtualbase_defaultStyle(self.h)

type QsciLexerFortran77defaultStyleProc* = proc(): cint
proc ondefaultStyle*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, slot: QsciLexerFortran77defaultStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortran77defaultStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_defaultStyle(self: ptr cQsciLexerFortran77, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerFortran77_defaultStyle ".} =
  var nimfunc = cast[ptr QsciLexerFortran77defaultStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QsciLexerFortran77descriptionProc* = proc(style: cint): string
proc ondescription*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, slot: QsciLexerFortran77descriptionProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortran77descriptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_description(self: ptr cQsciLexerFortran77, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerFortran77_description ".} =
  var nimfunc = cast[ptr QsciLexerFortran77descriptionProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc QsciLexerFortran77paper*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fQsciLexerFortran77_virtualbase_paper(self.h, style))

type QsciLexerFortran77paperProc* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, slot: QsciLexerFortran77paperProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortran77paperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_paper(self: ptr cQsciLexerFortran77, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerFortran77_paper ".} =
  var nimfunc = cast[ptr QsciLexerFortran77paperProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerFortran77defaultColorWithStyle*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fQsciLexerFortran77_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerFortran77defaultColorWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColorWithStyle*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, slot: QsciLexerFortran77defaultColorWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortran77defaultColorWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_defaultColorWithStyle(self: ptr cQsciLexerFortran77, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerFortran77_defaultColorWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerFortran77defaultColorWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerFortran77defaultEolFill*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, style: cint): bool =

  fQsciLexerFortran77_virtualbase_defaultEolFill(self.h, style)

type QsciLexerFortran77defaultEolFillProc* = proc(style: cint): bool
proc ondefaultEolFill*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, slot: QsciLexerFortran77defaultEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortran77defaultEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_defaultEolFill(self: ptr cQsciLexerFortran77, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerFortran77_defaultEolFill ".} =
  var nimfunc = cast[ptr QsciLexerFortran77defaultEolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerFortran77defaultFontWithStyle*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fQsciLexerFortran77_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerFortran77defaultFontWithStyleProc* = proc(style: cint): gen_qfont.QFont
proc ondefaultFontWithStyle*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, slot: QsciLexerFortran77defaultFontWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortran77defaultFontWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_defaultFontWithStyle(self: ptr cQsciLexerFortran77, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerFortran77_defaultFontWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerFortran77defaultFontWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerFortran77defaultPaperWithStyle*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fQsciLexerFortran77_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerFortran77defaultPaperWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaperWithStyle*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, slot: QsciLexerFortran77defaultPaperWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortran77defaultPaperWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_defaultPaperWithStyle(self: ptr cQsciLexerFortran77, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerFortran77_defaultPaperWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerFortran77defaultPaperWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerFortran77setEditor*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, editor: gen_qsciscintilla.QsciScintilla): void =

  fQsciLexerFortran77_virtualbase_setEditor(self.h, editor.h)

type QsciLexerFortran77setEditorProc* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, slot: QsciLexerFortran77setEditorProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortran77setEditorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_setEditor(self: ptr cQsciLexerFortran77, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerFortran77_setEditor ".} =
  var nimfunc = cast[ptr QsciLexerFortran77setEditorProc](cast[pointer](slot))
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](slotval1)
proc QsciLexerFortran77refreshProperties*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, ): void =

  fQsciLexerFortran77_virtualbase_refreshProperties(self.h)

type QsciLexerFortran77refreshPropertiesProc* = proc(): void
proc onrefreshProperties*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, slot: QsciLexerFortran77refreshPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortran77refreshPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_refreshProperties(self: ptr cQsciLexerFortran77, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerFortran77_refreshProperties ".} =
  var nimfunc = cast[ptr QsciLexerFortran77refreshPropertiesProc](cast[pointer](slot))

  nimfunc[]()
proc QsciLexerFortran77styleBitsNeeded*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, ): cint =

  fQsciLexerFortran77_virtualbase_styleBitsNeeded(self.h)

type QsciLexerFortran77styleBitsNeededProc* = proc(): cint
proc onstyleBitsNeeded*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, slot: QsciLexerFortran77styleBitsNeededProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortran77styleBitsNeededProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_styleBitsNeeded(self: ptr cQsciLexerFortran77, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerFortran77_styleBitsNeeded ".} =
  var nimfunc = cast[ptr QsciLexerFortran77styleBitsNeededProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerFortran77wordCharacters*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, ): cstring =

  (fQsciLexerFortran77_virtualbase_wordCharacters(self.h))

type QsciLexerFortran77wordCharactersProc* = proc(): cstring
proc onwordCharacters*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, slot: QsciLexerFortran77wordCharactersProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortran77wordCharactersProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_wordCharacters(self: ptr cQsciLexerFortran77, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerFortran77_wordCharacters ".} =
  var nimfunc = cast[ptr QsciLexerFortran77wordCharactersProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerFortran77setAutoIndentStyle*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, autoindentstyle: cint): void =

  fQsciLexerFortran77_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerFortran77setAutoIndentStyleProc* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, slot: QsciLexerFortran77setAutoIndentStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortran77setAutoIndentStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_setAutoIndentStyle(self: ptr cQsciLexerFortran77, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerFortran77_setAutoIndentStyle ".} =
  var nimfunc = cast[ptr QsciLexerFortran77setAutoIndentStyleProc](cast[pointer](slot))
  let slotval1 = autoindentstyle


  nimfunc[](slotval1)
proc QsciLexerFortran77setColor*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, c: gen_qcolor.QColor, style: cint): void =

  fQsciLexerFortran77_virtualbase_setColor(self.h, c.h, style)

type QsciLexerFortran77setColorProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, slot: QsciLexerFortran77setColorProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortran77setColorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_setColor(self: ptr cQsciLexerFortran77, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerFortran77_setColor ".} =
  var nimfunc = cast[ptr QsciLexerFortran77setColorProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerFortran77setEolFill*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, eoffill: bool, style: cint): void =

  fQsciLexerFortran77_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerFortran77setEolFillProc* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, slot: QsciLexerFortran77setEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortran77setEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_setEolFill(self: ptr cQsciLexerFortran77, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerFortran77_setEolFill ".} =
  var nimfunc = cast[ptr QsciLexerFortran77setEolFillProc](cast[pointer](slot))
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerFortran77setFont*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, f: gen_qfont.QFont, style: cint): void =

  fQsciLexerFortran77_virtualbase_setFont(self.h, f.h, style)

type QsciLexerFortran77setFontProc* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, slot: QsciLexerFortran77setFontProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortran77setFontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_setFont(self: ptr cQsciLexerFortran77, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerFortran77_setFont ".} =
  var nimfunc = cast[ptr QsciLexerFortran77setFontProc](cast[pointer](slot))
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerFortran77setPaper*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, c: gen_qcolor.QColor, style: cint): void =

  fQsciLexerFortran77_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerFortran77setPaperProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, slot: QsciLexerFortran77setPaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortran77setPaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_setPaper(self: ptr cQsciLexerFortran77, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerFortran77_setPaper ".} =
  var nimfunc = cast[ptr QsciLexerFortran77setPaperProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerFortran77readProperties*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, qs: gen_qsettings.QSettings, prefix: string): bool =

  fQsciLexerFortran77_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerFortran77readPropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, slot: QsciLexerFortran77readPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortran77readPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_readProperties(self: ptr cQsciLexerFortran77, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerFortran77_readProperties ".} =
  var nimfunc = cast[ptr QsciLexerFortran77readPropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerFortran77writeProperties*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, qs: gen_qsettings.QSettings, prefix: string): bool =

  fQsciLexerFortran77_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerFortran77writePropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, slot: QsciLexerFortran77writePropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortran77writePropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_writeProperties(self: ptr cQsciLexerFortran77, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerFortran77_writeProperties ".} =
  var nimfunc = cast[ptr QsciLexerFortran77writePropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerFortran77event*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, event: gen_qcoreevent.QEvent): bool =

  fQsciLexerFortran77_virtualbase_event(self.h, event.h)

type QsciLexerFortran77eventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, slot: QsciLexerFortran77eventProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortran77eventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_event(self: ptr cQsciLexerFortran77, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerFortran77_event ".} =
  var nimfunc = cast[ptr QsciLexerFortran77eventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerFortran77eventFilter*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =

  fQsciLexerFortran77_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerFortran77eventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, slot: QsciLexerFortran77eventFilterProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortran77eventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_eventFilter(self: ptr cQsciLexerFortran77, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerFortran77_eventFilter ".} =
  var nimfunc = cast[ptr QsciLexerFortran77eventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerFortran77timerEvent*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, event: gen_qcoreevent.QTimerEvent): void =

  fQsciLexerFortran77_virtualbase_timerEvent(self.h, event.h)

type QsciLexerFortran77timerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, slot: QsciLexerFortran77timerEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortran77timerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_timerEvent(self: ptr cQsciLexerFortran77, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerFortran77_timerEvent ".} =
  var nimfunc = cast[ptr QsciLexerFortran77timerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerFortran77childEvent*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, event: gen_qcoreevent.QChildEvent): void =

  fQsciLexerFortran77_virtualbase_childEvent(self.h, event.h)

type QsciLexerFortran77childEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, slot: QsciLexerFortran77childEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortran77childEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_childEvent(self: ptr cQsciLexerFortran77, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerFortran77_childEvent ".} =
  var nimfunc = cast[ptr QsciLexerFortran77childEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerFortran77customEvent*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, event: gen_qcoreevent.QEvent): void =

  fQsciLexerFortran77_virtualbase_customEvent(self.h, event.h)

type QsciLexerFortran77customEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, slot: QsciLexerFortran77customEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortran77customEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_customEvent(self: ptr cQsciLexerFortran77, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerFortran77_customEvent ".} =
  var nimfunc = cast[ptr QsciLexerFortran77customEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerFortran77connectNotify*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, signal: gen_qmetaobject.QMetaMethod): void =

  fQsciLexerFortran77_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerFortran77connectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, slot: QsciLexerFortran77connectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortran77connectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_connectNotify(self: ptr cQsciLexerFortran77, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerFortran77_connectNotify ".} =
  var nimfunc = cast[ptr QsciLexerFortran77connectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QsciLexerFortran77disconnectNotify*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, signal: gen_qmetaobject.QMetaMethod): void =

  fQsciLexerFortran77_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerFortran77disconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, slot: QsciLexerFortran77disconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortran77disconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_disconnectNotify(self: ptr cQsciLexerFortran77, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerFortran77_disconnectNotify ".} =
  var nimfunc = cast[ptr QsciLexerFortran77disconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qscilexerfortran77_types.QsciLexerFortran77): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerFortran77_staticMetaObject())
proc delete*(self: gen_qscilexerfortran77_types.QsciLexerFortran77) =
  fcQsciLexerFortran77_delete(self.h)
