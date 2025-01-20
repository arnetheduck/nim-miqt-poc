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
{.compile("gen_qscilexeryaml.cpp", cflags).}


type QsciLexerYAMLEnumEnum* = distinct cint
template Default*(_: type QsciLexerYAMLEnumEnum): untyped = 0
template Comment*(_: type QsciLexerYAMLEnumEnum): untyped = 1
template Identifier*(_: type QsciLexerYAMLEnumEnum): untyped = 2
template Keyword*(_: type QsciLexerYAMLEnumEnum): untyped = 3
template Number*(_: type QsciLexerYAMLEnumEnum): untyped = 4
template Reference*(_: type QsciLexerYAMLEnumEnum): untyped = 5
template DocumentDelimiter*(_: type QsciLexerYAMLEnumEnum): untyped = 6
template TextBlockMarker*(_: type QsciLexerYAMLEnumEnum): untyped = 7
template SyntaxErrorMarker*(_: type QsciLexerYAMLEnumEnum): untyped = 8
template Operator*(_: type QsciLexerYAMLEnumEnum): untyped = 9


import gen_qscilexeryaml_types
export gen_qscilexeryaml_types

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

type cQsciLexerYAML*{.exportc: "QsciLexerYAML", incompleteStruct.} = object

proc fcQsciLexerYAML_new(): ptr cQsciLexerYAML {.importc: "QsciLexerYAML_new".}
proc fcQsciLexerYAML_new2(parent: pointer): ptr cQsciLexerYAML {.importc: "QsciLexerYAML_new2".}
proc fcQsciLexerYAML_metaObject(self: pointer, ): pointer {.importc: "QsciLexerYAML_metaObject".}
proc fcQsciLexerYAML_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerYAML_metacast".}
proc fcQsciLexerYAML_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerYAML_metacall".}
proc fcQsciLexerYAML_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerYAML_tr".}
proc fcQsciLexerYAML_trUtf8(s: cstring): struct_miqt_string {.importc: "QsciLexerYAML_trUtf8".}
proc fcQsciLexerYAML_language(self: pointer, ): cstring {.importc: "QsciLexerYAML_language".}
proc fcQsciLexerYAML_lexer(self: pointer, ): cstring {.importc: "QsciLexerYAML_lexer".}
proc fcQsciLexerYAML_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerYAML_defaultColor".}
proc fcQsciLexerYAML_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerYAML_defaultEolFill".}
proc fcQsciLexerYAML_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerYAML_defaultFont".}
proc fcQsciLexerYAML_defaultPaper(self: pointer, style: cint): pointer {.importc: "QsciLexerYAML_defaultPaper".}
proc fcQsciLexerYAML_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerYAML_keywords".}
proc fcQsciLexerYAML_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerYAML_description".}
proc fcQsciLexerYAML_refreshProperties(self: pointer, ): void {.importc: "QsciLexerYAML_refreshProperties".}
proc fcQsciLexerYAML_foldComments(self: pointer, ): bool {.importc: "QsciLexerYAML_foldComments".}
proc fcQsciLexerYAML_setFoldComments(self: pointer, fold: bool): void {.importc: "QsciLexerYAML_setFoldComments".}
proc fcQsciLexerYAML_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerYAML_tr2".}
proc fcQsciLexerYAML_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerYAML_tr3".}
proc fcQsciLexerYAML_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerYAML_trUtf82".}
proc fcQsciLexerYAML_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerYAML_trUtf83".}
proc fQsciLexerYAML_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QsciLexerYAML_virtualbase_metaObject".}
proc fcQsciLexerYAML_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_metaObject".}
proc fQsciLexerYAML_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QsciLexerYAML_virtualbase_metacast".}
proc fcQsciLexerYAML_override_virtual_metacast(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_metacast".}
proc fQsciLexerYAML_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciLexerYAML_virtualbase_metacall".}
proc fcQsciLexerYAML_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_metacall".}
proc fQsciLexerYAML_virtualbase_setFoldComments(self: pointer, fold: bool): void{.importc: "QsciLexerYAML_virtualbase_setFoldComments".}
proc fcQsciLexerYAML_override_virtual_setFoldComments(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_setFoldComments".}
proc fcQsciLexerYAML_override_virtual_language(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_language".}
proc fQsciLexerYAML_virtualbase_lexer(self: pointer, ): cstring{.importc: "QsciLexerYAML_virtualbase_lexer".}
proc fcQsciLexerYAML_override_virtual_lexer(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_lexer".}
proc fQsciLexerYAML_virtualbase_lexerId(self: pointer, ): cint{.importc: "QsciLexerYAML_virtualbase_lexerId".}
proc fcQsciLexerYAML_override_virtual_lexerId(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_lexerId".}
proc fQsciLexerYAML_virtualbase_autoCompletionFillups(self: pointer, ): cstring{.importc: "QsciLexerYAML_virtualbase_autoCompletionFillups".}
proc fcQsciLexerYAML_override_virtual_autoCompletionFillups(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_autoCompletionFillups".}
proc fQsciLexerYAML_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array{.importc: "QsciLexerYAML_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerYAML_override_virtual_autoCompletionWordSeparators(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_autoCompletionWordSeparators".}
proc fQsciLexerYAML_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerYAML_virtualbase_blockEnd".}
proc fcQsciLexerYAML_override_virtual_blockEnd(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_blockEnd".}
proc fQsciLexerYAML_virtualbase_blockLookback(self: pointer, ): cint{.importc: "QsciLexerYAML_virtualbase_blockLookback".}
proc fcQsciLexerYAML_override_virtual_blockLookback(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_blockLookback".}
proc fQsciLexerYAML_virtualbase_blockStart(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerYAML_virtualbase_blockStart".}
proc fcQsciLexerYAML_override_virtual_blockStart(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_blockStart".}
proc fQsciLexerYAML_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerYAML_virtualbase_blockStartKeyword".}
proc fcQsciLexerYAML_override_virtual_blockStartKeyword(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_blockStartKeyword".}
proc fQsciLexerYAML_virtualbase_braceStyle(self: pointer, ): cint{.importc: "QsciLexerYAML_virtualbase_braceStyle".}
proc fcQsciLexerYAML_override_virtual_braceStyle(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_braceStyle".}
proc fQsciLexerYAML_virtualbase_caseSensitive(self: pointer, ): bool{.importc: "QsciLexerYAML_virtualbase_caseSensitive".}
proc fcQsciLexerYAML_override_virtual_caseSensitive(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_caseSensitive".}
proc fQsciLexerYAML_virtualbase_color(self: pointer, style: cint): pointer{.importc: "QsciLexerYAML_virtualbase_color".}
proc fcQsciLexerYAML_override_virtual_color(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_color".}
proc fQsciLexerYAML_virtualbase_eolFill(self: pointer, style: cint): bool{.importc: "QsciLexerYAML_virtualbase_eolFill".}
proc fcQsciLexerYAML_override_virtual_eolFill(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_eolFill".}
proc fQsciLexerYAML_virtualbase_font(self: pointer, style: cint): pointer{.importc: "QsciLexerYAML_virtualbase_font".}
proc fcQsciLexerYAML_override_virtual_font(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_font".}
proc fQsciLexerYAML_virtualbase_indentationGuideView(self: pointer, ): cint{.importc: "QsciLexerYAML_virtualbase_indentationGuideView".}
proc fcQsciLexerYAML_override_virtual_indentationGuideView(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_indentationGuideView".}
proc fQsciLexerYAML_virtualbase_keywords(self: pointer, set: cint): cstring{.importc: "QsciLexerYAML_virtualbase_keywords".}
proc fcQsciLexerYAML_override_virtual_keywords(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_keywords".}
proc fQsciLexerYAML_virtualbase_defaultStyle(self: pointer, ): cint{.importc: "QsciLexerYAML_virtualbase_defaultStyle".}
proc fcQsciLexerYAML_override_virtual_defaultStyle(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_defaultStyle".}
proc fcQsciLexerYAML_override_virtual_description(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_description".}
proc fQsciLexerYAML_virtualbase_paper(self: pointer, style: cint): pointer{.importc: "QsciLexerYAML_virtualbase_paper".}
proc fcQsciLexerYAML_override_virtual_paper(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_paper".}
proc fQsciLexerYAML_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerYAML_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerYAML_override_virtual_defaultColorWithStyle(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_defaultColorWithStyle".}
proc fQsciLexerYAML_virtualbase_defaultEolFill(self: pointer, style: cint): bool{.importc: "QsciLexerYAML_virtualbase_defaultEolFill".}
proc fcQsciLexerYAML_override_virtual_defaultEolFill(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_defaultEolFill".}
proc fQsciLexerYAML_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerYAML_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerYAML_override_virtual_defaultFontWithStyle(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_defaultFontWithStyle".}
proc fQsciLexerYAML_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerYAML_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerYAML_override_virtual_defaultPaperWithStyle(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_defaultPaperWithStyle".}
proc fQsciLexerYAML_virtualbase_setEditor(self: pointer, editor: pointer): void{.importc: "QsciLexerYAML_virtualbase_setEditor".}
proc fcQsciLexerYAML_override_virtual_setEditor(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_setEditor".}
proc fQsciLexerYAML_virtualbase_refreshProperties(self: pointer, ): void{.importc: "QsciLexerYAML_virtualbase_refreshProperties".}
proc fcQsciLexerYAML_override_virtual_refreshProperties(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_refreshProperties".}
proc fQsciLexerYAML_virtualbase_styleBitsNeeded(self: pointer, ): cint{.importc: "QsciLexerYAML_virtualbase_styleBitsNeeded".}
proc fcQsciLexerYAML_override_virtual_styleBitsNeeded(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_styleBitsNeeded".}
proc fQsciLexerYAML_virtualbase_wordCharacters(self: pointer, ): cstring{.importc: "QsciLexerYAML_virtualbase_wordCharacters".}
proc fcQsciLexerYAML_override_virtual_wordCharacters(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_wordCharacters".}
proc fQsciLexerYAML_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void{.importc: "QsciLexerYAML_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerYAML_override_virtual_setAutoIndentStyle(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_setAutoIndentStyle".}
proc fQsciLexerYAML_virtualbase_setColor(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerYAML_virtualbase_setColor".}
proc fcQsciLexerYAML_override_virtual_setColor(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_setColor".}
proc fQsciLexerYAML_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void{.importc: "QsciLexerYAML_virtualbase_setEolFill".}
proc fcQsciLexerYAML_override_virtual_setEolFill(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_setEolFill".}
proc fQsciLexerYAML_virtualbase_setFont(self: pointer, f: pointer, style: cint): void{.importc: "QsciLexerYAML_virtualbase_setFont".}
proc fcQsciLexerYAML_override_virtual_setFont(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_setFont".}
proc fQsciLexerYAML_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerYAML_virtualbase_setPaper".}
proc fcQsciLexerYAML_override_virtual_setPaper(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_setPaper".}
proc fQsciLexerYAML_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerYAML_virtualbase_readProperties".}
proc fcQsciLexerYAML_override_virtual_readProperties(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_readProperties".}
proc fQsciLexerYAML_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerYAML_virtualbase_writeProperties".}
proc fcQsciLexerYAML_override_virtual_writeProperties(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_writeProperties".}
proc fQsciLexerYAML_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QsciLexerYAML_virtualbase_event".}
proc fcQsciLexerYAML_override_virtual_event(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_event".}
proc fQsciLexerYAML_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciLexerYAML_virtualbase_eventFilter".}
proc fcQsciLexerYAML_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_eventFilter".}
proc fQsciLexerYAML_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciLexerYAML_virtualbase_timerEvent".}
proc fcQsciLexerYAML_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_timerEvent".}
proc fQsciLexerYAML_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciLexerYAML_virtualbase_childEvent".}
proc fcQsciLexerYAML_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_childEvent".}
proc fQsciLexerYAML_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciLexerYAML_virtualbase_customEvent".}
proc fcQsciLexerYAML_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_customEvent".}
proc fQsciLexerYAML_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerYAML_virtualbase_connectNotify".}
proc fcQsciLexerYAML_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_connectNotify".}
proc fQsciLexerYAML_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerYAML_virtualbase_disconnectNotify".}
proc fcQsciLexerYAML_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_disconnectNotify".}
proc fcQsciLexerYAML_staticMetaObject(): pointer {.importc: "QsciLexerYAML_staticMetaObject".}
proc fcQsciLexerYAML_delete(self: pointer) {.importc: "QsciLexerYAML_delete".}


func init*(T: type gen_qscilexeryaml_types.QsciLexerYAML, h: ptr cQsciLexerYAML): gen_qscilexeryaml_types.QsciLexerYAML =
  T(h: h)
proc create*(T: type gen_qscilexeryaml_types.QsciLexerYAML, ): gen_qscilexeryaml_types.QsciLexerYAML =
  gen_qscilexeryaml_types.QsciLexerYAML.init(fcQsciLexerYAML_new())

proc create*(T: type gen_qscilexeryaml_types.QsciLexerYAML, parent: gen_qobject.QObject): gen_qscilexeryaml_types.QsciLexerYAML =
  gen_qscilexeryaml_types.QsciLexerYAML.init(fcQsciLexerYAML_new2(parent.h))

proc metaObject*(self: gen_qscilexeryaml_types.QsciLexerYAML, ): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerYAML_metaObject(self.h))

proc metacast*(self: gen_qscilexeryaml_types.QsciLexerYAML, param1: cstring): pointer =
  fcQsciLexerYAML_metacast(self.h, param1)

proc metacall*(self: gen_qscilexeryaml_types.QsciLexerYAML, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerYAML_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexeryaml_types.QsciLexerYAML, s: cstring): string =
  let v_ms = fcQsciLexerYAML_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexeryaml_types.QsciLexerYAML, s: cstring): string =
  let v_ms = fcQsciLexerYAML_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexeryaml_types.QsciLexerYAML, ): cstring =
  (fcQsciLexerYAML_language(self.h))

proc lexer*(self: gen_qscilexeryaml_types.QsciLexerYAML, ): cstring =
  (fcQsciLexerYAML_lexer(self.h))

proc defaultColor*(self: gen_qscilexeryaml_types.QsciLexerYAML, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fcQsciLexerYAML_defaultColor(self.h, style))

proc defaultEolFill*(self: gen_qscilexeryaml_types.QsciLexerYAML, style: cint): bool =
  fcQsciLexerYAML_defaultEolFill(self.h, style)

proc defaultFont*(self: gen_qscilexeryaml_types.QsciLexerYAML, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fcQsciLexerYAML_defaultFont(self.h, style))

proc defaultPaper*(self: gen_qscilexeryaml_types.QsciLexerYAML, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fcQsciLexerYAML_defaultPaper(self.h, style))

proc keywords*(self: gen_qscilexeryaml_types.QsciLexerYAML, set: cint): cstring =
  (fcQsciLexerYAML_keywords(self.h, set))

proc description*(self: gen_qscilexeryaml_types.QsciLexerYAML, style: cint): string =
  let v_ms = fcQsciLexerYAML_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: gen_qscilexeryaml_types.QsciLexerYAML, ): void =
  fcQsciLexerYAML_refreshProperties(self.h)

proc foldComments*(self: gen_qscilexeryaml_types.QsciLexerYAML, ): bool =
  fcQsciLexerYAML_foldComments(self.h)

proc setFoldComments*(self: gen_qscilexeryaml_types.QsciLexerYAML, fold: bool): void =
  fcQsciLexerYAML_setFoldComments(self.h, fold)

proc tr*(_: type gen_qscilexeryaml_types.QsciLexerYAML, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerYAML_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexeryaml_types.QsciLexerYAML, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerYAML_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexeryaml_types.QsciLexerYAML, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerYAML_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexeryaml_types.QsciLexerYAML, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerYAML_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QsciLexerYAMLmetaObject*(self: gen_qscilexeryaml_types.QsciLexerYAML, ): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fQsciLexerYAML_virtualbase_metaObject(self.h))

type QsciLexerYAMLmetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qscilexeryaml_types.QsciLexerYAML, slot: QsciLexerYAMLmetaObjectProc) =
  # TODO check subclass
  var tmp = new QsciLexerYAMLmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_metaObject(self: ptr cQsciLexerYAML, slot: int): pointer {.exportc: "miqt_exec_callback_QsciLexerYAML_metaObject ".} =
  var nimfunc = cast[ptr QsciLexerYAMLmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QsciLexerYAMLmetacast*(self: gen_qscilexeryaml_types.QsciLexerYAML, param1: cstring): pointer =
  fQsciLexerYAML_virtualbase_metacast(self.h, param1)

type QsciLexerYAMLmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qscilexeryaml_types.QsciLexerYAML, slot: QsciLexerYAMLmetacastProc) =
  # TODO check subclass
  var tmp = new QsciLexerYAMLmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_metacast(self: ptr cQsciLexerYAML, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciLexerYAML_metacast ".} =
  var nimfunc = cast[ptr QsciLexerYAMLmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerYAMLmetacall*(self: gen_qscilexeryaml_types.QsciLexerYAML, param1: cint, param2: cint, param3: pointer): cint =
  fQsciLexerYAML_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerYAMLmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qscilexeryaml_types.QsciLexerYAML, slot: QsciLexerYAMLmetacallProc) =
  # TODO check subclass
  var tmp = new QsciLexerYAMLmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_metacall(self: ptr cQsciLexerYAML, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerYAML_metacall ".} =
  var nimfunc = cast[ptr QsciLexerYAMLmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QsciLexerYAMLsetFoldComments*(self: gen_qscilexeryaml_types.QsciLexerYAML, fold: bool): void =
  fQsciLexerYAML_virtualbase_setFoldComments(self.h, fold)

type QsciLexerYAMLsetFoldCommentsProc* = proc(fold: bool): void
proc onsetFoldComments*(self: gen_qscilexeryaml_types.QsciLexerYAML, slot: QsciLexerYAMLsetFoldCommentsProc) =
  # TODO check subclass
  var tmp = new QsciLexerYAMLsetFoldCommentsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_setFoldComments(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_setFoldComments(self: ptr cQsciLexerYAML, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerYAML_setFoldComments ".} =
  var nimfunc = cast[ptr QsciLexerYAMLsetFoldCommentsProc](cast[pointer](slot))
  let slotval1 = fold


  nimfunc[](slotval1)
type QsciLexerYAMLlanguageProc* = proc(): cstring
proc onlanguage*(self: gen_qscilexeryaml_types.QsciLexerYAML, slot: QsciLexerYAMLlanguageProc) =
  # TODO check subclass
  var tmp = new QsciLexerYAMLlanguageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_language(self: ptr cQsciLexerYAML, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerYAML_language ".} =
  var nimfunc = cast[ptr QsciLexerYAMLlanguageProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerYAMLlexer*(self: gen_qscilexeryaml_types.QsciLexerYAML, ): cstring =
  (fQsciLexerYAML_virtualbase_lexer(self.h))

type QsciLexerYAMLlexerProc* = proc(): cstring
proc onlexer*(self: gen_qscilexeryaml_types.QsciLexerYAML, slot: QsciLexerYAMLlexerProc) =
  # TODO check subclass
  var tmp = new QsciLexerYAMLlexerProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_lexer(self: ptr cQsciLexerYAML, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerYAML_lexer ".} =
  var nimfunc = cast[ptr QsciLexerYAMLlexerProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerYAMLlexerId*(self: gen_qscilexeryaml_types.QsciLexerYAML, ): cint =
  fQsciLexerYAML_virtualbase_lexerId(self.h)

type QsciLexerYAMLlexerIdProc* = proc(): cint
proc onlexerId*(self: gen_qscilexeryaml_types.QsciLexerYAML, slot: QsciLexerYAMLlexerIdProc) =
  # TODO check subclass
  var tmp = new QsciLexerYAMLlexerIdProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_lexerId(self: ptr cQsciLexerYAML, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerYAML_lexerId ".} =
  var nimfunc = cast[ptr QsciLexerYAMLlexerIdProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerYAMLautoCompletionFillups*(self: gen_qscilexeryaml_types.QsciLexerYAML, ): cstring =
  (fQsciLexerYAML_virtualbase_autoCompletionFillups(self.h))

type QsciLexerYAMLautoCompletionFillupsProc* = proc(): cstring
proc onautoCompletionFillups*(self: gen_qscilexeryaml_types.QsciLexerYAML, slot: QsciLexerYAMLautoCompletionFillupsProc) =
  # TODO check subclass
  var tmp = new QsciLexerYAMLautoCompletionFillupsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_autoCompletionFillups(self: ptr cQsciLexerYAML, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerYAML_autoCompletionFillups ".} =
  var nimfunc = cast[ptr QsciLexerYAMLautoCompletionFillupsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerYAMLautoCompletionWordSeparators*(self: gen_qscilexeryaml_types.QsciLexerYAML, ): seq[string] =
  var v_ma = fQsciLexerYAML_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerYAMLautoCompletionWordSeparatorsProc* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: gen_qscilexeryaml_types.QsciLexerYAML, slot: QsciLexerYAMLautoCompletionWordSeparatorsProc) =
  # TODO check subclass
  var tmp = new QsciLexerYAMLautoCompletionWordSeparatorsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_autoCompletionWordSeparators(self: ptr cQsciLexerYAML, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerYAML_autoCompletionWordSeparators ".} =
  var nimfunc = cast[ptr QsciLexerYAMLautoCompletionWordSeparatorsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QsciLexerYAMLblockEnd*(self: gen_qscilexeryaml_types.QsciLexerYAML, style: ptr cint): cstring =
  (fQsciLexerYAML_virtualbase_blockEnd(self.h, style))

type QsciLexerYAMLblockEndProc* = proc(style: ptr cint): cstring
proc onblockEnd*(self: gen_qscilexeryaml_types.QsciLexerYAML, slot: QsciLexerYAMLblockEndProc) =
  # TODO check subclass
  var tmp = new QsciLexerYAMLblockEndProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_blockEnd(self: ptr cQsciLexerYAML, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerYAML_blockEnd ".} =
  var nimfunc = cast[ptr QsciLexerYAMLblockEndProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerYAMLblockLookback*(self: gen_qscilexeryaml_types.QsciLexerYAML, ): cint =
  fQsciLexerYAML_virtualbase_blockLookback(self.h)

type QsciLexerYAMLblockLookbackProc* = proc(): cint
proc onblockLookback*(self: gen_qscilexeryaml_types.QsciLexerYAML, slot: QsciLexerYAMLblockLookbackProc) =
  # TODO check subclass
  var tmp = new QsciLexerYAMLblockLookbackProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_blockLookback(self: ptr cQsciLexerYAML, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerYAML_blockLookback ".} =
  var nimfunc = cast[ptr QsciLexerYAMLblockLookbackProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerYAMLblockStart*(self: gen_qscilexeryaml_types.QsciLexerYAML, style: ptr cint): cstring =
  (fQsciLexerYAML_virtualbase_blockStart(self.h, style))

type QsciLexerYAMLblockStartProc* = proc(style: ptr cint): cstring
proc onblockStart*(self: gen_qscilexeryaml_types.QsciLexerYAML, slot: QsciLexerYAMLblockStartProc) =
  # TODO check subclass
  var tmp = new QsciLexerYAMLblockStartProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_blockStart(self: ptr cQsciLexerYAML, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerYAML_blockStart ".} =
  var nimfunc = cast[ptr QsciLexerYAMLblockStartProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerYAMLblockStartKeyword*(self: gen_qscilexeryaml_types.QsciLexerYAML, style: ptr cint): cstring =
  (fQsciLexerYAML_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerYAMLblockStartKeywordProc* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: gen_qscilexeryaml_types.QsciLexerYAML, slot: QsciLexerYAMLblockStartKeywordProc) =
  # TODO check subclass
  var tmp = new QsciLexerYAMLblockStartKeywordProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_blockStartKeyword(self: ptr cQsciLexerYAML, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerYAML_blockStartKeyword ".} =
  var nimfunc = cast[ptr QsciLexerYAMLblockStartKeywordProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerYAMLbraceStyle*(self: gen_qscilexeryaml_types.QsciLexerYAML, ): cint =
  fQsciLexerYAML_virtualbase_braceStyle(self.h)

type QsciLexerYAMLbraceStyleProc* = proc(): cint
proc onbraceStyle*(self: gen_qscilexeryaml_types.QsciLexerYAML, slot: QsciLexerYAMLbraceStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerYAMLbraceStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_braceStyle(self: ptr cQsciLexerYAML, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerYAML_braceStyle ".} =
  var nimfunc = cast[ptr QsciLexerYAMLbraceStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerYAMLcaseSensitive*(self: gen_qscilexeryaml_types.QsciLexerYAML, ): bool =
  fQsciLexerYAML_virtualbase_caseSensitive(self.h)

type QsciLexerYAMLcaseSensitiveProc* = proc(): bool
proc oncaseSensitive*(self: gen_qscilexeryaml_types.QsciLexerYAML, slot: QsciLexerYAMLcaseSensitiveProc) =
  # TODO check subclass
  var tmp = new QsciLexerYAMLcaseSensitiveProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_caseSensitive(self: ptr cQsciLexerYAML, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerYAML_caseSensitive ".} =
  var nimfunc = cast[ptr QsciLexerYAMLcaseSensitiveProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerYAMLcolor*(self: gen_qscilexeryaml_types.QsciLexerYAML, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerYAML_virtualbase_color(self.h, style))

type QsciLexerYAMLcolorProc* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: gen_qscilexeryaml_types.QsciLexerYAML, slot: QsciLexerYAMLcolorProc) =
  # TODO check subclass
  var tmp = new QsciLexerYAMLcolorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_color(self: ptr cQsciLexerYAML, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerYAML_color ".} =
  var nimfunc = cast[ptr QsciLexerYAMLcolorProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerYAMLeolFill*(self: gen_qscilexeryaml_types.QsciLexerYAML, style: cint): bool =
  fQsciLexerYAML_virtualbase_eolFill(self.h, style)

type QsciLexerYAMLeolFillProc* = proc(style: cint): bool
proc oneolFill*(self: gen_qscilexeryaml_types.QsciLexerYAML, slot: QsciLexerYAMLeolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerYAMLeolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_eolFill(self: ptr cQsciLexerYAML, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerYAML_eolFill ".} =
  var nimfunc = cast[ptr QsciLexerYAMLeolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerYAMLfont*(self: gen_qscilexeryaml_types.QsciLexerYAML, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fQsciLexerYAML_virtualbase_font(self.h, style))

type QsciLexerYAMLfontProc* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: gen_qscilexeryaml_types.QsciLexerYAML, slot: QsciLexerYAMLfontProc) =
  # TODO check subclass
  var tmp = new QsciLexerYAMLfontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_font(self: ptr cQsciLexerYAML, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerYAML_font ".} =
  var nimfunc = cast[ptr QsciLexerYAMLfontProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerYAMLindentationGuideView*(self: gen_qscilexeryaml_types.QsciLexerYAML, ): cint =
  fQsciLexerYAML_virtualbase_indentationGuideView(self.h)

type QsciLexerYAMLindentationGuideViewProc* = proc(): cint
proc onindentationGuideView*(self: gen_qscilexeryaml_types.QsciLexerYAML, slot: QsciLexerYAMLindentationGuideViewProc) =
  # TODO check subclass
  var tmp = new QsciLexerYAMLindentationGuideViewProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_indentationGuideView(self: ptr cQsciLexerYAML, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerYAML_indentationGuideView ".} =
  var nimfunc = cast[ptr QsciLexerYAMLindentationGuideViewProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerYAMLkeywords*(self: gen_qscilexeryaml_types.QsciLexerYAML, set: cint): cstring =
  (fQsciLexerYAML_virtualbase_keywords(self.h, set))

type QsciLexerYAMLkeywordsProc* = proc(set: cint): cstring
proc onkeywords*(self: gen_qscilexeryaml_types.QsciLexerYAML, slot: QsciLexerYAMLkeywordsProc) =
  # TODO check subclass
  var tmp = new QsciLexerYAMLkeywordsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_keywords(self: ptr cQsciLexerYAML, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerYAML_keywords ".} =
  var nimfunc = cast[ptr QsciLexerYAMLkeywordsProc](cast[pointer](slot))
  let slotval1 = set


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerYAMLdefaultStyle*(self: gen_qscilexeryaml_types.QsciLexerYAML, ): cint =
  fQsciLexerYAML_virtualbase_defaultStyle(self.h)

type QsciLexerYAMLdefaultStyleProc* = proc(): cint
proc ondefaultStyle*(self: gen_qscilexeryaml_types.QsciLexerYAML, slot: QsciLexerYAMLdefaultStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerYAMLdefaultStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_defaultStyle(self: ptr cQsciLexerYAML, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerYAML_defaultStyle ".} =
  var nimfunc = cast[ptr QsciLexerYAMLdefaultStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QsciLexerYAMLdescriptionProc* = proc(style: cint): string
proc ondescription*(self: gen_qscilexeryaml_types.QsciLexerYAML, slot: QsciLexerYAMLdescriptionProc) =
  # TODO check subclass
  var tmp = new QsciLexerYAMLdescriptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_description(self: ptr cQsciLexerYAML, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerYAML_description ".} =
  var nimfunc = cast[ptr QsciLexerYAMLdescriptionProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc QsciLexerYAMLpaper*(self: gen_qscilexeryaml_types.QsciLexerYAML, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerYAML_virtualbase_paper(self.h, style))

type QsciLexerYAMLpaperProc* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: gen_qscilexeryaml_types.QsciLexerYAML, slot: QsciLexerYAMLpaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerYAMLpaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_paper(self: ptr cQsciLexerYAML, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerYAML_paper ".} =
  var nimfunc = cast[ptr QsciLexerYAMLpaperProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerYAMLdefaultColor*(self: gen_qscilexeryaml_types.QsciLexerYAML, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerYAML_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerYAMLdefaultColorWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColor*(self: gen_qscilexeryaml_types.QsciLexerYAML, slot: QsciLexerYAMLdefaultColorWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerYAMLdefaultColorWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_defaultColorWithStyle(self: ptr cQsciLexerYAML, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerYAML_defaultColorWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerYAMLdefaultColorWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerYAMLdefaultEolFill*(self: gen_qscilexeryaml_types.QsciLexerYAML, style: cint): bool =
  fQsciLexerYAML_virtualbase_defaultEolFill(self.h, style)

type QsciLexerYAMLdefaultEolFillProc* = proc(style: cint): bool
proc ondefaultEolFill*(self: gen_qscilexeryaml_types.QsciLexerYAML, slot: QsciLexerYAMLdefaultEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerYAMLdefaultEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_defaultEolFill(self: ptr cQsciLexerYAML, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerYAML_defaultEolFill ".} =
  var nimfunc = cast[ptr QsciLexerYAMLdefaultEolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerYAMLdefaultFont*(self: gen_qscilexeryaml_types.QsciLexerYAML, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fQsciLexerYAML_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerYAMLdefaultFontWithStyleProc* = proc(style: cint): gen_qfont.QFont
proc ondefaultFont*(self: gen_qscilexeryaml_types.QsciLexerYAML, slot: QsciLexerYAMLdefaultFontWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerYAMLdefaultFontWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_defaultFontWithStyle(self: ptr cQsciLexerYAML, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerYAML_defaultFontWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerYAMLdefaultFontWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerYAMLdefaultPaper*(self: gen_qscilexeryaml_types.QsciLexerYAML, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerYAML_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerYAMLdefaultPaperWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaper*(self: gen_qscilexeryaml_types.QsciLexerYAML, slot: QsciLexerYAMLdefaultPaperWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerYAMLdefaultPaperWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_defaultPaperWithStyle(self: ptr cQsciLexerYAML, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerYAML_defaultPaperWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerYAMLdefaultPaperWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerYAMLsetEditor*(self: gen_qscilexeryaml_types.QsciLexerYAML, editor: gen_qsciscintilla.QsciScintilla): void =
  fQsciLexerYAML_virtualbase_setEditor(self.h, editor.h)

type QsciLexerYAMLsetEditorProc* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: gen_qscilexeryaml_types.QsciLexerYAML, slot: QsciLexerYAMLsetEditorProc) =
  # TODO check subclass
  var tmp = new QsciLexerYAMLsetEditorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_setEditor(self: ptr cQsciLexerYAML, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerYAML_setEditor ".} =
  var nimfunc = cast[ptr QsciLexerYAMLsetEditorProc](cast[pointer](slot))
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](slotval1)
proc QsciLexerYAMLrefreshProperties*(self: gen_qscilexeryaml_types.QsciLexerYAML, ): void =
  fQsciLexerYAML_virtualbase_refreshProperties(self.h)

type QsciLexerYAMLrefreshPropertiesProc* = proc(): void
proc onrefreshProperties*(self: gen_qscilexeryaml_types.QsciLexerYAML, slot: QsciLexerYAMLrefreshPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerYAMLrefreshPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_refreshProperties(self: ptr cQsciLexerYAML, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerYAML_refreshProperties ".} =
  var nimfunc = cast[ptr QsciLexerYAMLrefreshPropertiesProc](cast[pointer](slot))

  nimfunc[]()
proc QsciLexerYAMLstyleBitsNeeded*(self: gen_qscilexeryaml_types.QsciLexerYAML, ): cint =
  fQsciLexerYAML_virtualbase_styleBitsNeeded(self.h)

type QsciLexerYAMLstyleBitsNeededProc* = proc(): cint
proc onstyleBitsNeeded*(self: gen_qscilexeryaml_types.QsciLexerYAML, slot: QsciLexerYAMLstyleBitsNeededProc) =
  # TODO check subclass
  var tmp = new QsciLexerYAMLstyleBitsNeededProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_styleBitsNeeded(self: ptr cQsciLexerYAML, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerYAML_styleBitsNeeded ".} =
  var nimfunc = cast[ptr QsciLexerYAMLstyleBitsNeededProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerYAMLwordCharacters*(self: gen_qscilexeryaml_types.QsciLexerYAML, ): cstring =
  (fQsciLexerYAML_virtualbase_wordCharacters(self.h))

type QsciLexerYAMLwordCharactersProc* = proc(): cstring
proc onwordCharacters*(self: gen_qscilexeryaml_types.QsciLexerYAML, slot: QsciLexerYAMLwordCharactersProc) =
  # TODO check subclass
  var tmp = new QsciLexerYAMLwordCharactersProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_wordCharacters(self: ptr cQsciLexerYAML, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerYAML_wordCharacters ".} =
  var nimfunc = cast[ptr QsciLexerYAMLwordCharactersProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerYAMLsetAutoIndentStyle*(self: gen_qscilexeryaml_types.QsciLexerYAML, autoindentstyle: cint): void =
  fQsciLexerYAML_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerYAMLsetAutoIndentStyleProc* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: gen_qscilexeryaml_types.QsciLexerYAML, slot: QsciLexerYAMLsetAutoIndentStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerYAMLsetAutoIndentStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_setAutoIndentStyle(self: ptr cQsciLexerYAML, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerYAML_setAutoIndentStyle ".} =
  var nimfunc = cast[ptr QsciLexerYAMLsetAutoIndentStyleProc](cast[pointer](slot))
  let slotval1 = autoindentstyle


  nimfunc[](slotval1)
proc QsciLexerYAMLsetColor*(self: gen_qscilexeryaml_types.QsciLexerYAML, c: gen_qcolor.QColor, style: cint): void =
  fQsciLexerYAML_virtualbase_setColor(self.h, c.h, style)

type QsciLexerYAMLsetColorProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: gen_qscilexeryaml_types.QsciLexerYAML, slot: QsciLexerYAMLsetColorProc) =
  # TODO check subclass
  var tmp = new QsciLexerYAMLsetColorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_setColor(self: ptr cQsciLexerYAML, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerYAML_setColor ".} =
  var nimfunc = cast[ptr QsciLexerYAMLsetColorProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerYAMLsetEolFill*(self: gen_qscilexeryaml_types.QsciLexerYAML, eoffill: bool, style: cint): void =
  fQsciLexerYAML_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerYAMLsetEolFillProc* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: gen_qscilexeryaml_types.QsciLexerYAML, slot: QsciLexerYAMLsetEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerYAMLsetEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_setEolFill(self: ptr cQsciLexerYAML, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerYAML_setEolFill ".} =
  var nimfunc = cast[ptr QsciLexerYAMLsetEolFillProc](cast[pointer](slot))
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerYAMLsetFont*(self: gen_qscilexeryaml_types.QsciLexerYAML, f: gen_qfont.QFont, style: cint): void =
  fQsciLexerYAML_virtualbase_setFont(self.h, f.h, style)

type QsciLexerYAMLsetFontProc* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: gen_qscilexeryaml_types.QsciLexerYAML, slot: QsciLexerYAMLsetFontProc) =
  # TODO check subclass
  var tmp = new QsciLexerYAMLsetFontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_setFont(self: ptr cQsciLexerYAML, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerYAML_setFont ".} =
  var nimfunc = cast[ptr QsciLexerYAMLsetFontProc](cast[pointer](slot))
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerYAMLsetPaper*(self: gen_qscilexeryaml_types.QsciLexerYAML, c: gen_qcolor.QColor, style: cint): void =
  fQsciLexerYAML_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerYAMLsetPaperProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: gen_qscilexeryaml_types.QsciLexerYAML, slot: QsciLexerYAMLsetPaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerYAMLsetPaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_setPaper(self: ptr cQsciLexerYAML, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerYAML_setPaper ".} =
  var nimfunc = cast[ptr QsciLexerYAMLsetPaperProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerYAMLreadProperties*(self: gen_qscilexeryaml_types.QsciLexerYAML, qs: gen_qsettings.QSettings, prefix: string): bool =
  fQsciLexerYAML_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerYAMLreadPropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: gen_qscilexeryaml_types.QsciLexerYAML, slot: QsciLexerYAMLreadPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerYAMLreadPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_readProperties(self: ptr cQsciLexerYAML, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerYAML_readProperties ".} =
  var nimfunc = cast[ptr QsciLexerYAMLreadPropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerYAMLwriteProperties*(self: gen_qscilexeryaml_types.QsciLexerYAML, qs: gen_qsettings.QSettings, prefix: string): bool =
  fQsciLexerYAML_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerYAMLwritePropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: gen_qscilexeryaml_types.QsciLexerYAML, slot: QsciLexerYAMLwritePropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerYAMLwritePropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_writeProperties(self: ptr cQsciLexerYAML, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerYAML_writeProperties ".} =
  var nimfunc = cast[ptr QsciLexerYAMLwritePropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerYAMLevent*(self: gen_qscilexeryaml_types.QsciLexerYAML, event: gen_qcoreevent.QEvent): bool =
  fQsciLexerYAML_virtualbase_event(self.h, event.h)

type QsciLexerYAMLeventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qscilexeryaml_types.QsciLexerYAML, slot: QsciLexerYAMLeventProc) =
  # TODO check subclass
  var tmp = new QsciLexerYAMLeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_event(self: ptr cQsciLexerYAML, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerYAML_event ".} =
  var nimfunc = cast[ptr QsciLexerYAMLeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerYAMLeventFilter*(self: gen_qscilexeryaml_types.QsciLexerYAML, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =
  fQsciLexerYAML_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerYAMLeventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qscilexeryaml_types.QsciLexerYAML, slot: QsciLexerYAMLeventFilterProc) =
  # TODO check subclass
  var tmp = new QsciLexerYAMLeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_eventFilter(self: ptr cQsciLexerYAML, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerYAML_eventFilter ".} =
  var nimfunc = cast[ptr QsciLexerYAMLeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerYAMLtimerEvent*(self: gen_qscilexeryaml_types.QsciLexerYAML, event: gen_qcoreevent.QTimerEvent): void =
  fQsciLexerYAML_virtualbase_timerEvent(self.h, event.h)

type QsciLexerYAMLtimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qscilexeryaml_types.QsciLexerYAML, slot: QsciLexerYAMLtimerEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerYAMLtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_timerEvent(self: ptr cQsciLexerYAML, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerYAML_timerEvent ".} =
  var nimfunc = cast[ptr QsciLexerYAMLtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerYAMLchildEvent*(self: gen_qscilexeryaml_types.QsciLexerYAML, event: gen_qcoreevent.QChildEvent): void =
  fQsciLexerYAML_virtualbase_childEvent(self.h, event.h)

type QsciLexerYAMLchildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qscilexeryaml_types.QsciLexerYAML, slot: QsciLexerYAMLchildEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerYAMLchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_childEvent(self: ptr cQsciLexerYAML, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerYAML_childEvent ".} =
  var nimfunc = cast[ptr QsciLexerYAMLchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerYAMLcustomEvent*(self: gen_qscilexeryaml_types.QsciLexerYAML, event: gen_qcoreevent.QEvent): void =
  fQsciLexerYAML_virtualbase_customEvent(self.h, event.h)

type QsciLexerYAMLcustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qscilexeryaml_types.QsciLexerYAML, slot: QsciLexerYAMLcustomEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerYAMLcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_customEvent(self: ptr cQsciLexerYAML, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerYAML_customEvent ".} =
  var nimfunc = cast[ptr QsciLexerYAMLcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerYAMLconnectNotify*(self: gen_qscilexeryaml_types.QsciLexerYAML, signal: gen_qmetaobject.QMetaMethod): void =
  fQsciLexerYAML_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerYAMLconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qscilexeryaml_types.QsciLexerYAML, slot: QsciLexerYAMLconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerYAMLconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_connectNotify(self: ptr cQsciLexerYAML, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerYAML_connectNotify ".} =
  var nimfunc = cast[ptr QsciLexerYAMLconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QsciLexerYAMLdisconnectNotify*(self: gen_qscilexeryaml_types.QsciLexerYAML, signal: gen_qmetaobject.QMetaMethod): void =
  fQsciLexerYAML_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerYAMLdisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qscilexeryaml_types.QsciLexerYAML, slot: QsciLexerYAMLdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerYAMLdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_disconnectNotify(self: ptr cQsciLexerYAML, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerYAML_disconnectNotify ".} =
  var nimfunc = cast[ptr QsciLexerYAMLdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qscilexeryaml_types.QsciLexerYAML): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerYAML_staticMetaObject())
proc delete*(self: gen_qscilexeryaml_types.QsciLexerYAML) =
  fcQsciLexerYAML_delete(self.h)
