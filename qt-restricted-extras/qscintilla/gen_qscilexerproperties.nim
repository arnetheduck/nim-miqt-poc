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
{.compile("gen_qscilexerproperties.cpp", cflags).}


type QsciLexerPropertiesEnumEnum* = distinct cint
template Default*(_: type QsciLexerPropertiesEnumEnum): untyped = 0
template Comment*(_: type QsciLexerPropertiesEnumEnum): untyped = 1
template Section*(_: type QsciLexerPropertiesEnumEnum): untyped = 2
template Assignment*(_: type QsciLexerPropertiesEnumEnum): untyped = 3
template DefaultValue*(_: type QsciLexerPropertiesEnumEnum): untyped = 4
template Key*(_: type QsciLexerPropertiesEnumEnum): untyped = 5


import gen_qscilexerproperties_types
export gen_qscilexerproperties_types

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

type cQsciLexerProperties*{.exportc: "QsciLexerProperties", incompleteStruct.} = object

proc fcQsciLexerProperties_new(): ptr cQsciLexerProperties {.importc: "QsciLexerProperties_new".}
proc fcQsciLexerProperties_new2(parent: pointer): ptr cQsciLexerProperties {.importc: "QsciLexerProperties_new2".}
proc fcQsciLexerProperties_metaObject(self: pointer, ): pointer {.importc: "QsciLexerProperties_metaObject".}
proc fcQsciLexerProperties_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerProperties_metacast".}
proc fcQsciLexerProperties_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerProperties_metacall".}
proc fcQsciLexerProperties_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerProperties_tr".}
proc fcQsciLexerProperties_trUtf8(s: cstring): struct_miqt_string {.importc: "QsciLexerProperties_trUtf8".}
proc fcQsciLexerProperties_language(self: pointer, ): cstring {.importc: "QsciLexerProperties_language".}
proc fcQsciLexerProperties_lexer(self: pointer, ): cstring {.importc: "QsciLexerProperties_lexer".}
proc fcQsciLexerProperties_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerProperties_wordCharacters".}
proc fcQsciLexerProperties_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerProperties_defaultColor".}
proc fcQsciLexerProperties_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerProperties_defaultEolFill".}
proc fcQsciLexerProperties_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerProperties_defaultFont".}
proc fcQsciLexerProperties_defaultPaper(self: pointer, style: cint): pointer {.importc: "QsciLexerProperties_defaultPaper".}
proc fcQsciLexerProperties_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerProperties_description".}
proc fcQsciLexerProperties_refreshProperties(self: pointer, ): void {.importc: "QsciLexerProperties_refreshProperties".}
proc fcQsciLexerProperties_foldCompact(self: pointer, ): bool {.importc: "QsciLexerProperties_foldCompact".}
proc fcQsciLexerProperties_setInitialSpaces(self: pointer, enable: bool): void {.importc: "QsciLexerProperties_setInitialSpaces".}
proc fcQsciLexerProperties_initialSpaces(self: pointer, ): bool {.importc: "QsciLexerProperties_initialSpaces".}
proc fcQsciLexerProperties_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerProperties_setFoldCompact".}
proc fcQsciLexerProperties_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerProperties_tr2".}
proc fcQsciLexerProperties_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerProperties_tr3".}
proc fcQsciLexerProperties_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerProperties_trUtf82".}
proc fcQsciLexerProperties_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerProperties_trUtf83".}
proc fQsciLexerProperties_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QsciLexerProperties_virtualbase_metaObject".}
proc fcQsciLexerProperties_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_metaObject".}
proc fQsciLexerProperties_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QsciLexerProperties_virtualbase_metacast".}
proc fcQsciLexerProperties_override_virtual_metacast(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_metacast".}
proc fQsciLexerProperties_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciLexerProperties_virtualbase_metacall".}
proc fcQsciLexerProperties_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_metacall".}
proc fQsciLexerProperties_virtualbase_setFoldCompact(self: pointer, fold: bool): void{.importc: "QsciLexerProperties_virtualbase_setFoldCompact".}
proc fcQsciLexerProperties_override_virtual_setFoldCompact(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_setFoldCompact".}
proc fcQsciLexerProperties_override_virtual_language(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_language".}
proc fQsciLexerProperties_virtualbase_lexer(self: pointer, ): cstring{.importc: "QsciLexerProperties_virtualbase_lexer".}
proc fcQsciLexerProperties_override_virtual_lexer(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_lexer".}
proc fQsciLexerProperties_virtualbase_lexerId(self: pointer, ): cint{.importc: "QsciLexerProperties_virtualbase_lexerId".}
proc fcQsciLexerProperties_override_virtual_lexerId(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_lexerId".}
proc fQsciLexerProperties_virtualbase_autoCompletionFillups(self: pointer, ): cstring{.importc: "QsciLexerProperties_virtualbase_autoCompletionFillups".}
proc fcQsciLexerProperties_override_virtual_autoCompletionFillups(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_autoCompletionFillups".}
proc fQsciLexerProperties_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array{.importc: "QsciLexerProperties_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerProperties_override_virtual_autoCompletionWordSeparators(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_autoCompletionWordSeparators".}
proc fQsciLexerProperties_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerProperties_virtualbase_blockEnd".}
proc fcQsciLexerProperties_override_virtual_blockEnd(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_blockEnd".}
proc fQsciLexerProperties_virtualbase_blockLookback(self: pointer, ): cint{.importc: "QsciLexerProperties_virtualbase_blockLookback".}
proc fcQsciLexerProperties_override_virtual_blockLookback(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_blockLookback".}
proc fQsciLexerProperties_virtualbase_blockStart(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerProperties_virtualbase_blockStart".}
proc fcQsciLexerProperties_override_virtual_blockStart(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_blockStart".}
proc fQsciLexerProperties_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerProperties_virtualbase_blockStartKeyword".}
proc fcQsciLexerProperties_override_virtual_blockStartKeyword(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_blockStartKeyword".}
proc fQsciLexerProperties_virtualbase_braceStyle(self: pointer, ): cint{.importc: "QsciLexerProperties_virtualbase_braceStyle".}
proc fcQsciLexerProperties_override_virtual_braceStyle(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_braceStyle".}
proc fQsciLexerProperties_virtualbase_caseSensitive(self: pointer, ): bool{.importc: "QsciLexerProperties_virtualbase_caseSensitive".}
proc fcQsciLexerProperties_override_virtual_caseSensitive(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_caseSensitive".}
proc fQsciLexerProperties_virtualbase_color(self: pointer, style: cint): pointer{.importc: "QsciLexerProperties_virtualbase_color".}
proc fcQsciLexerProperties_override_virtual_color(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_color".}
proc fQsciLexerProperties_virtualbase_eolFill(self: pointer, style: cint): bool{.importc: "QsciLexerProperties_virtualbase_eolFill".}
proc fcQsciLexerProperties_override_virtual_eolFill(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_eolFill".}
proc fQsciLexerProperties_virtualbase_font(self: pointer, style: cint): pointer{.importc: "QsciLexerProperties_virtualbase_font".}
proc fcQsciLexerProperties_override_virtual_font(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_font".}
proc fQsciLexerProperties_virtualbase_indentationGuideView(self: pointer, ): cint{.importc: "QsciLexerProperties_virtualbase_indentationGuideView".}
proc fcQsciLexerProperties_override_virtual_indentationGuideView(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_indentationGuideView".}
proc fQsciLexerProperties_virtualbase_keywords(self: pointer, set: cint): cstring{.importc: "QsciLexerProperties_virtualbase_keywords".}
proc fcQsciLexerProperties_override_virtual_keywords(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_keywords".}
proc fQsciLexerProperties_virtualbase_defaultStyle(self: pointer, ): cint{.importc: "QsciLexerProperties_virtualbase_defaultStyle".}
proc fcQsciLexerProperties_override_virtual_defaultStyle(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_defaultStyle".}
proc fcQsciLexerProperties_override_virtual_description(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_description".}
proc fQsciLexerProperties_virtualbase_paper(self: pointer, style: cint): pointer{.importc: "QsciLexerProperties_virtualbase_paper".}
proc fcQsciLexerProperties_override_virtual_paper(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_paper".}
proc fQsciLexerProperties_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerProperties_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerProperties_override_virtual_defaultColorWithStyle(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_defaultColorWithStyle".}
proc fQsciLexerProperties_virtualbase_defaultEolFill(self: pointer, style: cint): bool{.importc: "QsciLexerProperties_virtualbase_defaultEolFill".}
proc fcQsciLexerProperties_override_virtual_defaultEolFill(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_defaultEolFill".}
proc fQsciLexerProperties_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerProperties_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerProperties_override_virtual_defaultFontWithStyle(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_defaultFontWithStyle".}
proc fQsciLexerProperties_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerProperties_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerProperties_override_virtual_defaultPaperWithStyle(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_defaultPaperWithStyle".}
proc fQsciLexerProperties_virtualbase_setEditor(self: pointer, editor: pointer): void{.importc: "QsciLexerProperties_virtualbase_setEditor".}
proc fcQsciLexerProperties_override_virtual_setEditor(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_setEditor".}
proc fQsciLexerProperties_virtualbase_refreshProperties(self: pointer, ): void{.importc: "QsciLexerProperties_virtualbase_refreshProperties".}
proc fcQsciLexerProperties_override_virtual_refreshProperties(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_refreshProperties".}
proc fQsciLexerProperties_virtualbase_styleBitsNeeded(self: pointer, ): cint{.importc: "QsciLexerProperties_virtualbase_styleBitsNeeded".}
proc fcQsciLexerProperties_override_virtual_styleBitsNeeded(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_styleBitsNeeded".}
proc fQsciLexerProperties_virtualbase_wordCharacters(self: pointer, ): cstring{.importc: "QsciLexerProperties_virtualbase_wordCharacters".}
proc fcQsciLexerProperties_override_virtual_wordCharacters(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_wordCharacters".}
proc fQsciLexerProperties_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void{.importc: "QsciLexerProperties_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerProperties_override_virtual_setAutoIndentStyle(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_setAutoIndentStyle".}
proc fQsciLexerProperties_virtualbase_setColor(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerProperties_virtualbase_setColor".}
proc fcQsciLexerProperties_override_virtual_setColor(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_setColor".}
proc fQsciLexerProperties_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void{.importc: "QsciLexerProperties_virtualbase_setEolFill".}
proc fcQsciLexerProperties_override_virtual_setEolFill(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_setEolFill".}
proc fQsciLexerProperties_virtualbase_setFont(self: pointer, f: pointer, style: cint): void{.importc: "QsciLexerProperties_virtualbase_setFont".}
proc fcQsciLexerProperties_override_virtual_setFont(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_setFont".}
proc fQsciLexerProperties_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerProperties_virtualbase_setPaper".}
proc fcQsciLexerProperties_override_virtual_setPaper(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_setPaper".}
proc fQsciLexerProperties_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerProperties_virtualbase_readProperties".}
proc fcQsciLexerProperties_override_virtual_readProperties(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_readProperties".}
proc fQsciLexerProperties_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerProperties_virtualbase_writeProperties".}
proc fcQsciLexerProperties_override_virtual_writeProperties(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_writeProperties".}
proc fQsciLexerProperties_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QsciLexerProperties_virtualbase_event".}
proc fcQsciLexerProperties_override_virtual_event(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_event".}
proc fQsciLexerProperties_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciLexerProperties_virtualbase_eventFilter".}
proc fcQsciLexerProperties_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_eventFilter".}
proc fQsciLexerProperties_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciLexerProperties_virtualbase_timerEvent".}
proc fcQsciLexerProperties_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_timerEvent".}
proc fQsciLexerProperties_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciLexerProperties_virtualbase_childEvent".}
proc fcQsciLexerProperties_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_childEvent".}
proc fQsciLexerProperties_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciLexerProperties_virtualbase_customEvent".}
proc fcQsciLexerProperties_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_customEvent".}
proc fQsciLexerProperties_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerProperties_virtualbase_connectNotify".}
proc fcQsciLexerProperties_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_connectNotify".}
proc fQsciLexerProperties_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerProperties_virtualbase_disconnectNotify".}
proc fcQsciLexerProperties_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_disconnectNotify".}
proc fcQsciLexerProperties_staticMetaObject(): pointer {.importc: "QsciLexerProperties_staticMetaObject".}
proc fcQsciLexerProperties_delete(self: pointer) {.importc: "QsciLexerProperties_delete".}


func init*(T: type gen_qscilexerproperties_types.QsciLexerProperties, h: ptr cQsciLexerProperties): gen_qscilexerproperties_types.QsciLexerProperties =
  T(h: h)
proc create*(T: type gen_qscilexerproperties_types.QsciLexerProperties, ): gen_qscilexerproperties_types.QsciLexerProperties =

  gen_qscilexerproperties_types.QsciLexerProperties.init(fcQsciLexerProperties_new())
proc create*(T: type gen_qscilexerproperties_types.QsciLexerProperties, parent: gen_qobject.QObject): gen_qscilexerproperties_types.QsciLexerProperties =

  gen_qscilexerproperties_types.QsciLexerProperties.init(fcQsciLexerProperties_new2(parent.h))
proc metaObject*(self: gen_qscilexerproperties_types.QsciLexerProperties, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQsciLexerProperties_metaObject(self.h))

proc metacast*(self: gen_qscilexerproperties_types.QsciLexerProperties, param1: cstring): pointer =

  fcQsciLexerProperties_metacast(self.h, param1)

proc metacall*(self: gen_qscilexerproperties_types.QsciLexerProperties, param1: cint, param2: cint, param3: pointer): cint =

  fcQsciLexerProperties_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexerproperties_types.QsciLexerProperties, s: cstring): string =

  let v_ms = fcQsciLexerProperties_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexerproperties_types.QsciLexerProperties, s: cstring): string =

  let v_ms = fcQsciLexerProperties_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexerproperties_types.QsciLexerProperties, ): cstring =

  (fcQsciLexerProperties_language(self.h))

proc lexer*(self: gen_qscilexerproperties_types.QsciLexerProperties, ): cstring =

  (fcQsciLexerProperties_lexer(self.h))

proc wordCharacters*(self: gen_qscilexerproperties_types.QsciLexerProperties, ): cstring =

  (fcQsciLexerProperties_wordCharacters(self.h))

proc defaultColor*(self: gen_qscilexerproperties_types.QsciLexerProperties, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerProperties_defaultColor(self.h, style))

proc defaultEolFill*(self: gen_qscilexerproperties_types.QsciLexerProperties, style: cint): bool =

  fcQsciLexerProperties_defaultEolFill(self.h, style)

proc defaultFont*(self: gen_qscilexerproperties_types.QsciLexerProperties, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQsciLexerProperties_defaultFont(self.h, style))

proc defaultPaper*(self: gen_qscilexerproperties_types.QsciLexerProperties, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerProperties_defaultPaper(self.h, style))

proc description*(self: gen_qscilexerproperties_types.QsciLexerProperties, style: cint): string =

  let v_ms = fcQsciLexerProperties_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: gen_qscilexerproperties_types.QsciLexerProperties, ): void =

  fcQsciLexerProperties_refreshProperties(self.h)

proc foldCompact*(self: gen_qscilexerproperties_types.QsciLexerProperties, ): bool =

  fcQsciLexerProperties_foldCompact(self.h)

proc setInitialSpaces*(self: gen_qscilexerproperties_types.QsciLexerProperties, enable: bool): void =

  fcQsciLexerProperties_setInitialSpaces(self.h, enable)

proc initialSpaces*(self: gen_qscilexerproperties_types.QsciLexerProperties, ): bool =

  fcQsciLexerProperties_initialSpaces(self.h)

proc setFoldCompact*(self: gen_qscilexerproperties_types.QsciLexerProperties, fold: bool): void =

  fcQsciLexerProperties_setFoldCompact(self.h, fold)

proc tr2*(_: type gen_qscilexerproperties_types.QsciLexerProperties, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerProperties_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type gen_qscilexerproperties_types.QsciLexerProperties, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerProperties_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type gen_qscilexerproperties_types.QsciLexerProperties, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerProperties_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type gen_qscilexerproperties_types.QsciLexerProperties, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerProperties_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QsciLexerPropertiesmetaObject*(self: gen_qscilexerproperties_types.QsciLexerProperties, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fQsciLexerProperties_virtualbase_metaObject(self.h))

type QsciLexerPropertiesmetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qscilexerproperties_types.QsciLexerProperties, slot: QsciLexerPropertiesmetaObjectProc) =
  # TODO check subclass
  var tmp = new QsciLexerPropertiesmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_metaObject(self: ptr cQsciLexerProperties, slot: int): pointer {.exportc: "miqt_exec_callback_QsciLexerProperties_metaObject ".} =
  var nimfunc = cast[ptr QsciLexerPropertiesmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QsciLexerPropertiesmetacast*(self: gen_qscilexerproperties_types.QsciLexerProperties, param1: cstring): pointer =

  fQsciLexerProperties_virtualbase_metacast(self.h, param1)

type QsciLexerPropertiesmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qscilexerproperties_types.QsciLexerProperties, slot: QsciLexerPropertiesmetacastProc) =
  # TODO check subclass
  var tmp = new QsciLexerPropertiesmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_metacast(self: ptr cQsciLexerProperties, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciLexerProperties_metacast ".} =
  var nimfunc = cast[ptr QsciLexerPropertiesmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerPropertiesmetacall*(self: gen_qscilexerproperties_types.QsciLexerProperties, param1: cint, param2: cint, param3: pointer): cint =

  fQsciLexerProperties_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerPropertiesmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qscilexerproperties_types.QsciLexerProperties, slot: QsciLexerPropertiesmetacallProc) =
  # TODO check subclass
  var tmp = new QsciLexerPropertiesmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_metacall(self: ptr cQsciLexerProperties, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerProperties_metacall ".} =
  var nimfunc = cast[ptr QsciLexerPropertiesmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QsciLexerPropertiessetFoldCompact*(self: gen_qscilexerproperties_types.QsciLexerProperties, fold: bool): void =

  fQsciLexerProperties_virtualbase_setFoldCompact(self.h, fold)

type QsciLexerPropertiessetFoldCompactProc* = proc(fold: bool): void
proc onsetFoldCompact*(self: gen_qscilexerproperties_types.QsciLexerProperties, slot: QsciLexerPropertiessetFoldCompactProc) =
  # TODO check subclass
  var tmp = new QsciLexerPropertiessetFoldCompactProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_setFoldCompact(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_setFoldCompact(self: ptr cQsciLexerProperties, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerProperties_setFoldCompact ".} =
  var nimfunc = cast[ptr QsciLexerPropertiessetFoldCompactProc](cast[pointer](slot))
  let slotval1 = fold


  nimfunc[](slotval1)
type QsciLexerPropertieslanguageProc* = proc(): cstring
proc onlanguage*(self: gen_qscilexerproperties_types.QsciLexerProperties, slot: QsciLexerPropertieslanguageProc) =
  # TODO check subclass
  var tmp = new QsciLexerPropertieslanguageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_language(self: ptr cQsciLexerProperties, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerProperties_language ".} =
  var nimfunc = cast[ptr QsciLexerPropertieslanguageProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPropertieslexer*(self: gen_qscilexerproperties_types.QsciLexerProperties, ): cstring =

  (fQsciLexerProperties_virtualbase_lexer(self.h))

type QsciLexerPropertieslexerProc* = proc(): cstring
proc onlexer*(self: gen_qscilexerproperties_types.QsciLexerProperties, slot: QsciLexerPropertieslexerProc) =
  # TODO check subclass
  var tmp = new QsciLexerPropertieslexerProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_lexer(self: ptr cQsciLexerProperties, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerProperties_lexer ".} =
  var nimfunc = cast[ptr QsciLexerPropertieslexerProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPropertieslexerId*(self: gen_qscilexerproperties_types.QsciLexerProperties, ): cint =

  fQsciLexerProperties_virtualbase_lexerId(self.h)

type QsciLexerPropertieslexerIdProc* = proc(): cint
proc onlexerId*(self: gen_qscilexerproperties_types.QsciLexerProperties, slot: QsciLexerPropertieslexerIdProc) =
  # TODO check subclass
  var tmp = new QsciLexerPropertieslexerIdProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_lexerId(self: ptr cQsciLexerProperties, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerProperties_lexerId ".} =
  var nimfunc = cast[ptr QsciLexerPropertieslexerIdProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPropertiesautoCompletionFillups*(self: gen_qscilexerproperties_types.QsciLexerProperties, ): cstring =

  (fQsciLexerProperties_virtualbase_autoCompletionFillups(self.h))

type QsciLexerPropertiesautoCompletionFillupsProc* = proc(): cstring
proc onautoCompletionFillups*(self: gen_qscilexerproperties_types.QsciLexerProperties, slot: QsciLexerPropertiesautoCompletionFillupsProc) =
  # TODO check subclass
  var tmp = new QsciLexerPropertiesautoCompletionFillupsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_autoCompletionFillups(self: ptr cQsciLexerProperties, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerProperties_autoCompletionFillups ".} =
  var nimfunc = cast[ptr QsciLexerPropertiesautoCompletionFillupsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPropertiesautoCompletionWordSeparators*(self: gen_qscilexerproperties_types.QsciLexerProperties, ): seq[string] =

  var v_ma = fQsciLexerProperties_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerPropertiesautoCompletionWordSeparatorsProc* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: gen_qscilexerproperties_types.QsciLexerProperties, slot: QsciLexerPropertiesautoCompletionWordSeparatorsProc) =
  # TODO check subclass
  var tmp = new QsciLexerPropertiesautoCompletionWordSeparatorsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_autoCompletionWordSeparators(self: ptr cQsciLexerProperties, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerProperties_autoCompletionWordSeparators ".} =
  var nimfunc = cast[ptr QsciLexerPropertiesautoCompletionWordSeparatorsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QsciLexerPropertiesblockEnd*(self: gen_qscilexerproperties_types.QsciLexerProperties, style: ptr cint): cstring =

  (fQsciLexerProperties_virtualbase_blockEnd(self.h, style))

type QsciLexerPropertiesblockEndProc* = proc(style: ptr cint): cstring
proc onblockEnd*(self: gen_qscilexerproperties_types.QsciLexerProperties, slot: QsciLexerPropertiesblockEndProc) =
  # TODO check subclass
  var tmp = new QsciLexerPropertiesblockEndProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_blockEnd(self: ptr cQsciLexerProperties, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerProperties_blockEnd ".} =
  var nimfunc = cast[ptr QsciLexerPropertiesblockEndProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerPropertiesblockLookback*(self: gen_qscilexerproperties_types.QsciLexerProperties, ): cint =

  fQsciLexerProperties_virtualbase_blockLookback(self.h)

type QsciLexerPropertiesblockLookbackProc* = proc(): cint
proc onblockLookback*(self: gen_qscilexerproperties_types.QsciLexerProperties, slot: QsciLexerPropertiesblockLookbackProc) =
  # TODO check subclass
  var tmp = new QsciLexerPropertiesblockLookbackProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_blockLookback(self: ptr cQsciLexerProperties, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerProperties_blockLookback ".} =
  var nimfunc = cast[ptr QsciLexerPropertiesblockLookbackProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPropertiesblockStart*(self: gen_qscilexerproperties_types.QsciLexerProperties, style: ptr cint): cstring =

  (fQsciLexerProperties_virtualbase_blockStart(self.h, style))

type QsciLexerPropertiesblockStartProc* = proc(style: ptr cint): cstring
proc onblockStart*(self: gen_qscilexerproperties_types.QsciLexerProperties, slot: QsciLexerPropertiesblockStartProc) =
  # TODO check subclass
  var tmp = new QsciLexerPropertiesblockStartProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_blockStart(self: ptr cQsciLexerProperties, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerProperties_blockStart ".} =
  var nimfunc = cast[ptr QsciLexerPropertiesblockStartProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerPropertiesblockStartKeyword*(self: gen_qscilexerproperties_types.QsciLexerProperties, style: ptr cint): cstring =

  (fQsciLexerProperties_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerPropertiesblockStartKeywordProc* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: gen_qscilexerproperties_types.QsciLexerProperties, slot: QsciLexerPropertiesblockStartKeywordProc) =
  # TODO check subclass
  var tmp = new QsciLexerPropertiesblockStartKeywordProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_blockStartKeyword(self: ptr cQsciLexerProperties, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerProperties_blockStartKeyword ".} =
  var nimfunc = cast[ptr QsciLexerPropertiesblockStartKeywordProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerPropertiesbraceStyle*(self: gen_qscilexerproperties_types.QsciLexerProperties, ): cint =

  fQsciLexerProperties_virtualbase_braceStyle(self.h)

type QsciLexerPropertiesbraceStyleProc* = proc(): cint
proc onbraceStyle*(self: gen_qscilexerproperties_types.QsciLexerProperties, slot: QsciLexerPropertiesbraceStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerPropertiesbraceStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_braceStyle(self: ptr cQsciLexerProperties, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerProperties_braceStyle ".} =
  var nimfunc = cast[ptr QsciLexerPropertiesbraceStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPropertiescaseSensitive*(self: gen_qscilexerproperties_types.QsciLexerProperties, ): bool =

  fQsciLexerProperties_virtualbase_caseSensitive(self.h)

type QsciLexerPropertiescaseSensitiveProc* = proc(): bool
proc oncaseSensitive*(self: gen_qscilexerproperties_types.QsciLexerProperties, slot: QsciLexerPropertiescaseSensitiveProc) =
  # TODO check subclass
  var tmp = new QsciLexerPropertiescaseSensitiveProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_caseSensitive(self: ptr cQsciLexerProperties, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerProperties_caseSensitive ".} =
  var nimfunc = cast[ptr QsciLexerPropertiescaseSensitiveProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPropertiescolor*(self: gen_qscilexerproperties_types.QsciLexerProperties, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fQsciLexerProperties_virtualbase_color(self.h, style))

type QsciLexerPropertiescolorProc* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: gen_qscilexerproperties_types.QsciLexerProperties, slot: QsciLexerPropertiescolorProc) =
  # TODO check subclass
  var tmp = new QsciLexerPropertiescolorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_color(self: ptr cQsciLexerProperties, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerProperties_color ".} =
  var nimfunc = cast[ptr QsciLexerPropertiescolorProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerPropertieseolFill*(self: gen_qscilexerproperties_types.QsciLexerProperties, style: cint): bool =

  fQsciLexerProperties_virtualbase_eolFill(self.h, style)

type QsciLexerPropertieseolFillProc* = proc(style: cint): bool
proc oneolFill*(self: gen_qscilexerproperties_types.QsciLexerProperties, slot: QsciLexerPropertieseolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerPropertieseolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_eolFill(self: ptr cQsciLexerProperties, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerProperties_eolFill ".} =
  var nimfunc = cast[ptr QsciLexerPropertieseolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerPropertiesfont*(self: gen_qscilexerproperties_types.QsciLexerProperties, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fQsciLexerProperties_virtualbase_font(self.h, style))

type QsciLexerPropertiesfontProc* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: gen_qscilexerproperties_types.QsciLexerProperties, slot: QsciLexerPropertiesfontProc) =
  # TODO check subclass
  var tmp = new QsciLexerPropertiesfontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_font(self: ptr cQsciLexerProperties, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerProperties_font ".} =
  var nimfunc = cast[ptr QsciLexerPropertiesfontProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerPropertiesindentationGuideView*(self: gen_qscilexerproperties_types.QsciLexerProperties, ): cint =

  fQsciLexerProperties_virtualbase_indentationGuideView(self.h)

type QsciLexerPropertiesindentationGuideViewProc* = proc(): cint
proc onindentationGuideView*(self: gen_qscilexerproperties_types.QsciLexerProperties, slot: QsciLexerPropertiesindentationGuideViewProc) =
  # TODO check subclass
  var tmp = new QsciLexerPropertiesindentationGuideViewProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_indentationGuideView(self: ptr cQsciLexerProperties, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerProperties_indentationGuideView ".} =
  var nimfunc = cast[ptr QsciLexerPropertiesindentationGuideViewProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPropertieskeywords*(self: gen_qscilexerproperties_types.QsciLexerProperties, set: cint): cstring =

  (fQsciLexerProperties_virtualbase_keywords(self.h, set))

type QsciLexerPropertieskeywordsProc* = proc(set: cint): cstring
proc onkeywords*(self: gen_qscilexerproperties_types.QsciLexerProperties, slot: QsciLexerPropertieskeywordsProc) =
  # TODO check subclass
  var tmp = new QsciLexerPropertieskeywordsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_keywords(self: ptr cQsciLexerProperties, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerProperties_keywords ".} =
  var nimfunc = cast[ptr QsciLexerPropertieskeywordsProc](cast[pointer](slot))
  let slotval1 = set


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerPropertiesdefaultStyle*(self: gen_qscilexerproperties_types.QsciLexerProperties, ): cint =

  fQsciLexerProperties_virtualbase_defaultStyle(self.h)

type QsciLexerPropertiesdefaultStyleProc* = proc(): cint
proc ondefaultStyle*(self: gen_qscilexerproperties_types.QsciLexerProperties, slot: QsciLexerPropertiesdefaultStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerPropertiesdefaultStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_defaultStyle(self: ptr cQsciLexerProperties, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerProperties_defaultStyle ".} =
  var nimfunc = cast[ptr QsciLexerPropertiesdefaultStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QsciLexerPropertiesdescriptionProc* = proc(style: cint): string
proc ondescription*(self: gen_qscilexerproperties_types.QsciLexerProperties, slot: QsciLexerPropertiesdescriptionProc) =
  # TODO check subclass
  var tmp = new QsciLexerPropertiesdescriptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_description(self: ptr cQsciLexerProperties, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerProperties_description ".} =
  var nimfunc = cast[ptr QsciLexerPropertiesdescriptionProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc QsciLexerPropertiespaper*(self: gen_qscilexerproperties_types.QsciLexerProperties, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fQsciLexerProperties_virtualbase_paper(self.h, style))

type QsciLexerPropertiespaperProc* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: gen_qscilexerproperties_types.QsciLexerProperties, slot: QsciLexerPropertiespaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerPropertiespaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_paper(self: ptr cQsciLexerProperties, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerProperties_paper ".} =
  var nimfunc = cast[ptr QsciLexerPropertiespaperProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerPropertiesdefaultColorWithStyle*(self: gen_qscilexerproperties_types.QsciLexerProperties, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fQsciLexerProperties_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerPropertiesdefaultColorWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColorWithStyle*(self: gen_qscilexerproperties_types.QsciLexerProperties, slot: QsciLexerPropertiesdefaultColorWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerPropertiesdefaultColorWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_defaultColorWithStyle(self: ptr cQsciLexerProperties, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerProperties_defaultColorWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerPropertiesdefaultColorWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerPropertiesdefaultEolFill*(self: gen_qscilexerproperties_types.QsciLexerProperties, style: cint): bool =

  fQsciLexerProperties_virtualbase_defaultEolFill(self.h, style)

type QsciLexerPropertiesdefaultEolFillProc* = proc(style: cint): bool
proc ondefaultEolFill*(self: gen_qscilexerproperties_types.QsciLexerProperties, slot: QsciLexerPropertiesdefaultEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerPropertiesdefaultEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_defaultEolFill(self: ptr cQsciLexerProperties, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerProperties_defaultEolFill ".} =
  var nimfunc = cast[ptr QsciLexerPropertiesdefaultEolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerPropertiesdefaultFontWithStyle*(self: gen_qscilexerproperties_types.QsciLexerProperties, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fQsciLexerProperties_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerPropertiesdefaultFontWithStyleProc* = proc(style: cint): gen_qfont.QFont
proc ondefaultFontWithStyle*(self: gen_qscilexerproperties_types.QsciLexerProperties, slot: QsciLexerPropertiesdefaultFontWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerPropertiesdefaultFontWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_defaultFontWithStyle(self: ptr cQsciLexerProperties, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerProperties_defaultFontWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerPropertiesdefaultFontWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerPropertiesdefaultPaperWithStyle*(self: gen_qscilexerproperties_types.QsciLexerProperties, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fQsciLexerProperties_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerPropertiesdefaultPaperWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaperWithStyle*(self: gen_qscilexerproperties_types.QsciLexerProperties, slot: QsciLexerPropertiesdefaultPaperWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerPropertiesdefaultPaperWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_defaultPaperWithStyle(self: ptr cQsciLexerProperties, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerProperties_defaultPaperWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerPropertiesdefaultPaperWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerPropertiessetEditor*(self: gen_qscilexerproperties_types.QsciLexerProperties, editor: gen_qsciscintilla.QsciScintilla): void =

  fQsciLexerProperties_virtualbase_setEditor(self.h, editor.h)

type QsciLexerPropertiessetEditorProc* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: gen_qscilexerproperties_types.QsciLexerProperties, slot: QsciLexerPropertiessetEditorProc) =
  # TODO check subclass
  var tmp = new QsciLexerPropertiessetEditorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_setEditor(self: ptr cQsciLexerProperties, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerProperties_setEditor ".} =
  var nimfunc = cast[ptr QsciLexerPropertiessetEditorProc](cast[pointer](slot))
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](slotval1)
proc QsciLexerPropertiesrefreshProperties*(self: gen_qscilexerproperties_types.QsciLexerProperties, ): void =

  fQsciLexerProperties_virtualbase_refreshProperties(self.h)

type QsciLexerPropertiesrefreshPropertiesProc* = proc(): void
proc onrefreshProperties*(self: gen_qscilexerproperties_types.QsciLexerProperties, slot: QsciLexerPropertiesrefreshPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerPropertiesrefreshPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_refreshProperties(self: ptr cQsciLexerProperties, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerProperties_refreshProperties ".} =
  var nimfunc = cast[ptr QsciLexerPropertiesrefreshPropertiesProc](cast[pointer](slot))

  nimfunc[]()
proc QsciLexerPropertiesstyleBitsNeeded*(self: gen_qscilexerproperties_types.QsciLexerProperties, ): cint =

  fQsciLexerProperties_virtualbase_styleBitsNeeded(self.h)

type QsciLexerPropertiesstyleBitsNeededProc* = proc(): cint
proc onstyleBitsNeeded*(self: gen_qscilexerproperties_types.QsciLexerProperties, slot: QsciLexerPropertiesstyleBitsNeededProc) =
  # TODO check subclass
  var tmp = new QsciLexerPropertiesstyleBitsNeededProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_styleBitsNeeded(self: ptr cQsciLexerProperties, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerProperties_styleBitsNeeded ".} =
  var nimfunc = cast[ptr QsciLexerPropertiesstyleBitsNeededProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPropertieswordCharacters*(self: gen_qscilexerproperties_types.QsciLexerProperties, ): cstring =

  (fQsciLexerProperties_virtualbase_wordCharacters(self.h))

type QsciLexerPropertieswordCharactersProc* = proc(): cstring
proc onwordCharacters*(self: gen_qscilexerproperties_types.QsciLexerProperties, slot: QsciLexerPropertieswordCharactersProc) =
  # TODO check subclass
  var tmp = new QsciLexerPropertieswordCharactersProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_wordCharacters(self: ptr cQsciLexerProperties, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerProperties_wordCharacters ".} =
  var nimfunc = cast[ptr QsciLexerPropertieswordCharactersProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerPropertiessetAutoIndentStyle*(self: gen_qscilexerproperties_types.QsciLexerProperties, autoindentstyle: cint): void =

  fQsciLexerProperties_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerPropertiessetAutoIndentStyleProc* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: gen_qscilexerproperties_types.QsciLexerProperties, slot: QsciLexerPropertiessetAutoIndentStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerPropertiessetAutoIndentStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_setAutoIndentStyle(self: ptr cQsciLexerProperties, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerProperties_setAutoIndentStyle ".} =
  var nimfunc = cast[ptr QsciLexerPropertiessetAutoIndentStyleProc](cast[pointer](slot))
  let slotval1 = autoindentstyle


  nimfunc[](slotval1)
proc QsciLexerPropertiessetColor*(self: gen_qscilexerproperties_types.QsciLexerProperties, c: gen_qcolor.QColor, style: cint): void =

  fQsciLexerProperties_virtualbase_setColor(self.h, c.h, style)

type QsciLexerPropertiessetColorProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: gen_qscilexerproperties_types.QsciLexerProperties, slot: QsciLexerPropertiessetColorProc) =
  # TODO check subclass
  var tmp = new QsciLexerPropertiessetColorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_setColor(self: ptr cQsciLexerProperties, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerProperties_setColor ".} =
  var nimfunc = cast[ptr QsciLexerPropertiessetColorProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerPropertiessetEolFill*(self: gen_qscilexerproperties_types.QsciLexerProperties, eoffill: bool, style: cint): void =

  fQsciLexerProperties_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerPropertiessetEolFillProc* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: gen_qscilexerproperties_types.QsciLexerProperties, slot: QsciLexerPropertiessetEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerPropertiessetEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_setEolFill(self: ptr cQsciLexerProperties, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerProperties_setEolFill ".} =
  var nimfunc = cast[ptr QsciLexerPropertiessetEolFillProc](cast[pointer](slot))
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerPropertiessetFont*(self: gen_qscilexerproperties_types.QsciLexerProperties, f: gen_qfont.QFont, style: cint): void =

  fQsciLexerProperties_virtualbase_setFont(self.h, f.h, style)

type QsciLexerPropertiessetFontProc* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: gen_qscilexerproperties_types.QsciLexerProperties, slot: QsciLexerPropertiessetFontProc) =
  # TODO check subclass
  var tmp = new QsciLexerPropertiessetFontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_setFont(self: ptr cQsciLexerProperties, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerProperties_setFont ".} =
  var nimfunc = cast[ptr QsciLexerPropertiessetFontProc](cast[pointer](slot))
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerPropertiessetPaper*(self: gen_qscilexerproperties_types.QsciLexerProperties, c: gen_qcolor.QColor, style: cint): void =

  fQsciLexerProperties_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerPropertiessetPaperProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: gen_qscilexerproperties_types.QsciLexerProperties, slot: QsciLexerPropertiessetPaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerPropertiessetPaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_setPaper(self: ptr cQsciLexerProperties, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerProperties_setPaper ".} =
  var nimfunc = cast[ptr QsciLexerPropertiessetPaperProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerPropertiesreadProperties*(self: gen_qscilexerproperties_types.QsciLexerProperties, qs: gen_qsettings.QSettings, prefix: string): bool =

  fQsciLexerProperties_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerPropertiesreadPropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: gen_qscilexerproperties_types.QsciLexerProperties, slot: QsciLexerPropertiesreadPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerPropertiesreadPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_readProperties(self: ptr cQsciLexerProperties, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerProperties_readProperties ".} =
  var nimfunc = cast[ptr QsciLexerPropertiesreadPropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerPropertieswriteProperties*(self: gen_qscilexerproperties_types.QsciLexerProperties, qs: gen_qsettings.QSettings, prefix: string): bool =

  fQsciLexerProperties_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerPropertieswritePropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: gen_qscilexerproperties_types.QsciLexerProperties, slot: QsciLexerPropertieswritePropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerPropertieswritePropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_writeProperties(self: ptr cQsciLexerProperties, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerProperties_writeProperties ".} =
  var nimfunc = cast[ptr QsciLexerPropertieswritePropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerPropertiesevent*(self: gen_qscilexerproperties_types.QsciLexerProperties, event: gen_qcoreevent.QEvent): bool =

  fQsciLexerProperties_virtualbase_event(self.h, event.h)

type QsciLexerPropertieseventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qscilexerproperties_types.QsciLexerProperties, slot: QsciLexerPropertieseventProc) =
  # TODO check subclass
  var tmp = new QsciLexerPropertieseventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_event(self: ptr cQsciLexerProperties, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerProperties_event ".} =
  var nimfunc = cast[ptr QsciLexerPropertieseventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerPropertieseventFilter*(self: gen_qscilexerproperties_types.QsciLexerProperties, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =

  fQsciLexerProperties_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerPropertieseventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qscilexerproperties_types.QsciLexerProperties, slot: QsciLexerPropertieseventFilterProc) =
  # TODO check subclass
  var tmp = new QsciLexerPropertieseventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_eventFilter(self: ptr cQsciLexerProperties, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerProperties_eventFilter ".} =
  var nimfunc = cast[ptr QsciLexerPropertieseventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerPropertiestimerEvent*(self: gen_qscilexerproperties_types.QsciLexerProperties, event: gen_qcoreevent.QTimerEvent): void =

  fQsciLexerProperties_virtualbase_timerEvent(self.h, event.h)

type QsciLexerPropertiestimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qscilexerproperties_types.QsciLexerProperties, slot: QsciLexerPropertiestimerEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerPropertiestimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_timerEvent(self: ptr cQsciLexerProperties, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerProperties_timerEvent ".} =
  var nimfunc = cast[ptr QsciLexerPropertiestimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerPropertieschildEvent*(self: gen_qscilexerproperties_types.QsciLexerProperties, event: gen_qcoreevent.QChildEvent): void =

  fQsciLexerProperties_virtualbase_childEvent(self.h, event.h)

type QsciLexerPropertieschildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qscilexerproperties_types.QsciLexerProperties, slot: QsciLexerPropertieschildEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerPropertieschildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_childEvent(self: ptr cQsciLexerProperties, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerProperties_childEvent ".} =
  var nimfunc = cast[ptr QsciLexerPropertieschildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerPropertiescustomEvent*(self: gen_qscilexerproperties_types.QsciLexerProperties, event: gen_qcoreevent.QEvent): void =

  fQsciLexerProperties_virtualbase_customEvent(self.h, event.h)

type QsciLexerPropertiescustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qscilexerproperties_types.QsciLexerProperties, slot: QsciLexerPropertiescustomEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerPropertiescustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_customEvent(self: ptr cQsciLexerProperties, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerProperties_customEvent ".} =
  var nimfunc = cast[ptr QsciLexerPropertiescustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerPropertiesconnectNotify*(self: gen_qscilexerproperties_types.QsciLexerProperties, signal: gen_qmetaobject.QMetaMethod): void =

  fQsciLexerProperties_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerPropertiesconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qscilexerproperties_types.QsciLexerProperties, slot: QsciLexerPropertiesconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerPropertiesconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_connectNotify(self: ptr cQsciLexerProperties, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerProperties_connectNotify ".} =
  var nimfunc = cast[ptr QsciLexerPropertiesconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QsciLexerPropertiesdisconnectNotify*(self: gen_qscilexerproperties_types.QsciLexerProperties, signal: gen_qmetaobject.QMetaMethod): void =

  fQsciLexerProperties_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerPropertiesdisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qscilexerproperties_types.QsciLexerProperties, slot: QsciLexerPropertiesdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerPropertiesdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_disconnectNotify(self: ptr cQsciLexerProperties, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerProperties_disconnectNotify ".} =
  var nimfunc = cast[ptr QsciLexerPropertiesdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qscilexerproperties_types.QsciLexerProperties): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerProperties_staticMetaObject())
proc delete*(self: gen_qscilexerproperties_types.QsciLexerProperties) =
  fcQsciLexerProperties_delete(self.h)
